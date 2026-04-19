// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_to_cart_request.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$AddToCartRequestCWProxy {
  AddToCartRequest variantId(String variantId);

  AddToCartRequest quantity(num quantity);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `AddToCartRequest(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// AddToCartRequest(...).copyWith(id: 12, name: "My name")
  /// ```
  AddToCartRequest call({String variantId, num quantity});
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfAddToCartRequest.copyWith(...)` or call `instanceOfAddToCartRequest.copyWith.fieldName(value)` for a single field.
class _$AddToCartRequestCWProxyImpl implements _$AddToCartRequestCWProxy {
  const _$AddToCartRequestCWProxyImpl(this._value);

  final AddToCartRequest _value;

  @override
  AddToCartRequest variantId(String variantId) => call(variantId: variantId);

  @override
  AddToCartRequest quantity(num quantity) => call(quantity: quantity);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `AddToCartRequest(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// AddToCartRequest(...).copyWith(id: 12, name: "My name")
  /// ```
  AddToCartRequest call({
    Object? variantId = const $CopyWithPlaceholder(),
    Object? quantity = const $CopyWithPlaceholder(),
  }) {
    return AddToCartRequest(
      variantId: variantId == const $CopyWithPlaceholder() || variantId == null
          ? _value.variantId
          // ignore: cast_nullable_to_non_nullable
          : variantId as String,
      quantity: quantity == const $CopyWithPlaceholder() || quantity == null
          ? _value.quantity
          // ignore: cast_nullable_to_non_nullable
          : quantity as num,
    );
  }
}

extension $AddToCartRequestCopyWith on AddToCartRequest {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfAddToCartRequest.copyWith(...)` or `instanceOfAddToCartRequest.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$AddToCartRequestCWProxy get copyWith => _$AddToCartRequestCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AddToCartRequest _$AddToCartRequestFromJson(Map<String, dynamic> json) =>
    $checkedCreate('AddToCartRequest', json, ($checkedConvert) {
      $checkKeys(json, requiredKeys: const ['variantId', 'quantity']);
      final val = AddToCartRequest(
        variantId: $checkedConvert('variantId', (v) => v as String),
        quantity: $checkedConvert('quantity', (v) => v as num),
      );
      return val;
    });

Map<String, dynamic> _$AddToCartRequestToJson(AddToCartRequest instance) =>
    <String, dynamic>{
      'variantId': instance.variantId,
      'quantity': instance.quantity,
    };
