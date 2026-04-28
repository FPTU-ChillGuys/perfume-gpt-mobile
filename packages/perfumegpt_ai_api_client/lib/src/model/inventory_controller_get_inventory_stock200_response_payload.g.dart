// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'inventory_controller_get_inventory_stock200_response_payload.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$InventoryControllerGetInventoryStock200ResponsePayloadCWProxy {
  InventoryControllerGetInventoryStock200ResponsePayload items(
    List<InventoryStockResponse> items,
  );

  InventoryControllerGetInventoryStock200ResponsePayload pageNumber(
    num pageNumber,
  );

  InventoryControllerGetInventoryStock200ResponsePayload pageSize(num pageSize);

  InventoryControllerGetInventoryStock200ResponsePayload totalCount(
    num totalCount,
  );

  InventoryControllerGetInventoryStock200ResponsePayload totalPages(
    num totalPages,
  );

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `InventoryControllerGetInventoryStock200ResponsePayload(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// InventoryControllerGetInventoryStock200ResponsePayload(...).copyWith(id: 12, name: "My name")
  /// ```
  InventoryControllerGetInventoryStock200ResponsePayload call({
    List<InventoryStockResponse> items,
    num pageNumber,
    num pageSize,
    num totalCount,
    num totalPages,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfInventoryControllerGetInventoryStock200ResponsePayload.copyWith(...)` or call `instanceOfInventoryControllerGetInventoryStock200ResponsePayload.copyWith.fieldName(value)` for a single field.
class _$InventoryControllerGetInventoryStock200ResponsePayloadCWProxyImpl
    implements _$InventoryControllerGetInventoryStock200ResponsePayloadCWProxy {
  const _$InventoryControllerGetInventoryStock200ResponsePayloadCWProxyImpl(
    this._value,
  );

  final InventoryControllerGetInventoryStock200ResponsePayload _value;

  @override
  InventoryControllerGetInventoryStock200ResponsePayload items(
    List<InventoryStockResponse> items,
  ) => call(items: items);

  @override
  InventoryControllerGetInventoryStock200ResponsePayload pageNumber(
    num pageNumber,
  ) => call(pageNumber: pageNumber);

  @override
  InventoryControllerGetInventoryStock200ResponsePayload pageSize(
    num pageSize,
  ) => call(pageSize: pageSize);

  @override
  InventoryControllerGetInventoryStock200ResponsePayload totalCount(
    num totalCount,
  ) => call(totalCount: totalCount);

  @override
  InventoryControllerGetInventoryStock200ResponsePayload totalPages(
    num totalPages,
  ) => call(totalPages: totalPages);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `InventoryControllerGetInventoryStock200ResponsePayload(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// InventoryControllerGetInventoryStock200ResponsePayload(...).copyWith(id: 12, name: "My name")
  /// ```
  InventoryControllerGetInventoryStock200ResponsePayload call({
    Object? items = const $CopyWithPlaceholder(),
    Object? pageNumber = const $CopyWithPlaceholder(),
    Object? pageSize = const $CopyWithPlaceholder(),
    Object? totalCount = const $CopyWithPlaceholder(),
    Object? totalPages = const $CopyWithPlaceholder(),
  }) {
    return InventoryControllerGetInventoryStock200ResponsePayload(
      items: items == const $CopyWithPlaceholder() || items == null
          ? _value.items
          // ignore: cast_nullable_to_non_nullable
          : items as List<InventoryStockResponse>,
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

extension $InventoryControllerGetInventoryStock200ResponsePayloadCopyWith
    on InventoryControllerGetInventoryStock200ResponsePayload {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfInventoryControllerGetInventoryStock200ResponsePayload.copyWith(...)` or `instanceOfInventoryControllerGetInventoryStock200ResponsePayload.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$InventoryControllerGetInventoryStock200ResponsePayloadCWProxy
  get copyWith =>
      _$InventoryControllerGetInventoryStock200ResponsePayloadCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

InventoryControllerGetInventoryStock200ResponsePayload
_$InventoryControllerGetInventoryStock200ResponsePayloadFromJson(
  Map<String, dynamic> json,
) => $checkedCreate(
  'InventoryControllerGetInventoryStock200ResponsePayload',
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
    final val = InventoryControllerGetInventoryStock200ResponsePayload(
      items: $checkedConvert(
        'items',
        (v) => (v as List<dynamic>)
            .map(
              (e) => InventoryStockResponse.fromJson(e as Map<String, dynamic>),
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

Map<String, dynamic>
_$InventoryControllerGetInventoryStock200ResponsePayloadToJson(
  InventoryControllerGetInventoryStock200ResponsePayload instance,
) => <String, dynamic>{
  'items': instance.items.map((e) => e.toJson()).toList(),
  'pageNumber': instance.pageNumber,
  'pageSize': instance.pageSize,
  'totalCount': instance.totalCount,
  'totalPages': instance.totalPages,
};
