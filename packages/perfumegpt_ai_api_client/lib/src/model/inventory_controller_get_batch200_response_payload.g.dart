// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'inventory_controller_get_batch200_response_payload.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$InventoryControllerGetBatch200ResponsePayloadCWProxy {
  InventoryControllerGetBatch200ResponsePayload items(
    List<BatchResponse> items,
  );

  InventoryControllerGetBatch200ResponsePayload pageNumber(num pageNumber);

  InventoryControllerGetBatch200ResponsePayload pageSize(num pageSize);

  InventoryControllerGetBatch200ResponsePayload totalCount(num totalCount);

  InventoryControllerGetBatch200ResponsePayload totalPages(num totalPages);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `InventoryControllerGetBatch200ResponsePayload(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// InventoryControllerGetBatch200ResponsePayload(...).copyWith(id: 12, name: "My name")
  /// ```
  InventoryControllerGetBatch200ResponsePayload call({
    List<BatchResponse> items,
    num pageNumber,
    num pageSize,
    num totalCount,
    num totalPages,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfInventoryControllerGetBatch200ResponsePayload.copyWith(...)` or call `instanceOfInventoryControllerGetBatch200ResponsePayload.copyWith.fieldName(value)` for a single field.
class _$InventoryControllerGetBatch200ResponsePayloadCWProxyImpl
    implements _$InventoryControllerGetBatch200ResponsePayloadCWProxy {
  const _$InventoryControllerGetBatch200ResponsePayloadCWProxyImpl(this._value);

  final InventoryControllerGetBatch200ResponsePayload _value;

  @override
  InventoryControllerGetBatch200ResponsePayload items(
    List<BatchResponse> items,
  ) => call(items: items);

  @override
  InventoryControllerGetBatch200ResponsePayload pageNumber(num pageNumber) =>
      call(pageNumber: pageNumber);

  @override
  InventoryControllerGetBatch200ResponsePayload pageSize(num pageSize) =>
      call(pageSize: pageSize);

  @override
  InventoryControllerGetBatch200ResponsePayload totalCount(num totalCount) =>
      call(totalCount: totalCount);

  @override
  InventoryControllerGetBatch200ResponsePayload totalPages(num totalPages) =>
      call(totalPages: totalPages);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `InventoryControllerGetBatch200ResponsePayload(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// InventoryControllerGetBatch200ResponsePayload(...).copyWith(id: 12, name: "My name")
  /// ```
  InventoryControllerGetBatch200ResponsePayload call({
    Object? items = const $CopyWithPlaceholder(),
    Object? pageNumber = const $CopyWithPlaceholder(),
    Object? pageSize = const $CopyWithPlaceholder(),
    Object? totalCount = const $CopyWithPlaceholder(),
    Object? totalPages = const $CopyWithPlaceholder(),
  }) {
    return InventoryControllerGetBatch200ResponsePayload(
      items: items == const $CopyWithPlaceholder() || items == null
          ? _value.items
          // ignore: cast_nullable_to_non_nullable
          : items as List<BatchResponse>,
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

extension $InventoryControllerGetBatch200ResponsePayloadCopyWith
    on InventoryControllerGetBatch200ResponsePayload {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfInventoryControllerGetBatch200ResponsePayload.copyWith(...)` or `instanceOfInventoryControllerGetBatch200ResponsePayload.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$InventoryControllerGetBatch200ResponsePayloadCWProxy get copyWith =>
      _$InventoryControllerGetBatch200ResponsePayloadCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

InventoryControllerGetBatch200ResponsePayload
_$InventoryControllerGetBatch200ResponsePayloadFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('InventoryControllerGetBatch200ResponsePayload', json, (
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
  final val = InventoryControllerGetBatch200ResponsePayload(
    items: $checkedConvert(
      'items',
      (v) => (v as List<dynamic>)
          .map((e) => BatchResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
    ),
    pageNumber: $checkedConvert('pageNumber', (v) => v as num),
    pageSize: $checkedConvert('pageSize', (v) => v as num),
    totalCount: $checkedConvert('totalCount', (v) => v as num),
    totalPages: $checkedConvert('totalPages', (v) => v as num),
  );
  return val;
});

Map<String, dynamic> _$InventoryControllerGetBatch200ResponsePayloadToJson(
  InventoryControllerGetBatch200ResponsePayload instance,
) => <String, dynamic>{
  'items': instance.items.map((e) => e.toJson()).toList(),
  'pageNumber': instance.pageNumber,
  'pageSize': instance.pageSize,
  'totalCount': instance.totalCount,
  'totalPages': instance.totalPages,
};
