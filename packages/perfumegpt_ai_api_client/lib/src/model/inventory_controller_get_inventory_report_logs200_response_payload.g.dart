// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'inventory_controller_get_inventory_report_logs200_response_payload.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$InventoryControllerGetInventoryReportLogs200ResponsePayloadCWProxy {
  InventoryControllerGetInventoryReportLogs200ResponsePayload items(
    List<String> items,
  );

  InventoryControllerGetInventoryReportLogs200ResponsePayload pageNumber(
    num pageNumber,
  );

  InventoryControllerGetInventoryReportLogs200ResponsePayload pageSize(
    num pageSize,
  );

  InventoryControllerGetInventoryReportLogs200ResponsePayload totalCount(
    num totalCount,
  );

  InventoryControllerGetInventoryReportLogs200ResponsePayload totalPages(
    num totalPages,
  );

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `InventoryControllerGetInventoryReportLogs200ResponsePayload(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// InventoryControllerGetInventoryReportLogs200ResponsePayload(...).copyWith(id: 12, name: "My name")
  /// ```
  InventoryControllerGetInventoryReportLogs200ResponsePayload call({
    List<String> items,
    num pageNumber,
    num pageSize,
    num totalCount,
    num totalPages,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfInventoryControllerGetInventoryReportLogs200ResponsePayload.copyWith(...)` or call `instanceOfInventoryControllerGetInventoryReportLogs200ResponsePayload.copyWith.fieldName(value)` for a single field.
class _$InventoryControllerGetInventoryReportLogs200ResponsePayloadCWProxyImpl
    implements
        _$InventoryControllerGetInventoryReportLogs200ResponsePayloadCWProxy {
  const _$InventoryControllerGetInventoryReportLogs200ResponsePayloadCWProxyImpl(
    this._value,
  );

  final InventoryControllerGetInventoryReportLogs200ResponsePayload _value;

  @override
  InventoryControllerGetInventoryReportLogs200ResponsePayload items(
    List<String> items,
  ) => call(items: items);

  @override
  InventoryControllerGetInventoryReportLogs200ResponsePayload pageNumber(
    num pageNumber,
  ) => call(pageNumber: pageNumber);

  @override
  InventoryControllerGetInventoryReportLogs200ResponsePayload pageSize(
    num pageSize,
  ) => call(pageSize: pageSize);

  @override
  InventoryControllerGetInventoryReportLogs200ResponsePayload totalCount(
    num totalCount,
  ) => call(totalCount: totalCount);

  @override
  InventoryControllerGetInventoryReportLogs200ResponsePayload totalPages(
    num totalPages,
  ) => call(totalPages: totalPages);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `InventoryControllerGetInventoryReportLogs200ResponsePayload(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// InventoryControllerGetInventoryReportLogs200ResponsePayload(...).copyWith(id: 12, name: "My name")
  /// ```
  InventoryControllerGetInventoryReportLogs200ResponsePayload call({
    Object? items = const $CopyWithPlaceholder(),
    Object? pageNumber = const $CopyWithPlaceholder(),
    Object? pageSize = const $CopyWithPlaceholder(),
    Object? totalCount = const $CopyWithPlaceholder(),
    Object? totalPages = const $CopyWithPlaceholder(),
  }) {
    return InventoryControllerGetInventoryReportLogs200ResponsePayload(
      items: items == const $CopyWithPlaceholder() || items == null
          ? _value.items
          // ignore: cast_nullable_to_non_nullable
          : items as List<String>,
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

extension $InventoryControllerGetInventoryReportLogs200ResponsePayloadCopyWith
    on InventoryControllerGetInventoryReportLogs200ResponsePayload {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfInventoryControllerGetInventoryReportLogs200ResponsePayload.copyWith(...)` or `instanceOfInventoryControllerGetInventoryReportLogs200ResponsePayload.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$InventoryControllerGetInventoryReportLogs200ResponsePayloadCWProxy
  get copyWith =>
      _$InventoryControllerGetInventoryReportLogs200ResponsePayloadCWProxyImpl(
        this,
      );
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

InventoryControllerGetInventoryReportLogs200ResponsePayload
_$InventoryControllerGetInventoryReportLogs200ResponsePayloadFromJson(
  Map<String, dynamic> json,
) => $checkedCreate(
  'InventoryControllerGetInventoryReportLogs200ResponsePayload',
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
    final val = InventoryControllerGetInventoryReportLogs200ResponsePayload(
      items: $checkedConvert(
        'items',
        (v) => (v as List<dynamic>).map((e) => e as String).toList(),
      ),
      pageNumber: $checkedConvert('pageNumber', (v) => v as num),
      pageSize: $checkedConvert('pageSize', (v) => v as num),
      totalCount: $checkedConvert('totalCount', (v) => v as num),
      totalPages: $checkedConvert('totalPages', (v) => v as num),
    );
    return val;
  },
);

Map<String, dynamic>
_$InventoryControllerGetInventoryReportLogs200ResponsePayloadToJson(
  InventoryControllerGetInventoryReportLogs200ResponsePayload instance,
) => <String, dynamic>{
  'items': instance.items,
  'pageNumber': instance.pageNumber,
  'pageSize': instance.pageSize,
  'totalCount': instance.totalCount,
  'totalPages': instance.totalPages,
};
