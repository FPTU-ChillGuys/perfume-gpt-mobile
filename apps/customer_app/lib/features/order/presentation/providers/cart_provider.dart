import 'dart:async';

import 'package:perfumegpt_common/perfumegpt_common.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart' show Provider;
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../../../data/datasources/local_cart_data_source.dart';
import '../../../../data/repositories/cart_repository_impl.dart';
import '../../../../domain/entities/cart_item.dart';
import '../../../../domain/entities/cart_total.dart';
import '../../../../domain/entities/product.dart';
import '../../../../domain/repositories/cart_repository.dart';

part 'cart_provider.g.dart';

@riverpod
LocalCartDataSource localCartDataSource(Ref ref) {
  final storage = ref.watch(flutterSecureStorageProvider);
  return LocalCartDataSource(storage);
}

@riverpod
CartRepository cartRepository(Ref ref) {
  final apiClient = ref.watch(apiClientProvider);
  final cartApi = apiClient.getCartApi();
  final localDataSource = ref.watch(localCartDataSourceProvider);
  return CartRepositoryImpl(cartApi, localDataSource);
}

@Riverpod(keepAlive: true)
class Cart extends _$Cart {
  static const _tokenKey = 'auth_token';
  int _generation = 0;

  String _normalizeToken(String token) {
    var normalized = token.trim();
    if (normalized.toLowerCase().startsWith('bearer ')) {
      normalized = normalized.substring(7).trim();
    }
    if (normalized.startsWith('"') &&
        normalized.endsWith('"') &&
        normalized.length > 1) {
      normalized = normalized.substring(1, normalized.length - 1);
    }
    return normalized;
  }

  Future<bool> _checkAuth(dynamic storage, dynamic apiClient) async {
    final token = await storage.read(key: _tokenKey);
    if (token != null && token.isNotEmpty) {
      final normalizedToken = _normalizeToken(token);
      if (normalizedToken.isEmpty) return false;
      apiClient.setBearerAuth('Bearer', normalizedToken);
      return true;
    }
    return false;
  }

  Future<List<CartItem>> _fetchItems() async {
    final storage = ref.read(flutterSecureStorageProvider);
    final apiClient = ref.read(apiClientProvider);
    final repository = ref.read(cartRepositoryProvider);
    final localDs = ref.read(localCartDataSourceProvider);

    final token = await storage.read(key: _tokenKey);
    final isAuthenticated = token != null && token.isNotEmpty;
    if (isAuthenticated) {
      apiClient.setBearerAuth('Bearer', _normalizeToken(token));
      localDs.clearCart();
    }
    return repository.getItems(isAuthenticated: isAuthenticated);
  }

  @override
  FutureOr<List<CartItem>> build() async {
    final gen = ++_generation;
    final items = await _fetchItems();
    if (_generation != gen) return state.asData?.value ?? [];
    return items;
  }

  Future<void> reload() async {
    final gen = ++_generation;
    state = const AsyncValue.loading();
    try {
      final items = await _fetchItems();
      if (_generation != gen) return;
      state = AsyncValue.data(items);
    } catch (e, st) {
      if (_generation != gen) return;
      state = AsyncValue.error(e, st);
    }
  }

  Future<void> addItem(String variantId, {int quantity = 1}) async {
    final gen = _generation;
    final repository = ref.read(cartRepositoryProvider);
    final storage = ref.read(flutterSecureStorageProvider);
    final apiClient = ref.read(apiClientProvider);
    final previousState = state;

    final isAuthenticated = await _checkAuth(storage, apiClient);
    if (_generation != gen) return;

    try {
      await repository.addItem(
        variantId,
        quantity: quantity,
        isAuthenticated: isAuthenticated,
      );
      if (_generation != gen) return;
      final items = await repository.getItems(isAuthenticated: isAuthenticated);
      if (_generation != gen) return;
      state = AsyncValue.data(items);
    } catch (e) {
      if (_generation != gen) return;
      state = previousState;
      rethrow;
    }
  }

  Future<void> addProduct(Product product, {String? variantId}) async {
    final gen = _generation;
    final repository = ref.read(cartRepositoryProvider);
    final storage = ref.read(flutterSecureStorageProvider);
    final apiClient = ref.read(apiClientProvider);

    final isAuthenticated = await _checkAuth(storage, apiClient);
    if (_generation != gen) return;

    final targetVariantId = variantId ?? product.id;
    final previousState = state;
    final currentItems = state.asData?.value ?? [];

    final newItem = CartItem(
      variantId: targetVariantId,
      variantName: product.name + (variantId != null ? ' (Variant)' : ''),
      imageUrl: product.imageUrl,
      variantPrice: product.price,
      quantity: 1,
      subTotal: product.price,
    );

    final existingIndex = currentItems.indexWhere(
      (item) => item.variantId == targetVariantId,
    );
    List<CartItem> updatedItems;
    if (existingIndex != -1) {
      updatedItems = [
        for (int i = 0; i < currentItems.length; i++)
          if (i == existingIndex)
            currentItems[i].copyWith(
              quantity: currentItems[i].quantity + 1,
              subTotal:
                  currentItems[i].variantPrice * (currentItems[i].quantity + 1),
            )
          else
            currentItems[i],
      ];
    } else {
      updatedItems = [...currentItems, newItem];
    }

    state = AsyncValue.data(updatedItems);

    try {
      if (repository is CartRepositoryImpl) {
        await repository.addEntityToCart(
          newItem,
          isAuthenticated: isAuthenticated,
        );
      } else {
        await repository.addItem(
          targetVariantId,
          quantity: 1,
          isAuthenticated: isAuthenticated,
        );
      }
      if (_generation != gen) return;
      // Don't block UX (e.g. "Mua ngay" -> checkout) on a full cart refetch.
      // Keep optimistic state and sync with backend in background.
      unawaited(
        () async {
          try {
            final items = await repository.getItems(
              isAuthenticated: isAuthenticated,
            );
            if (_generation != gen) return;
            state = AsyncValue.data(items);
          } catch (_) {
            // Keep optimistic state; next explicit refresh will reconcile.
          }
        }(),
      );
    } catch (e) {
      if (_generation != gen) return;
      state = previousState;
      rethrow;
    }
  }

  void addProductOptimistic(
    Product product, {
    String? variantId,
    String? variantName,
    String? imageUrl,
    double? price,
    int? volumeMl,
    String? type,
  }) {
    final gen = _generation;
    final repository = ref.read(cartRepositoryProvider);
    final targetVariantId = variantId ?? product.id;
    final previousState = state;
    final currentItems = state.asData?.value ?? [];
    final unitPrice = price ?? product.price;
    final newItem = CartItem(
      // Temporary id lets selection/filter logic treat this optimistic row as real.
      cartItemId: targetVariantId,
      variantId: targetVariantId,
      variantName: variantName ?? product.name,
      imageUrl: imageUrl ?? product.imageUrl,
      volumeMl: volumeMl,
      type: type,
      variantPrice: unitPrice,
      quantity: 1,
      subTotal: unitPrice,
    );

    final existingIndex = currentItems.indexWhere(
      (item) =>
          item.variantId == targetVariantId ||
          item.cartItemId == targetVariantId,
    );
    final updatedItems = existingIndex == -1
        ? [...currentItems, newItem]
        : [
            for (int i = 0; i < currentItems.length; i++)
              if (i == existingIndex)
                currentItems[i].copyWith(
                  quantity: currentItems[i].quantity + 1,
                  subTotal:
                      currentItems[i].variantPrice *
                      (currentItems[i].quantity + 1),
                )
              else
                currentItems[i],
          ];

    state = AsyncValue.data(updatedItems);

    unawaited(
      () async {
        try {
          final storage = ref.read(flutterSecureStorageProvider);
          final apiClient = ref.read(apiClientProvider);
          final isAuthenticated = await _checkAuth(storage, apiClient);
          if (_generation != gen) return;

          if (repository is CartRepositoryImpl) {
            await repository.addEntityToCart(
              newItem,
              isAuthenticated: isAuthenticated,
            );
          } else {
            await repository.addItem(
              targetVariantId,
              quantity: 1,
              isAuthenticated: isAuthenticated,
            );
          }
          final items = await repository.getItems(
            isAuthenticated: isAuthenticated,
          );
          if (_generation != gen) return;
          state = AsyncValue.data(items);
        } catch (e) {
          if (_generation != gen) return;
          state = previousState;
        }
      }(),
    );
  }

  Future<void> updateItem(String cartItemId, int quantity) async {
    if (quantity <= 0) {
      await removeItem(cartItemId);
      return;
    }

    final gen = _generation;
    final repository = ref.read(cartRepositoryProvider);
    final storage = ref.read(flutterSecureStorageProvider);
    final apiClient = ref.read(apiClientProvider);
    final previousState = state;
    final currentItems = state.asData?.value ?? [];

    final isAuthenticated = await _checkAuth(storage, apiClient);
    if (_generation != gen) return;

    state = AsyncValue.data([
      for (final item in currentItems)
        if (item.cartItemId == cartItemId || item.variantId == cartItemId)
          item.copyWith(
            quantity: quantity,
            subTotal: item.variantPrice * quantity,
          )
        else
          item,
    ]);

    try {
      await repository.updateItem(
        cartItemId,
        quantity,
        isAuthenticated: isAuthenticated,
      );
      if (_generation != gen) return;
      final items = await repository.getItems(isAuthenticated: isAuthenticated);
      if (_generation != gen) return;
      state = AsyncValue.data(items);
    } catch (e) {
      if (_generation != gen) return;
      state = previousState;
      rethrow;
    }
  }

  Future<void> removeItem(String cartItemId) async {
    final gen = _generation;
    final repository = ref.read(cartRepositoryProvider);
    final storage = ref.read(flutterSecureStorageProvider);
    final apiClient = ref.read(apiClientProvider);
    final previousState = state;
    final currentItems = state.asData?.value ?? [];

    final isAuthenticated = await _checkAuth(storage, apiClient);
    if (_generation != gen) return;

    state = AsyncValue.data(
      currentItems
          .where(
            (item) =>
                item.cartItemId != cartItemId && item.variantId != cartItemId,
          )
          .toList(),
    );

    try {
      await repository.removeItem(cartItemId, isAuthenticated: isAuthenticated);
      if (_generation != gen) return;
      final items = await repository.getItems(isAuthenticated: isAuthenticated);
      if (_generation != gen) return;
      state = AsyncValue.data(items);
    } catch (e) {
      if (_generation != gen) return;
      state = previousState;
      rethrow;
    }
  }

  Future<void> clearCart() async {
    final gen = _generation;
    final repository = ref.read(cartRepositoryProvider);
    final storage = ref.read(flutterSecureStorageProvider);
    final apiClient = ref.read(apiClientProvider);
    final previousState = state;

    final isAuthenticated = await _checkAuth(storage, apiClient);
    if (_generation != gen) return;

    state = const AsyncValue.data([]);

    try {
      await repository.clearCart(isAuthenticated: isAuthenticated);
    } catch (e) {
      if (_generation != gen) return;
      state = previousState;
      rethrow;
    }
  }

  Future<void> mergeCart([List<CartItem>? guestItems]) async {
    final gen = _generation;
    final repository = ref.read(cartRepositoryProvider);
    final storage = ref.read(flutterSecureStorageProvider);
    final apiClient = ref.read(apiClientProvider);

    final itemsToMerge =
        guestItems ?? await repository.getItems(isAuthenticated: false);
    if (_generation != gen || itemsToMerge.isEmpty) return;

    state = const AsyncValue.loading();

    try {
      await repository.mergeCart(itemsToMerge);
      if (_generation != gen) return;

      final isAuthenticated = await _checkAuth(storage, apiClient);
      if (_generation != gen) return;

      final items = await repository.getItems(isAuthenticated: isAuthenticated);
      if (_generation != gen) return;
      state = AsyncValue.data(items);
    } catch (e, st) {
      if (_generation != gen) return;
      state = AsyncValue.error(e, st);
    }
  }

  double get totalAmount =>
      (state.asData?.value ?? []).fold(0, (sum, item) => sum + item.totalPrice);
}

// ─── Selected cart item IDs ─────────────────────────────────────────────────

@riverpod
class SelectedCartItemIds extends _$SelectedCartItemIds {
  @override
  Set<String> build() => const {};

  void update(Set<String> ids) => state = ids;

  void toggle(String id) {
    final next = Set<String>.from(state);
    if (!next.remove(id)) next.add(id);
    state = next;
  }

  void clear() => state = const {};
}

@riverpod
FutureOr<CartTotal> selectedCartTotal(Ref ref) async {
  final selectedIds = ref.watch(selectedCartItemIdsProvider);
  final cartItems = ref.watch(cartProvider).asData?.value ?? [];

  final storage = ref.read(flutterSecureStorageProvider);
  final token = await storage.read(key: 'auth_token');
  final isAuthenticated = token != null && token.isNotEmpty;

  final allIds = cartItems
      .map((e) => e.cartItemId)
      .whereType<String>()
      .where((id) => id.isNotEmpty)
      .toSet();

  final isSubset = selectedIds.isNotEmpty && selectedIds.length < allIds.length;

  if (isAuthenticated) {
    return ref
        .read(cartRepositoryProvider)
        .getTotal(itemIds: isSubset ? selectedIds.toList() : null);
  } else {
    final items = selectedIds.isEmpty
        ? cartItems
        : cartItems
              .where(
                (e) =>
                    e.cartItemId != null && selectedIds.contains(e.cartItemId),
              )
              .toList();
    final subtotal = items.fold(0.0, (sum, item) => sum + item.totalPrice);
    return CartTotal(
      subtotal: subtotal,
      shippingFee: 0,
      discount: 0,
      totalPrice: subtotal,
    );
  }
}

@riverpod
FutureOr<CartTotal> cartTotal(Ref ref) async {
  final cartItems = ref.watch(cartProvider).asData?.value ?? [];

  final storage = ref.read(flutterSecureStorageProvider);
  final token = await storage.read(key: 'auth_token');
  final isAuthenticated = token != null && token.isNotEmpty;

  if (isAuthenticated) {
    return ref.read(cartRepositoryProvider).getTotal();
  } else {
    final subtotal = cartItems.fold(0.0, (sum, item) => sum + item.totalPrice);
    return CartTotal(
      subtotal: subtotal,
      shippingFee: 0,
      discount: 0,
      totalPrice: subtotal,
    );
  }
}

final cartItemCountProvider = Provider<int>((ref) {
  final items = ref.watch(cartProvider).asData?.value ?? const <CartItem>[];
  return items.fold<int>(0, (sum, item) {
    final qty = item.quantity < 0 ? 0 : item.quantity;
    return sum + qty;
  });
});
