import 'package:perfumegpt_api_client/perfumegpt_api_client.dart';
import 'package:dio/dio.dart';
import '../../core/utils/image_url_helper.dart';
import '../../domain/entities/cart_item.dart';
import '../../domain/entities/cart_total.dart';
import '../../domain/repositories/cart_repository.dart';
import '../datasources/local_cart_data_source.dart';

class CartRepositoryImpl implements CartRepository {
  final CartApi _api;
  final Dio _dio;
  final LocalCartDataSource? _localDataSource;

  CartRepositoryImpl(this._api, this._dio, [this._localDataSource]);

  static const Map<String, String> _bearerSecure = {
    'type': 'http',
    'scheme': 'bearer',
    'name': 'Bearer',
  };

  @override
  Future<List<CartItem>> getItems({bool isAuthenticated = false}) async {
    if (isAuthenticated) {
      final response = await _api.apiCartItemsGet();
      final items = response.data?.payload?.items ?? [];
      return items.map(_mapItem).toList();
    } else if (_localDataSource != null) {
      return _localDataSource.getCart();
    }
    return [];
  }

  @override
  Future<void> addItem(
    String variantId, {
    int quantity = 1,
    bool isAuthenticated = false,
  }) async {
    if (isAuthenticated) {
      await _api.apiCartItemsPost(
        createCartItemRequest: CreateCartItemRequest(
          variantId: variantId,
          quantity: quantity,
        ),
      );
    } else if (_localDataSource != null) {
      final cart = await _localDataSource.getCart();
      final index = cart.indexWhere((item) => item.variantId == variantId);
      if (index != -1) {
        cart[index] = cart[index].copyWith(
          quantity: cart[index].quantity + quantity,
          subTotal:
              cart[index].variantPrice * (cart[index].quantity + quantity),
        );
      } else {
        // Guest cart might need full item info, which should be provided via a different method
        // or fetched from product api. For now, we assume the caller handles this or uses addEntityToCart.
      }
      await _localDataSource.saveCart(cart);
    }
  }

  // Helper for adding full entity to local cart
  Future<void> addEntityToCart(
    CartItem item, {
    bool isAuthenticated = false,
  }) async {
    if (isAuthenticated) {
      await addItem(
        item.variantId,
        quantity: item.quantity,
        isAuthenticated: true,
      );
    } else if (_localDataSource != null) {
      final cart = await _localDataSource.getCart();
      final index = cart.indexWhere((i) => i.variantId == item.variantId);
      if (index != -1) {
        cart[index] = cart[index].copyWith(
          quantity: cart[index].quantity + item.quantity,
          subTotal:
              cart[index].variantPrice * (cart[index].quantity + item.quantity),
        );
      } else {
        cart.add(item);
      }
      await _localDataSource.saveCart(cart);
    }
  }

  @override
  Future<void> updateItem(
    String cartItemId,
    int quantity, {
    bool isAuthenticated = false,
  }) async {
    if (isAuthenticated) {
      await _api.apiCartItemsIdPut(
        id: cartItemId,
        updateCartItemRequest: UpdateCartItemRequest(quantity: quantity),
      );
    } else if (_localDataSource != null) {
      final cart = await _localDataSource.getCart();
      final index = cart.indexWhere(
        (item) => item.variantId == cartItemId || item.cartItemId == cartItemId,
      );
      if (index != -1) {
        if (quantity <= 0) {
          cart.removeAt(index);
        } else {
          cart[index] = cart[index].copyWith(
            quantity: quantity,
            subTotal: cart[index].variantPrice * quantity,
          );
        }
        await _localDataSource.saveCart(cart);
      }
    }
  }

  @override
  Future<void> removeItem(
    String cartItemId, {
    bool isAuthenticated = false,
  }) async {
    if (isAuthenticated) {
      await _api.apiCartItemsIdDelete(id: cartItemId);
    } else if (_localDataSource != null) {
      final cart = await _localDataSource.getCart();
      cart.removeWhere(
        (item) => item.variantId == cartItemId || item.cartItemId == cartItemId,
      );
      await _localDataSource.saveCart(cart);
    }
  }

  @override
  Future<void> clearCart({bool isAuthenticated = false}) async {
    if (isAuthenticated) {
      await _api.apiCartClearDelete();
    } else if (_localDataSource != null) {
      await _localDataSource.clearCart();
    }
  }

  @override
  Future<void> mergeCart(List<CartItem> localItems) async {
    for (final item in localItems) {
      await addItem(
        item.variantId,
        quantity: item.quantity,
        isAuthenticated: true,
      );
    }
    if (_localDataSource != null) {
      await _localDataSource.clearCart();
    }
  }

  @override
  Future<CartTotal> getTotal({
    String? voucherCode,
    List<String>? itemIds,
    String? savedAddressId,
    String? recipientContactName,
    String? recipientContactPhoneNumber,
    int? recipientDistrictId,
    String? recipientDistrictName,
    String? recipientWardCode,
    String? recipientWardName,
    int? recipientProvinceId,
    String? recipientProvinceName,
    String? recipientFullAddress,
  }) async {
    final queryParameters = <String, dynamic>{
      'VoucherCode': (voucherCode != null && voucherCode.isNotEmpty)
          ? voucherCode
          : null,
      'ItemIds': (itemIds != null && itemIds.isNotEmpty) ? itemIds : null,
      'SavedAddressId': (savedAddressId != null && savedAddressId.isNotEmpty)
          ? savedAddressId
          : null,
      'Recipient.ContactName':
          (recipientContactName != null && recipientContactName.isNotEmpty)
              ? recipientContactName
              : null,
      'Recipient.ContactPhoneNumber': (recipientContactPhoneNumber != null &&
              recipientContactPhoneNumber.isNotEmpty)
          ? recipientContactPhoneNumber
          : null,
      'Recipient.DistrictId': recipientDistrictId,
      'Recipient.DistrictName':
          (recipientDistrictName != null && recipientDistrictName.isNotEmpty)
              ? recipientDistrictName
              : null,
      'Recipient.WardCode':
          (recipientWardCode != null && recipientWardCode.isNotEmpty)
              ? recipientWardCode
              : null,
      'Recipient.WardName':
          (recipientWardName != null && recipientWardName.isNotEmpty)
              ? recipientWardName
              : null,
      'Recipient.ProvinceId': recipientProvinceId,
      'Recipient.ProvinceName':
          (recipientProvinceName != null && recipientProvinceName.isNotEmpty)
              ? recipientProvinceName
              : null,
      'Recipient.FullAddress':
          (recipientFullAddress != null && recipientFullAddress.isNotEmpty)
              ? recipientFullAddress
              : null,
    }..removeWhere((key, value) => value == null);

    final response = await _dio.get(
      '/api/cart/total',
      queryParameters: queryParameters,
      options: Options(extra: const {'secure': [_bearerSecure]}),
    );
    final payload = (response.data as Map<String, dynamic>?)?['payload']
        as Map<String, dynamic>?;
    final deposit = payload?['depositPolicy'] as Map<String, dynamic>?;
    final requiredDepositAmount =
        (payload?['requiredDepositAmount'] as num?)?.toDouble() ?? 0.0;
    final totalPrice = (payload?['totalPrice'] as num?)?.toDouble() ?? 0.0;
    final paidAmount = (payload?['paidAmount'] as num?)?.toDouble() ?? 0.0;
    final fallbackDepositAmount = requiredDepositAmount > 0
        ? requiredDepositAmount
        : (payload?['depositAmount'] as num?)?.toDouble() ?? 0.0;
    final fallbackRemainingAmount = totalPrice > 0
        ? totalPrice - paidAmount - fallbackDepositAmount
        : (payload?['remainingAmount'] as num?)?.toDouble() ?? 0.0;

    return CartTotal(
      subtotal: (payload?['subtotal'] as num?)?.toDouble() ?? 0.0,
      shippingFee: (payload?['shippingFee'] as num?)?.toDouble() ?? 0.0,
      discount: (payload?['discount'] as num?)?.toDouble() ?? 0.0,
      totalPrice: totalPrice,
      warningMessage: payload?['warningMessage']?.toString(),
      depositPolicy: (deposit == null && fallbackDepositAmount <= 0)
          ? null
          : DepositPolicy(
              isDepositRequired:
                  (deposit?['isDepositRequired'] as bool?) ??
                  (fallbackDepositAmount > 0),
              depositRate:
                  (deposit?['depositRate'] as num?)?.toDouble() ??
                  (totalPrice > 0
                      ? (fallbackDepositAmount / totalPrice)
                      : 0.0),
              depositAmount:
                  (deposit?['depositAmount'] as num?)?.toDouble() ??
                  fallbackDepositAmount,
              remainingAmount:
                  (deposit?['remainingAmount'] as num?)?.toDouble() ??
                  (fallbackRemainingAmount < 0 ? 0.0 : fallbackRemainingAmount),
            ),
    );
  }

  CartItem _mapItem(GetCartItemResponse r) => CartItem(
    cartItemId: r.cartItemId ?? '',
    variantId: r.variantId ?? '',
    variantName: r.variantName,
    imageUrl: ImageUrlHelper.resolve(r.imageUrl),
    volumeMl: r.volumeMl,
    type: r.type?.name,
    variantPrice: r.variantPrice?.toDouble() ?? 0.0,
    quantity: r.quantity ?? 1,
    isAvailable: r.isAvailable ?? true,
    discount: r.discount?.toDouble() ?? 0.0,
    finalTotal: r.finalTotal?.toDouble() ?? 0.0,
    subTotal: r.subTotal?.toDouble() ?? 0.0,
  );
}
