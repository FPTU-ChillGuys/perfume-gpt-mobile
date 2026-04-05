import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:perfumegpt_common/perfumegpt_common.dart';
import '../../../../domain/entities/cart_item.dart';
import '../../../../domain/entities/product.dart';
import '../../../../data/datasources/local_cart_data_source.dart';
import '../../../../data/repositories/cart_repository_impl.dart';
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

@riverpod
class Cart extends _$Cart {
  @override
  FutureOr<List<CartItem>> build() async {
    final isAuthenticated = ref.watch(authProvider).asData?.value != null;
    return ref.watch(cartRepositoryProvider).getCart(isAuthenticated: isAuthenticated);
  }

  Future<void> addProduct(Product product, {String? variantId}) async {
    final isAuthenticated = ref.read(authProvider).asData?.value != null;
    final targetVariantId = variantId ?? product.id;

    // Optimistic Update
    final previousState = state;
    final currentItems = state.asData?.value ?? [];
    
    final newItem = CartItem(
      variantId: targetVariantId,
      product: product,
      quantity: 1,
    );

    final existingIndex = currentItems.indexWhere((item) => item.variantId == targetVariantId);
    List<CartItem> updatedItems;
    if (existingIndex != -1) {
      updatedItems = [
        for (int i = 0; i < currentItems.length; i++)
          if (i == existingIndex)
            currentItems[i].copyWith(quantity: currentItems[i].quantity + 1)
          else
            currentItems[i],
      ];
    } else {
      updatedItems = [...currentItems, newItem];
    }
    
    state = AsyncValue.data(updatedItems);

    try {
      final repository = ref.read(cartRepositoryProvider);
      if (repository is CartRepositoryImpl) {
         await repository.addEntityToCart(newItem, isAuthenticated: isAuthenticated);
      } else {
         await repository.addToCart(targetVariantId, 1, isAuthenticated: isAuthenticated);
      }
    } catch (e) {
      state = previousState;
      rethrow;
    }
  }

  Future<void> removeProduct(String variantId) async {
    final isAuthenticated = ref.read(authProvider).asData?.value != null;
    final previousState = state;
    final currentItems = state.asData?.value ?? [];
    
    state = AsyncValue.data(currentItems.where((item) => item.variantId != variantId).toList());

    try {
      final item = currentItems.firstWhere((i) => i.variantId == variantId);
      final idToUse = (isAuthenticated && item.id != null) ? item.id! : variantId;
      
      await ref.read(cartRepositoryProvider).removeFromCart(idToUse, isAuthenticated: isAuthenticated);
    } catch (e) {
      state = previousState;
      rethrow;
    }
  }

  Future<void> updateQuantity(String variantId, int quantity) async {
    if (quantity <= 0) {
      await removeProduct(variantId);
      return;
    }

    final isAuthenticated = ref.read(authProvider).asData?.value != null;
    final previousState = state;
    final currentItems = state.asData?.value ?? [];

    state = AsyncValue.data([
      for (final item in currentItems)
        if (item.variantId == variantId)
          item.copyWith(quantity: quantity)
        else
          item,
    ]);

    try {
      final item = currentItems.firstWhere((i) => i.variantId == variantId);
      final idToUse = (isAuthenticated && item.id != null) ? item.id! : variantId;

      await ref.read(cartRepositoryProvider).updateCartItem(idToUse, quantity, isAuthenticated: isAuthenticated);
    } catch (e) {
      state = previousState;
      rethrow;
    }
  }

  Future<void> clear() async {
    final isAuthenticated = ref.read(authProvider).asData?.value != null;
    final previousState = state;
    state = const AsyncValue.data([]);

    try {
      await ref.read(cartRepositoryProvider).clearCart(isAuthenticated: isAuthenticated);
    } catch (e) {
      state = previousState;
      rethrow;
    }
  }

  Future<void> mergeCart() async {
    final currentLocalItems = state.asData?.value ?? [];
    if (currentLocalItems.isEmpty) return;

    state = const AsyncValue.loading();
    try {
      await ref.read(cartRepositoryProvider).mergeCart(currentLocalItems);
      // Refresh cart from server
      final isAuthenticated = ref.read(authProvider).asData?.value != null;
      final newCart = await ref.read(cartRepositoryProvider).getCart(isAuthenticated: isAuthenticated);
      state = AsyncValue.data(newCart);
    } catch (e) {
      // If merge fails, we still want to show the local cart or the server cart
      // For now, just re-fetch
      final isAuthenticated = ref.read(authProvider).asData?.value != null;
      final newCart = await ref.read(cartRepositoryProvider).getCart(isAuthenticated: isAuthenticated);
      state = AsyncValue.data(newCart);
      rethrow;
    }
  }

  double get totalAmount => (state.asData?.value ?? []).fold(0, (sum, item) => sum + item.totalPrice);
}
