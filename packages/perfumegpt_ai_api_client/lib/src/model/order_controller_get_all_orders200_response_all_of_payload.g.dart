// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_controller_get_all_orders200_response_all_of_payload.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$OrderControllerGetAllOrders200ResponseAllOfPayloadCWProxy {
  OrderControllerGetAllOrders200ResponseAllOfPayload items(
    List<OrderListItemResponse> items,
  );

  OrderControllerGetAllOrders200ResponseAllOfPayload pageNumber(num pageNumber);

  OrderControllerGetAllOrders200ResponseAllOfPayload pageSize(num pageSize);

  OrderControllerGetAllOrders200ResponseAllOfPayload totalCount(num totalCount);

  OrderControllerGetAllOrders200ResponseAllOfPayload totalPages(num totalPages);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `OrderControllerGetAllOrders200ResponseAllOfPayload(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// OrderControllerGetAllOrders200ResponseAllOfPayload(...).copyWith(id: 12, name: "My name")
  /// ```
  OrderControllerGetAllOrders200ResponseAllOfPayload call({
    List<OrderListItemResponse> items,
    num pageNumber,
    num pageSize,
    num totalCount,
    num totalPages,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfOrderControllerGetAllOrders200ResponseAllOfPayload.copyWith(...)` or call `instanceOfOrderControllerGetAllOrders200ResponseAllOfPayload.copyWith.fieldName(value)` for a single field.
class _$OrderControllerGetAllOrders200ResponseAllOfPayloadCWProxyImpl
    implements _$OrderControllerGetAllOrders200ResponseAllOfPayloadCWProxy {
  const _$OrderControllerGetAllOrders200ResponseAllOfPayloadCWProxyImpl(
    this._value,
  );

  final OrderControllerGetAllOrders200ResponseAllOfPayload _value;

  @override
  OrderControllerGetAllOrders200ResponseAllOfPayload items(
    List<OrderListItemResponse> items,
  ) => call(items: items);

  @override
  OrderControllerGetAllOrders200ResponseAllOfPayload pageNumber(
    num pageNumber,
  ) => call(pageNumber: pageNumber);

  @override
  OrderControllerGetAllOrders200ResponseAllOfPayload pageSize(num pageSize) =>
      call(pageSize: pageSize);

  @override
  OrderControllerGetAllOrders200ResponseAllOfPayload totalCount(
    num totalCount,
  ) => call(totalCount: totalCount);

  @override
  OrderControllerGetAllOrders200ResponseAllOfPayload totalPages(
    num totalPages,
  ) => call(totalPages: totalPages);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `OrderControllerGetAllOrders200ResponseAllOfPayload(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// OrderControllerGetAllOrders200ResponseAllOfPayload(...).copyWith(id: 12, name: "My name")
  /// ```
  OrderControllerGetAllOrders200ResponseAllOfPayload call({
    Object? items = const $CopyWithPlaceholder(),
    Object? pageNumber = const $CopyWithPlaceholder(),
    Object? pageSize = const $CopyWithPlaceholder(),
    Object? totalCount = const $CopyWithPlaceholder(),
    Object? totalPages = const $CopyWithPlaceholder(),
  }) {
    return OrderControllerGetAllOrders200ResponseAllOfPayload(
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

extension $OrderControllerGetAllOrders200ResponseAllOfPayloadCopyWith
    on OrderControllerGetAllOrders200ResponseAllOfPayload {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfOrderControllerGetAllOrders200ResponseAllOfPayload.copyWith(...)` or `instanceOfOrderControllerGetAllOrders200ResponseAllOfPayload.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$OrderControllerGetAllOrders200ResponseAllOfPayloadCWProxy get copyWith =>
      _$OrderControllerGetAllOrders200ResponseAllOfPayloadCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OrderControllerGetAllOrders200ResponseAllOfPayload
_$OrderControllerGetAllOrders200ResponseAllOfPayloadFromJson(
  Map<String, dynamic> json,
) => $checkedCreate(
  'OrderControllerGetAllOrders200ResponseAllOfPayload',
  json,
  ($checkedConvert) {
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
    final val = OrderControllerGetAllOrders200ResponseAllOfPayload(
      items: $checkedConvert(
        'items',
        (v) => (v as List<dynamic>)
            .map(
              (e) => OrderListItemResponse.fromJson(e as Map<String, dynamic>),
            )
            .toList(),
      ),
      pageNumber: $checkedConvert('pageNumber', (v) => v as num),
      pageSize: $checkedConvert('pageSize', (v) => v as num),
      totalCount: $checkedConvert('totalCount', (v) => v as num),
      totalPages: $checkedConvert('totalPages', (v) => v as num),
    );
    return val;
  },
);

Map<String, dynamic> _$OrderControllerGetAllOrders200ResponseAllOfPayloadToJson(
  OrderControllerGetAllOrders200ResponseAllOfPayload instance,
) => <String, dynamic>{
  'items': instance.items.map((e) => e.toJson()).toList(),
  'pageNumber': instance.pageNumber,
  'pageSize': instance.pageSize,
  'totalCount': instance.totalCount,
  'totalPages': instance.totalPages,
};
