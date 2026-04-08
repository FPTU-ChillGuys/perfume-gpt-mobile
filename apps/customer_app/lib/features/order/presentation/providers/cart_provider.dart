import 'package:perfumegpt_common/perfumegpt_common.dart';
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

@riverpod
class Cart extends _$Cart {
  @override
  FutureOr<List<CartItem>> build() async {
    final isAuthenticated = ref.watch(authProvider).asData?.value != null;
    return ref.watch(cartRepositoryProvider).getItems(isAuthenticated: isAuthenticated);
  }

  Future<void> addItem(String variantId, {int quantity = 1}) async {
    final isAuthenticated = ref.read(authProvider).asData?.value != null;
    final previousState = state;
    
    // For simple add, we can't easily do optimistic update if it's a new item 
    // because we don't have the product info here.
    // So for guest mode we prefer addProduct.
    
    try {
      await ref.read(cartRepositoryProvider).addItem(variantId, quantity: quantity, isAuthenticated: isAuthenticated);
      ref.invalidateSelf();
    } catch (e) {
      state = previousState;
      rethrow;
    }
  }

  // Wrapper that supports optimistic update and guest cart with full info
  Future<void> addProduct(Product product, {String? variantId}) async {
    final isAuthenticated = ref.read(authProvider).asData?.value != null;
    final targetVariantId = variantId ?? product.id;

    // Optimistic Update
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

    final existingIndex = currentItems.indexWhere((item) => item.variantId == targetVariantId);
    List<CartItem> updatedItems;
    if (existingIndex != -1) {
      updatedItems = [
        for (int i = 0; i < currentItems.length; i++)
          if (i == existingIndex)
            currentItems[i].copyWith(
              quantity: currentItems[i].quantity + 1,
              subTotal: currentItems[i].variantPrice * (currentItems[i].quantity + 1),
            )
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
         await repository.addItem(targetVariantId, quantity: 1, isAuthenticated: isAuthenticated);
      }
      // Re-fetch to get server-side IDs if authenticated
      if (isAuthenticated) {
         ref.invalidateSelf();
      }
    } catch (e) {
      state = previousState;
      rethrow;
    }
  }

  Future<void> updateItem(String cartItemId, int quantity) async {
    if (quantity <= 0) {
      await removeItem(cartItemId);
      return;
    }

    final isAuthenticated = ref.read(authProvider).asData?.value != null;
    final previousState = state;
    final currentItems = state.asData?.value ?? [];

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
      await ref.read(cartRepositoryProvider).updateItem(cartItemId, quantity, isAuthenticated: isAuthenticated);
    } catch (e) {
      state = previousState;
      rethrow;
    }
  }

  Future<void> removeItem(String cartItemId) async {
    final isAuthenticated = ref.read(authProvider).asData?.value != null;
    final previousState = state;
    final currentItems = state.asData?.value ?? [];
    
    state = AsyncValue.data(currentItems.where((item) => item.cartItemId != cartItemId && item.variantId != cartItemId).toList());

    try {
      await ref.read(cartRepositoryProvider).removeItem(cartItemId, isAuthenticated: isAuthenticated);
    } catch (e) {
      state = previousState;
      rethrow;
    }
  }

  Future<void> clearCart() async {
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
      ref.invalidateSelf();
    } catch (e) {
      ref.invalidateSelf();
      rethrow;
    }
  }

  double get totalAmount => (state.asData?.value ?? []).fold(0, (sum, item) => sum + item.totalPrice);
}

@riverpod
FutureOr<CartTotal> cartTotal(Ref ref) {
  final cartItems = ref.watch(cartProvider).asData?.value ?? [];
  final isAuthenticated = ref.watch(authProvider).asData?.value != null;
  
  if (isAuthenticated) {
     return ref.watch(cartRepositoryProvider).getTotal();
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
