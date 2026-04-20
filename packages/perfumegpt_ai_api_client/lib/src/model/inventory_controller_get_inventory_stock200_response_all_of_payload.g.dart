// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'inventory_controller_get_inventory_stock200_response_all_of_payload.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$InventoryControllerGetInventoryStock200ResponseAllOfPayloadCWProxy {
  InventoryControllerGetInventoryStock200ResponseAllOfPayload items(
    List<InventoryStockResponse> items,
  );

  InventoryControllerGetInventoryStock200ResponseAllOfPayload pageNumber(
    num pageNumber,
  );

  InventoryControllerGetInventoryStock200ResponseAllOfPayload pageSize(
    num pageSize,
  );

  InventoryControllerGetInventoryStock200ResponseAllOfPayload totalCount(
    num totalCount,
  );

  InventoryControllerGetInventoryStock200ResponseAllOfPayload totalPages(
    num totalPages,
  );

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `InventoryControllerGetInventoryStock200ResponseAllOfPayload(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// InventoryControllerGetInventoryStock200ResponseAllOfPayload(...).copyWith(id: 12, name: "My name")
  /// ```
  InventoryControllerGetInventoryStock200ResponseAllOfPayload call({
    List<InventoryStockResponse> items,
    num pageNumber,
    num pageSize,
    num totalCount,
    num totalPages,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfInventoryControllerGetInventoryStock200ResponseAllOfPayload.copyWith(...)` or call `instanceOfInventoryControllerGetInventoryStock200ResponseAllOfPayload.copyWith.fieldName(value)` for a single field.
class _$InventoryControllerGetInventoryStock200ResponseAllOfPayloadCWProxyImpl
    implements
        _$InventoryControllerGetInventoryStock200ResponseAllOfPayloadCWProxy {
  const _$InventoryControllerGetInventoryStock200ResponseAllOfPayloadCWProxyImpl(
    this._value,
  );

  final InventoryControllerGetInventoryStock200ResponseAllOfPayload _value;

  @override
  InventoryControllerGetInventoryStock200ResponseAllOfPayload items(
    List<InventoryStockResponse> items,
  ) => call(items: items);

  @override
  InventoryControllerGetInventoryStock200ResponseAllOfPayload pageNumber(
    num pageNumber,
  ) => call(pageNumber: pageNumber);

  @override
  InventoryControllerGetInventoryStock200ResponseAllOfPayload pageSize(
    num pageSize,
  ) => call(pageSize: pageSize);

  @override
  InventoryControllerGetInventoryStock200ResponseAllOfPayload totalCount(
    num totalCount,
  ) => call(totalCount: totalCount);

  @override
  InventoryControllerGetInventoryStock200ResponseAllOfPayload totalPages(
    num totalPages,
  ) => call(totalPages: totalPages);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `InventoryControllerGetInventoryStock200ResponseAllOfPayload(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// InventoryControllerGetInventoryStock200ResponseAllOfPayload(...).copyWith(id: 12, name: "My name")
  /// ```
  InventoryControllerGetInventoryStock200ResponseAllOfPayload call({
    Object? items = const $CopyWithPlaceholder(),
    Object? pageNumber = const $CopyWithPlaceholder(),
    Object? pageSize = const $CopyWithPlaceholder(),
    Object? totalCount = const $CopyWithPlaceholder(),
    Object? totalPages = const $CopyWithPlaceholder(),
  }) {
    return InventoryControllerGetInventoryStock200ResponseAllOfPayload(
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

extension $InventoryControllerGetInventoryStock200ResponseAllOfPayloadCopyWith
    on InventoryControllerGetInventoryStock200ResponseAllOfPayload {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfInventoryControllerGetInventoryStock200ResponseAllOfPayload.copyWith(...)` or `instanceOfInventoryControllerGetInventoryStock200ResponseAllOfPayload.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$InventoryControllerGetInventoryStock200ResponseAllOfPayloadCWProxy
  get copyWith =>
      _$InventoryControllerGetInventoryStock200ResponseAllOfPayloadCWProxyImpl(
        this,
      );
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

InventoryControllerGetInventoryStock200ResponseAllOfPayload
_$InventoryControllerGetInventoryStock200ResponseAllOfPayloadFromJson(
  Map<String, dynamic> json,
) => $checkedCreate(
  'InventoryControllerGetInventoryStock200ResponseAllOfPayload',
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
    final val = InventoryControllerGetInventoryStock200ResponseAllOfPayload(
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
_$InventoryControllerGetInventoryStock200ResponseAllOfPayloadToJson(
  InventoryControllerGetInventoryStock200ResponseAllOfPayload instance,
) => <String, dynamic>{
  'items': instance.items.map((e) => e.toJson()).toList(),
  'pageNumber': instance.pageNumber,
  'pageSize': instance.pageSize,
  'totalCount': instance.totalCount,
  'totalPages': instance.totalPages,
};
