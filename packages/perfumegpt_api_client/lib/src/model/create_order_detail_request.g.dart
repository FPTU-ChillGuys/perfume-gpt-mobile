// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_order_detail_request.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$CreateOrderDetailRequestCWProxy {
  CreateOrderDetailRequest variantId(String variantId);

  CreateOrderDetailRequest quantity(int? quantity);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `CreateOrderDetailRequest(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// CreateOrderDetailRequest(...).copyWith(id: 12, name: "My name")
  /// ```
  CreateOrderDetailRequest call({String variantId, int? quantity});
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfCreateOrderDetailRequest.copyWith(...)` or call `instanceOfCreateOrderDetailRequest.copyWith.fieldName(value)` for a single field.
class _$CreateOrderDetailRequestCWProxyImpl
    implements _$CreateOrderDetailRequestCWProxy {
  const _$CreateOrderDetailRequestCWProxyImpl(this._value);

  final CreateOrderDetailRequest _value;

  @override
  CreateOrderDetailRequest variantId(String variantId) =>
      call(variantId: variantId);

  @override
  CreateOrderDetailRequest quantity(int? quantity) => call(quantity: quantity);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `CreateOrderDetailRequest(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// CreateOrderDetailRequest(...).copyWith(id: 12, name: "My name")
  /// ```
  CreateOrderDetailRequest call({
    Object? variantId = const $CopyWithPlaceholder(),
    Object? quantity = const $CopyWithPlaceholder(),
  }) {
    return CreateOrderDetailRequest(
      variantId: variantId == const $CopyWithPlaceholder() || variantId == null
          ? _value.variantId
          // ignore: cast_nullable_to_non_nullable
          : variantId as String,
      quantity: quantity == const $CopyWithPlaceholder()
          ? _value.quantity
          // ignore: cast_nullable_to_non_nullable
          : quantity as int?,
    );
  }
}

extension $CreateOrderDetailRequestCopyWith on CreateOrderDetailRequest {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfCreateOrderDetailRequest.copyWith(...)` or `instanceOfCreateOrderDetailRequest.copyWith.fieldName(...)`.
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
  $checkKeys(json, requiredKeys: const ['variantId']);
  final val = CreateOrderDetailRequest(
    variantId: $checkedConvert('variantId', (v) => v as String),
    quantity: $checkedConvert('quantity', (v) => (v as num?)?.toInt()),
  );
  return val;
});

Map<String, dynamic> _$CreateOrderDetailRequestToJson(
  CreateOrderDetailRequest instance,
) => <String, dynamic>{
  'variantId': instance.variantId,
  'quantity': ?instance.quantity,
};
