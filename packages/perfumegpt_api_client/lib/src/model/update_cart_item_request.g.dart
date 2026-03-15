// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_cart_item_request.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$UpdateCartItemRequestCWProxy {
  UpdateCartItemRequest quantity(int? quantity);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `UpdateCartItemRequest(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// UpdateCartItemRequest(...).copyWith(id: 12, name: "My name")
  /// ````
  UpdateCartItemRequest call({int? quantity});
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfUpdateCartItemRequest.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfUpdateCartItemRequest.copyWith.fieldName(...)`
class _$UpdateCartItemRequestCWProxyImpl
    implements _$UpdateCartItemRequestCWProxy {
  const _$UpdateCartItemRequestCWProxyImpl(this._value);

  final UpdateCartItemRequest _value;

  @override
  UpdateCartItemRequest quantity(int? quantity) => this(quantity: quantity);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `UpdateCartItemRequest(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// UpdateCartItemRequest(...).copyWith(id: 12, name: "My name")
  /// ````
  UpdateCartItemRequest call({
    Object? quantity = const $CopyWithPlaceholder(),
  }) {
    return UpdateCartItemRequest(
      quantity: quantity == const $CopyWithPlaceholder()
          ? _value.quantity
          // ignore: cast_nullable_to_non_nullable
          : quantity as int?,
    );
  }
}

extension $UpdateCartItemRequestCopyWith on UpdateCartItemRequest {
  /// Returns a callable class that can be used as follows: `instanceOfUpdateCartItemRequest.copyWith(...)` or like so:`instanceOfUpdateCartItemRequest.copyWith.fieldName(...)`.
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
  final val = UpdateCartItemRequest(
    quantity: $checkedConvert('quantity', (v) => (v as num?)?.toInt()),
  );
  return val;
});

Map<String, dynamic> _$UpdateCartItemRequestToJson(
  UpdateCartItemRequest instance,
) => <String, dynamic>{'quantity': ?instance.quantity};
