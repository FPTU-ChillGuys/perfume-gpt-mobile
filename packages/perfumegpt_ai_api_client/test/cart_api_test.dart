import 'package:test/test.dart';
import 'package:perfumegpt_ai_api_client/perfumegpt_ai_api_client.dart';


/// tests for CartApi
void main() {
  final instance = PerfumegptAiApiClient().getCartApi();

  group(CartApi, () {
    // Add item to cart
    //
    //Future cartControllerAddToCart(AddToCartRequest addToCartRequest) async
    test('test cartControllerAddToCart', () async {
      // TODO
    });

    // Clear current user cart
    //
    //Future cartControllerClearCart() async
    test('test cartControllerClearCart', () async {
      // TODO
    });

    // Get current user cart
    //
    //Future cartControllerGetCart() async
    test('test cartControllerGetCart', () async {
      // TODO
    });

    // Remove item from cart
    //
    //Future cartControllerRemoveFromCart(String id) async
    test('test cartControllerRemoveFromCart', () async {
      // TODO
    });

    // Update cart item quantity
    //
    //Future cartControllerUpdateCartItem(String id, UpdateCartItemRequest updateCartItemRequest) async
    test('test cartControllerUpdateCartItem', () async {
      // TODO
    });

  });
}
