// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_controller_get_all_orders200_response_payload.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$OrderControllerGetAllOrders200ResponsePayloadCWProxy {
  OrderControllerGetAllOrders200ResponsePayload items(
    List<OrderListItemResponse> items,
  );

  OrderControllerGetAllOrders200ResponsePayload pageNumber(num pageNumber);

  OrderControllerGetAllOrders200ResponsePayload pageSize(num pageSize);

  OrderControllerGetAllOrders200ResponsePayload totalCount(num totalCount);

  OrderControllerGetAllOrders200ResponsePayload totalPages(num totalPages);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `OrderControllerGetAllOrders200ResponsePayload(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// OrderControllerGetAllOrders200ResponsePayload(...).copyWith(id: 12, name: "My name")
  /// ```
  OrderControllerGetAllOrders200ResponsePayload call({
    List<OrderListItemResponse> items,
    num pageNumber,
    num pageSize,
    num totalCount,
    num totalPages,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfOrderControllerGetAllOrders200ResponsePayload.copyWith(...)` or call `instanceOfOrderControllerGetAllOrders200ResponsePayload.copyWith.fieldName(value)` for a single field.
class _$OrderControllerGetAllOrders200ResponsePayloadCWProxyImpl
    implements _$OrderControllerGetAllOrders200ResponsePayloadCWProxy {
  const _$OrderControllerGetAllOrders200ResponsePayloadCWProxyImpl(this._value);

  final OrderControllerGetAllOrders200ResponsePayload _value;

  @override
  OrderControllerGetAllOrders200ResponsePayload items(
    List<OrderListItemResponse> items,
  ) => call(items: items);

  @override
  OrderControllerGetAllOrders200ResponsePayload pageNumber(num pageNumber) =>
      call(pageNumber: pageNumber);

  @override
  OrderControllerGetAllOrders200ResponsePayload pageSize(num pageSize) =>
      call(pageSize: pageSize);

  @override
  OrderControllerGetAllOrders200ResponsePayload totalCount(num totalCount) =>
      call(totalCount: totalCount);

  @override
  OrderControllerGetAllOrders200ResponsePayload totalPages(num totalPages) =>
      call(totalPages: totalPages);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `OrderControllerGetAllOrders200ResponsePayload(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// OrderControllerGetAllOrders200ResponsePayload(...).copyWith(id: 12, name: "My name")
  /// ```
  OrderControllerGetAllOrders200ResponsePayload call({
    Object? items = const $CopyWithPlaceholder(),
    Object? pageNumber = const $CopyWithPlaceholder(),
    Object? pageSize = const $CopyWithPlaceholder(),
    Object? totalCount = const $CopyWithPlaceholder(),
    Object? totalPages = const $CopyWithPlaceholder(),
  }) {
    return OrderControllerGetAllOrders200ResponsePayload(
      items: items == const $CopyWithPlaceholder() || items == null
          ? _value.items
          // ignore: cast_nullable_to_non_nullable
          : items as List<OrderListItemResponse>,
      pageNumber:
          pageNumber == const $CopyWithPlaceholder() || pageNumber == null
          ? _value.pageNumber
          // ignore: cast_nullable_to_non_nullable
          : pageNumber as num,
      pageSize: pageSize == const $CopyWithPlaceholder() || pageSize == null
          ? _value.pageSize
          // ignore: cast_nullable_to_non_nullable
          : pageSize as num,
      totalCount:
          totalCount == const $CopyWithPlaceholder() || totalCount == null
          ? _value.totalCount
          // ignore: cast_nullable_to_non_nullable
          : totalCount as num,
      totalPages:
          totalPages == const $CopyWithPlaceholder() || totalPages == null
          ? _value.totalPages
          // ignore: cast_nullable_to_non_nullable
          : totalPages as num,
    );
  }
}

extension $OrderControllerGetAllOrders200ResponsePayloadCopyWith
    on OrderControllerGetAllOrders200ResponsePayload {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfOrderControllerGetAllOrders200ResponsePayload.copyWith(...)` or `instanceOfOrderControllerGetAllOrders200ResponsePayload.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$OrderControllerGetAllOrders200ResponsePayloadCWProxy get copyWith =>
      _$OrderControllerGetAllOrders200ResponsePayloadCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OrderControllerGetAllOrders200ResponsePayload
_$OrderControllerGetAllOrders200ResponsePayloadFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('OrderControllerGetAllOrders200ResponsePayload', json, (
  $checkedConvert,
) {
  $checkKeys(
    json,
    requiredKeys: const [
      'items',
      'pageNumber',
      'pageSize',
      'totalCount',
      'totalPages',
    ],
  );
  final val = OrderControllerGetAllOrders200ResponsePayload(
    items: $checkedConvert(
      'items',
      (v) => (v as List<dynamic>)
          .map((e) => OrderListItemResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
    ),
    pageNumber: $checkedConvert('pageNumber', (v) => v as num),
    pageSize: $checkedConvert('pageSize', (v) => v as num),
    totalCount: $checkedConvert('totalCount', (v) => v as num),
    totalPages: $checkedConvert('totalPages', (v) => v as num),
  );
  return val;
});

Map<String, dynamic> _$OrderControllerGetAllOrders200ResponsePayloadToJson(
  OrderControllerGetAllOrders200ResponsePayload instance,
) => <String, dynamic>{
  'items': instance.items.map((e) => e.toJson()).toList(),
  'pageNumber': instance.pageNumber,
  'pageSize': instance.pageSize,
  'totalCount': instance.totalCount,
  'totalPages': instance.totalPages,
};
