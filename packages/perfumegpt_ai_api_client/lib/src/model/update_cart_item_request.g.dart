// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_cart_item_request.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$UpdateCartItemRequestCWProxy {
  UpdateCartItemRequest quantity(num quantity);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `UpdateCartItemRequest(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// UpdateCartItemRequest(...).copyWith(id: 12, name: "My name")
  /// ```
  UpdateCartItemRequest call({num quantity});
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfUpdateCartItemRequest.copyWith(...)` or call `instanceOfUpdateCartItemRequest.copyWith.fieldName(value)` for a single field.
class _$UpdateCartItemRequestCWProxyImpl
    implements _$UpdateCartItemRequestCWProxy {
  const _$UpdateCartItemRequestCWProxyImpl(this._value);

  final UpdateCartItemRequest _value;

  @override
  UpdateCartItemRequest quantity(num quantity) => call(quantity: quantity);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `UpdateCartItemRequest(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// UpdateCartItemRequest(...).copyWith(id: 12, name: "My name")
  /// ```
  UpdateCartItemRequest call({
    Object? quantity = const $CopyWithPlaceholder(),
  }) {
    return UpdateCartItemRequest(
      quantity: quantity == const $CopyWithPlaceholder() || quantity == null
          ? _value.quantity
          // ignore: cast_nullable_to_non_nullable
          : quantity as num,
    );
  }
}

extension $UpdateCartItemRequestCopyWith on UpdateCartItemRequest {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfUpdateCartItemRequest.copyWith(...)` or `instanceOfUpdateCartItemRequest.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$UpdateCartItemRequestCWProxy get copyWith =>
      _$UpdateCartItemRequestCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UpdateCartItemRequest _$UpdateCartItemRequestFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('UpdateCartItemRequest', json, ($checkedConvert) {
  $checkKeys(json, requiredKeys: const ['quantity']);
  final val = UpdateCartItemRequest(
    quantity: $checkedConvert('quantity', (v) => v as num),
  );
  return val;
});

Map<String, dynamic> _$UpdateCartItemRequestToJson(
  UpdateCartItemRequest instance,
) => <String, dynamic>{'quantity': instance.quantity};
