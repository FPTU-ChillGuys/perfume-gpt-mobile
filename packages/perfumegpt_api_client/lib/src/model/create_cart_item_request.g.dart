// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_cart_item_request.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$CreateCartItemRequestCWProxy {
  CreateCartItemRequest variantId(String? variantId);

  CreateCartItemRequest quantity(int? quantity);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `CreateCartItemRequest(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// CreateCartItemRequest(...).copyWith(id: 12, name: "My name")
  /// ````
  CreateCartItemRequest call({String? variantId, int? quantity});
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfCreateCartItemRequest.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfCreateCartItemRequest.copyWith.fieldName(...)`
class _$CreateCartItemRequestCWProxyImpl
    implements _$CreateCartItemRequestCWProxy {
  const _$CreateCartItemRequestCWProxyImpl(this._value);

  final CreateCartItemRequest _value;

  @override
  CreateCartItemRequest variantId(String? variantId) =>
      this(variantId: variantId);

  @override
  CreateCartItemRequest quantity(int? quantity) => this(quantity: quantity);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `CreateCartItemRequest(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// CreateCartItemRequest(...).copyWith(id: 12, name: "My name")
  /// ````
  CreateCartItemRequest call({
    Object? variantId = const $CopyWithPlaceholder(),
    Object? quantity = const $CopyWithPlaceholder(),
  }) {
    return CreateCartItemRequest(
      variantId: variantId == const $CopyWithPlaceholder()
          ? _value.variantId
          // ignore: cast_nullable_to_non_nullable
          : variantId as String?,
      quantity: quantity == const $CopyWithPlaceholder()
          ? _value.quantity
          // ignore: cast_nullable_to_non_nullable
          : quantity as int?,
    );
  }
}

extension $CreateCartItemRequestCopyWith on CreateCartItemRequest {
  /// Returns a callable class that can be used as follows: `instanceOfCreateCartItemRequest.copyWith(...)` or like so:`instanceOfCreateCartItemRequest.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$CreateCartItemRequestCWProxy get copyWith =>
      _$CreateCartItemRequestCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CreateCartItemRequest _$CreateCartItemRequestFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('CreateCartItemRequest', json, ($checkedConvert) {
  final val = CreateCartItemRequest(
    variantId: $checkedConvert('variantId', (v) => v as String?),
    quantity: $checkedConvert('quantity', (v) => (v as num?)?.toInt()),
  );
  return val;
});

Map<String, dynamic> _$CreateCartItemRequestToJson(
  CreateCartItemRequest instance,
) => <String, dynamic>{
  'variantId': ?instance.variantId,
  'quantity': ?instance.quantity,
};
