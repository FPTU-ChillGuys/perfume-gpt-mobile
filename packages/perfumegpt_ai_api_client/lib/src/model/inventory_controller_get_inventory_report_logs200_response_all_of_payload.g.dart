// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'inventory_controller_get_inventory_report_logs200_response_all_of_payload.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$InventoryControllerGetInventoryReportLogs200ResponseAllOfPayloadCWProxy {
  InventoryControllerGetInventoryReportLogs200ResponseAllOfPayload items(
    List<String> items,
  );

  InventoryControllerGetInventoryReportLogs200ResponseAllOfPayload pageNumber(
    num pageNumber,
  );

  InventoryControllerGetInventoryReportLogs200ResponseAllOfPayload pageSize(
    num pageSize,
  );

  InventoryControllerGetInventoryReportLogs200ResponseAllOfPayload totalCount(
    num totalCount,
  );

  InventoryControllerGetInventoryReportLogs200ResponseAllOfPayload totalPages(
    num totalPages,
  );

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `InventoryControllerGetInventoryReportLogs200ResponseAllOfPayload(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// InventoryControllerGetInventoryReportLogs200ResponseAllOfPayload(...).copyWith(id: 12, name: "My name")
  /// ```
  InventoryControllerGetInventoryReportLogs200ResponseAllOfPayload call({
    List<String> items,
    num pageNumber,
    num pageSize,
    num totalCount,
    num totalPages,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfInventoryControllerGetInventoryReportLogs200ResponseAllOfPayload.copyWith(...)` or call `instanceOfInventoryControllerGetInventoryReportLogs200ResponseAllOfPayload.copyWith.fieldName(value)` for a single field.
class _$InventoryControllerGetInventoryReportLogs200ResponseAllOfPayloadCWProxyImpl
    implements
        _$InventoryControllerGetInventoryReportLogs200ResponseAllOfPayloadCWProxy {
  const _$InventoryControllerGetInventoryReportLogs200ResponseAllOfPayloadCWProxyImpl(
    this._value,
  );

  final InventoryControllerGetInventoryReportLogs200ResponseAllOfPayload _value;

  @override
  InventoryControllerGetInventoryReportLogs200ResponseAllOfPayload items(
    List<String> items,
  ) => call(items: items);

  @override
  InventoryControllerGetInventoryReportLogs200ResponseAllOfPayload pageNumber(
    num pageNumber,
  ) => call(pageNumber: pageNumber);

  @override
  InventoryControllerGetInventoryReportLogs200ResponseAllOfPayload pageSize(
    num pageSize,
  ) => call(pageSize: pageSize);

  @override
  InventoryControllerGetInventoryReportLogs200ResponseAllOfPayload totalCount(
    num totalCount,
  ) => call(totalCount: totalCount);

  @override
  InventoryControllerGetInventoryReportLogs200ResponseAllOfPayload totalPages(
    num totalPages,
  ) => call(totalPages: totalPages);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `InventoryControllerGetInventoryReportLogs200ResponseAllOfPayload(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// InventoryControllerGetInventoryReportLogs200ResponseAllOfPayload(...).copyWith(id: 12, name: "My name")
  /// ```
  InventoryControllerGetInventoryReportLogs200ResponseAllOfPayload call({
    Object? items = const $CopyWithPlaceholder(),
    Object? pageNumber = const $CopyWithPlaceholder(),
    Object? pageSize = const $CopyWithPlaceholder(),
    Object? totalCount = const $CopyWithPlaceholder(),
    Object? totalPages = const $CopyWithPlaceholder(),
  }) {
    return InventoryControllerGetInventoryReportLogs200ResponseAllOfPayload(
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

extension $InventoryControllerGetInventoryReportLogs200ResponseAllOfPayloadCopyWith
    on InventoryControllerGetInventoryReportLogs200ResponseAllOfPayload {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfInventoryControllerGetInventoryReportLogs200ResponseAllOfPayload.copyWith(...)` or `instanceOfInventoryControllerGetInventoryReportLogs200ResponseAllOfPayload.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$InventoryControllerGetInventoryReportLogs200ResponseAllOfPayloadCWProxy
  get copyWith =>
      _$InventoryControllerGetInventoryReportLogs200ResponseAllOfPayloadCWProxyImpl(
        this,
      );
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

InventoryControllerGetInventoryReportLogs200ResponseAllOfPayload
_$InventoryControllerGetInventoryReportLogs200ResponseAllOfPayloadFromJson(
  Map<String, dynamic> json,
) => $checkedCreate(
  'InventoryControllerGetInventoryReportLogs200ResponseAllOfPayload',
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
    final val =
        InventoryControllerGetInventoryReportLogs200ResponseAllOfPayload(
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
_$InventoryControllerGetInventoryReportLogs200ResponseAllOfPayloadToJson(
  InventoryControllerGetInventoryReportLogs200ResponseAllOfPayload instance,
) => <String, dynamic>{
  'items': instance.items,
  'pageNumber': instance.pageNumber,
  'pageSize': instance.pageSize,
  'totalCount': instance.totalCount,
  'totalPages': instance.totalPages,
};
