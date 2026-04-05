import 'package:perfumegpt_api_client/perfumegpt_api_client.dart';
import '../../domain/entities/cart_item.dart';
import '../../domain/entities/product.dart';
import '../../domain/repositories/cart_repository.dart';
import '../datasources/local_cart_data_source.dart';

class CartRepositoryImpl implements CartRepository {
  final CartApi _cartApi;
  final LocalCartDataSource _localDataSource;

  CartRepositoryImpl(this._cartApi, this._localDataSource);

  @override
  Future<List<CartItem>> getCart({bool isAuthenticated = false}) async {
    if (isAuthenticated) {
      final response = await _cartApi.apiCartItemsGet();
      final data = response.data?.payload?.items ?? [];
      return data.map((item) => _mapToEntity(item)).toList();
    } else {
      return _localDataSource.getCart();
    }
  }

  @override
  Future<void> addToCart(
    String variantId,
    int quantity, {
    bool isAuthenticated = false,
  }) async {
    if (isAuthenticated) {
      await _cartApi.apiCartItemsPost(
        createCartItemRequest: CreateCartItemRequest(
          variantId: variantId,
          quantity: quantity,
        ),
      );
    } else {
      final cart = await _localDataSource.getCart();
      final index = cart.indexWhere((item) => item.variantId == variantId);
      if (index != -1) {
        cart[index] = cart[index].copyWith(
          quantity: cart[index].quantity + quantity,
        );
      } else {
        // Note: For guest cart, the caller should provide the full entity using addEntityToCart
      }
      await _localDataSource.saveCart(cart);
    }
  }

  // Need a version of addToCart that takes a full CartItem for local storage
  Future<void> addEntityToCart(
    CartItem item, {
    bool isAuthenticated = false,
  }) async {
    if (isAuthenticated) {
      await addToCart(item.variantId, item.quantity, isAuthenticated: true);
    } else {
      final cart = await _localDataSource.getCart();
      final index = cart.indexWhere((i) => i.variantId == item.variantId);
      if (index != -1) {
        cart[index] = cart[index].copyWith(
          quantity: cart[index].quantity + item.quantity,
        );
      } else {
        cart.add(item);
      }
      await _localDataSource.saveCart(cart);
    }
  }

  @override
  Future<void> updateCartItem(
    String cartItemIdOrVariantId,
    int quantity, {
    bool isAuthenticated = false,
  }) async {
    if (isAuthenticated) {
      await _cartApi.apiCartItemsIdPut(
        id: cartItemIdOrVariantId,
        updateCartItemRequest: UpdateCartItemRequest(quantity: quantity),
      );
    } else {
      final cart = await _localDataSource.getCart();
      final index = cart.indexWhere(
        (item) => item.variantId == cartItemIdOrVariantId,
      );
      if (index != -1) {
        if (quantity <= 0) {
          cart.removeAt(index);
        } else {
          cart[index] = cart[index].copyWith(quantity: quantity);
        }
        await _localDataSource.saveCart(cart);
      }
    }
  }

  @override
  Future<void> removeFromCart(
    String cartItemIdOrVariantId, {
    bool isAuthenticated = false,
  }) async {
    if (isAuthenticated) {
      await _cartApi.apiCartItemsIdDelete(id: cartItemIdOrVariantId);
    } else {
      final cart = await _localDataSource.getCart();
      cart.removeWhere((item) => item.variantId == cartItemIdOrVariantId);
      await _localDataSource.saveCart(cart);
    }
  }

  @override
  Future<void> clearCart({bool isAuthenticated = false}) async {
    if (isAuthenticated) {
      await _cartApi.apiCartClearDelete();
    } else {
      await _localDataSource.clearCart();
    }
  }

  @override
  Future<void> mergeCart(List<CartItem> localItems) async {
    for (final item in localItems) {
      await addToCart(item.variantId, item.quantity, isAuthenticated: true);
    }
    await _localDataSource.clearCart();
  }

  CartItem _mapToEntity(GetCartItemResponse item) {
    return CartItem(
      id: item.cartItemId,
      variantId: item.variantId!,
      quantity: item.quantity!,
      product: Product(
        id: '', // Variant level doesn't always have product ID directly in this response
        name: item.variantName ?? '',
        price: item.variantPrice?.toDouble() ?? 0,
        imageUrl: item.imageUrl ?? '',
        description: '',
        scentNotes: [],
        brand: '',
        rating: 0,
        reviewCount: 0,
      ),
    );
  }
}
