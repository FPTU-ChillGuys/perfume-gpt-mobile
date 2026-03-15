import 'package:test/test.dart';
import 'package:perfumegpt_api_client/perfumegpt_api_client.dart';


/// tests for CartItemsApi
void main() {
  final instance = PerfumegptApiClient().getCartItemsApi();

  group(CartItemsApi, () {
    //Future<BaseResponseOfstring> apiCartItemsAddToCartPost(CreateCartItemRequest createCartItemRequest) async
    test('test apiCartItemsAddToCartPost', () async {
      // TODO
    });

    //Future<BaseResponseOfstring> apiCartItemsIdRemoveFromCartDelete(String id) async
    test('test apiCartItemsIdRemoveFromCartDelete', () async {
      // TODO
    });

    //Future<BaseResponseOfstring> apiCartItemsIdUpdateCartItemPut(String id, UpdateCartItemRequest updateCartItemRequest) async
    test('test apiCartItemsIdUpdateCartItemPut', () async {
      // TODO
    });

  });
}
