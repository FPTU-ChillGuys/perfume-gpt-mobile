// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'inventory_controller_get_batch200_response_all_of_payload.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$InventoryControllerGetBatch200ResponseAllOfPayloadCWProxy {
  InventoryControllerGetBatch200ResponseAllOfPayload items(
    List<BatchResponse> items,
  );

  InventoryControllerGetBatch200ResponseAllOfPayload pageNumber(num pageNumber);

  InventoryControllerGetBatch200ResponseAllOfPayload pageSize(num pageSize);

  InventoryControllerGetBatch200ResponseAllOfPayload totalCount(num totalCount);

  InventoryControllerGetBatch200ResponseAllOfPayload totalPages(num totalPages);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `InventoryControllerGetBatch200ResponseAllOfPayload(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// InventoryControllerGetBatch200ResponseAllOfPayload(...).copyWith(id: 12, name: "My name")
  /// ```
  InventoryControllerGetBatch200ResponseAllOfPayload call({
    List<BatchResponse> items,
    num pageNumber,
    num pageSize,
    num totalCount,
    num totalPages,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfInventoryControllerGetBatch200ResponseAllOfPayload.copyWith(...)` or call `instanceOfInventoryControllerGetBatch200ResponseAllOfPayload.copyWith.fieldName(value)` for a single field.
class _$InventoryControllerGetBatch200ResponseAllOfPayloadCWProxyImpl
    implements _$InventoryControllerGetBatch200ResponseAllOfPayloadCWProxy {
  const _$InventoryControllerGetBatch200ResponseAllOfPayloadCWProxyImpl(
    this._value,
  );

  final InventoryControllerGetBatch200ResponseAllOfPayload _value;

  @override
  InventoryControllerGetBatch200ResponseAllOfPayload items(
    List<BatchResponse> items,
  ) => call(items: items);

  @override
  InventoryControllerGetBatch200ResponseAllOfPayload pageNumber(
    num pageNumber,
  ) => call(pageNumber: pageNumber);

  @override
  InventoryControllerGetBatch200ResponseAllOfPayload pageSize(num pageSize) =>
      call(pageSize: pageSize);

  @override
  InventoryControllerGetBatch200ResponseAllOfPayload totalCount(
    num totalCount,
  ) => call(totalCount: totalCount);

  @override
  InventoryControllerGetBatch200ResponseAllOfPayload totalPages(
    num totalPages,
  ) => call(totalPages: totalPages);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `InventoryControllerGetBatch200ResponseAllOfPayload(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// InventoryControllerGetBatch200ResponseAllOfPayload(...).copyWith(id: 12, name: "My name")
  /// ```
  InventoryControllerGetBatch200ResponseAllOfPayload call({
    Object? items = const $CopyWithPlaceholder(),
    Object? pageNumber = const $CopyWithPlaceholder(),
    Object? pageSize = const $CopyWithPlaceholder(),
    Object? totalCount = const $CopyWithPlaceholder(),
    Object? totalPages = const $CopyWithPlaceholder(),
  }) {
    return InventoryControllerGetBatch200ResponseAllOfPayload(
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

extension $InventoryControllerGetBatch200ResponseAllOfPayloadCopyWith
    on InventoryControllerGetBatch200ResponseAllOfPayload {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfInventoryControllerGetBatch200ResponseAllOfPayload.copyWith(...)` or `instanceOfInventoryControllerGetBatch200ResponseAllOfPayload.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$InventoryControllerGetBatch200ResponseAllOfPayloadCWProxy get copyWith =>
      _$InventoryControllerGetBatch200ResponseAllOfPayloadCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

InventoryControllerGetBatch200ResponseAllOfPayload
_$InventoryControllerGetBatch200ResponseAllOfPayloadFromJson(
  Map<String, dynamic> json,
) => $checkedCreate(
  'InventoryControllerGetBatch200ResponseAllOfPayload',
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
    final val = InventoryControllerGetBatch200ResponseAllOfPayload(
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
  },
);

Map<String, dynamic> _$InventoryControllerGetBatch200ResponseAllOfPayloadToJson(
  InventoryControllerGetBatch200ResponseAllOfPayload instance,
) => <String, dynamic>{
  'items': instance.items.map((e) => e.toJson()).toList(),
  'pageNumber': instance.pageNumber,
  'pageSize': instance.pageSize,
  'totalCount': instance.totalCount,
  'totalPages': instance.totalPages,
};
