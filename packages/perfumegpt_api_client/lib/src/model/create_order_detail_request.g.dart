// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_order_detail_request.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$CreateOrderDetailRequestCWProxy {
  CreateOrderDetailRequest variantId(String? variantId);

  CreateOrderDetailRequest quantity(int? quantity);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `CreateOrderDetailRequest(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// CreateOrderDetailRequest(...).copyWith(id: 12, name: "My name")
  /// ````
  CreateOrderDetailRequest call({String? variantId, int? quantity});
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfCreateOrderDetailRequest.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfCreateOrderDetailRequest.copyWith.fieldName(...)`
class _$CreateOrderDetailRequestCWProxyImpl
    implements _$CreateOrderDetailRequestCWProxy {
  const _$CreateOrderDetailRequestCWProxyImpl(this._value);

  final CreateOrderDetailRequest _value;

  @override
  CreateOrderDetailRequest variantId(String? variantId) =>
      this(variantId: variantId);

  @override
  CreateOrderDetailRequest quantity(int? quantity) => this(quantity: quantity);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `CreateOrderDetailRequest(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// CreateOrderDetailRequest(...).copyWith(id: 12, name: "My name")
  /// ````
  CreateOrderDetailRequest call({
    Object? variantId = const $CopyWithPlaceholder(),
    Object? quantity = const $CopyWithPlaceholder(),
  }) {
    return CreateOrderDetailRequest(
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

extension $CreateOrderDetailRequestCopyWith on CreateOrderDetailRequest {
  /// Returns a callable class that can be used as follows: `instanceOfCreateOrderDetailRequest.copyWith(...)` or like so:`instanceOfCreateOrderDetailRequest.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$CreateOrderDetailRequestCWProxy get copyWith =>
      _$CreateOrderDetailRequestCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CreateOrderDetailRequest _$CreateOrderDetailRequestFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('CreateOrderDetailRequest', json, ($checkedConvert) {
  final val = CreateOrderDetailRequest(
    variantId: $checkedConvert('variantId', (v) => v as String?),
    quantity: $checkedConvert('quantity', (v) => (v as num?)?.toInt()),
  );
  return val;
});

Map<String, dynamic> _$CreateOrderDetailRequestToJson(
  CreateOrderDetailRequest instance,
) => <String, dynamic>{
  'variantId': ?instance.variantId,
  'quantity': ?instance.quantity,
};
