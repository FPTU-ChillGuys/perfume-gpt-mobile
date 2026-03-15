// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fulfill_order_request.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$FulfillOrderRequestCWProxy {
  FulfillOrderRequest items(List<FulfillOrderItemRequest>? items);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `FulfillOrderRequest(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// FulfillOrderRequest(...).copyWith(id: 12, name: "My name")
  /// ````
  FulfillOrderRequest call({List<FulfillOrderItemRequest>? items});
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfFulfillOrderRequest.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfFulfillOrderRequest.copyWith.fieldName(...)`
class _$FulfillOrderRequestCWProxyImpl implements _$FulfillOrderRequestCWProxy {
  const _$FulfillOrderRequestCWProxyImpl(this._value);

  final FulfillOrderRequest _value;

  @override
  FulfillOrderRequest items(List<FulfillOrderItemRequest>? items) =>
      this(items: items);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `FulfillOrderRequest(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// FulfillOrderRequest(...).copyWith(id: 12, name: "My name")
  /// ````
  FulfillOrderRequest call({Object? items = const $CopyWithPlaceholder()}) {
    return FulfillOrderRequest(
      items: items == const $CopyWithPlaceholder()
          ? _value.items
          // ignore: cast_nullable_to_non_nullable
          : items as List<FulfillOrderItemRequest>?,
    );
  }
}

extension $FulfillOrderRequestCopyWith on FulfillOrderRequest {
  /// Returns a callable class that can be used as follows: `instanceOfFulfillOrderRequest.copyWith(...)` or like so:`instanceOfFulfillOrderRequest.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$FulfillOrderRequestCWProxy get copyWith =>
      _$FulfillOrderRequestCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FulfillOrderRequest _$FulfillOrderRequestFromJson(Map<String, dynamic> json) =>
    $checkedCreate('FulfillOrderRequest', json, ($checkedConvert) {
      final val = FulfillOrderRequest(
        items: $checkedConvert(
          'items',
          (v) => (v as List<dynamic>?)
              ?.map(
                (e) =>
                    FulfillOrderItemRequest.fromJson(e as Map<String, dynamic>),
              )
              .toList(),
        ),
      );
      return val;
    });

Map<String, dynamic> _$FulfillOrderRequestToJson(
  FulfillOrderRequest instance,
) => <String, dynamic>{
  'items': ?instance.items?.map((e) => e.toJson()).toList(),
};
