// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_cart_item_request.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$CreateCartItemRequestCWProxy {
  CreateCartItemRequest variantId(String variantId);

  CreateCartItemRequest quantity(int? quantity);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `CreateCartItemRequest(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// CreateCartItemRequest(...).copyWith(id: 12, name: "My name")
  /// ```
  CreateCartItemRequest call({String variantId, int? quantity});
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfCreateCartItemRequest.copyWith(...)` or call `instanceOfCreateCartItemRequest.copyWith.fieldName(value)` for a single field.
class _$CreateCartItemRequestCWProxyImpl
    implements _$CreateCartItemRequestCWProxy {
  const _$CreateCartItemRequestCWProxyImpl(this._value);

  final CreateCartItemRequest _value;

  @override
  CreateCartItemRequest variantId(String variantId) =>
      call(variantId: variantId);

  @override
  CreateCartItemRequest quantity(int? quantity) => call(quantity: quantity);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `CreateCartItemRequest(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// CreateCartItemRequest(...).copyWith(id: 12, name: "My name")
  /// ```
  CreateCartItemRequest call({
    Object? variantId = const $CopyWithPlaceholder(),
    Object? quantity = const $CopyWithPlaceholder(),
  }) {
    return CreateCartItemRequest(
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

extension $CreateCartItemRequestCopyWith on CreateCartItemRequest {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfCreateCartItemRequest.copyWith(...)` or `instanceOfCreateCartItemRequest.copyWith.fieldName(...)`.
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
  $checkKeys(json, requiredKeys: const ['variantId']);
  final val = CreateCartItemRequest(
    variantId: $checkedConvert('variantId', (v) => v as String),
    quantity: $checkedConvert('quantity', (v) => (v as num?)?.toInt()),
  );
  return val;
});

Map<String, dynamic> _$CreateCartItemRequestToJson(
  CreateCartItemRequest instance,
) => <String, dynamic>{
  'variantId': instance.variantId,
  'quantity': ?instance.quantity,
};
