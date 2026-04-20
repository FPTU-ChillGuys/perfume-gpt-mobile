// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_controller_get_best_selling_products200_response_all_of_payload.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$ProductControllerGetBestSellingProducts200ResponseAllOfPayloadCWProxy {
  ProductControllerGetBestSellingProducts200ResponseAllOfPayload items(
    List<Object> items,
  );

  ProductControllerGetBestSellingProducts200ResponseAllOfPayload pageNumber(
    num pageNumber,
  );

  ProductControllerGetBestSellingProducts200ResponseAllOfPayload pageSize(
    num pageSize,
  );

  ProductControllerGetBestSellingProducts200ResponseAllOfPayload totalCount(
    num totalCount,
  );

  ProductControllerGetBestSellingProducts200ResponseAllOfPayload totalPages(
    num totalPages,
  );

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `ProductControllerGetBestSellingProducts200ResponseAllOfPayload(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// ProductControllerGetBestSellingProducts200ResponseAllOfPayload(...).copyWith(id: 12, name: "My name")
  /// ```
  ProductControllerGetBestSellingProducts200ResponseAllOfPayload call({
    List<Object> items,
    num pageNumber,
    num pageSize,
    num totalCount,
    num totalPages,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfProductControllerGetBestSellingProducts200ResponseAllOfPayload.copyWith(...)` or call `instanceOfProductControllerGetBestSellingProducts200ResponseAllOfPayload.copyWith.fieldName(value)` for a single field.
class _$ProductControllerGetBestSellingProducts200ResponseAllOfPayloadCWProxyImpl
    implements
        _$ProductControllerGetBestSellingProducts200ResponseAllOfPayloadCWProxy {
  const _$ProductControllerGetBestSellingProducts200ResponseAllOfPayloadCWProxyImpl(
    this._value,
  );

  final ProductControllerGetBestSellingProducts200ResponseAllOfPayload _value;

  @override
  ProductControllerGetBestSellingProducts200ResponseAllOfPayload items(
    List<Object> items,
  ) => call(items: items);

  @override
  ProductControllerGetBestSellingProducts200ResponseAllOfPayload pageNumber(
    num pageNumber,
  ) => call(pageNumber: pageNumber);

  @override
  ProductControllerGetBestSellingProducts200ResponseAllOfPayload pageSize(
    num pageSize,
  ) => call(pageSize: pageSize);

  @override
  ProductControllerGetBestSellingProducts200ResponseAllOfPayload totalCount(
    num totalCount,
  ) => call(totalCount: totalCount);

  @override
  ProductControllerGetBestSellingProducts200ResponseAllOfPayload totalPages(
    num totalPages,
  ) => call(totalPages: totalPages);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `ProductControllerGetBestSellingProducts200ResponseAllOfPayload(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// ProductControllerGetBestSellingProducts200ResponseAllOfPayload(...).copyWith(id: 12, name: "My name")
  /// ```
  ProductControllerGetBestSellingProducts200ResponseAllOfPayload call({
    Object? items = const $CopyWithPlaceholder(),
    Object? pageNumber = const $CopyWithPlaceholder(),
    Object? pageSize = const $CopyWithPlaceholder(),
    Object? totalCount = const $CopyWithPlaceholder(),
    Object? totalPages = const $CopyWithPlaceholder(),
  }) {
    return ProductControllerGetBestSellingProducts200ResponseAllOfPayload(
      items: items == const $CopyWithPlaceholder() || items == null
          ? _value.items
          // ignore: cast_nullable_to_non_nullable
          : items as List<Object>,
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

extension $ProductControllerGetBestSellingProducts200ResponseAllOfPayloadCopyWith
    on ProductControllerGetBestSellingProducts200ResponseAllOfPayload {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfProductControllerGetBestSellingProducts200ResponseAllOfPayload.copyWith(...)` or `instanceOfProductControllerGetBestSellingProducts200ResponseAllOfPayload.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$ProductControllerGetBestSellingProducts200ResponseAllOfPayloadCWProxy
  get copyWith =>
      _$ProductControllerGetBestSellingProducts200ResponseAllOfPayloadCWProxyImpl(
        this,
      );
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProductControllerGetBestSellingProducts200ResponseAllOfPayload
_$ProductControllerGetBestSellingProducts200ResponseAllOfPayloadFromJson(
  Map<String, dynamic> json,
) => $checkedCreate(
  'ProductControllerGetBestSellingProducts200ResponseAllOfPayload',
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
    final val = ProductControllerGetBestSellingProducts200ResponseAllOfPayload(
      items: $checkedConvert(
        'items',
        (v) => (v as List<dynamic>).map((e) => e as Object).toList(),
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
_$ProductControllerGetBestSellingProducts200ResponseAllOfPayloadToJson(
  ProductControllerGetBestSellingProducts200ResponseAllOfPayload instance,
) => <String, dynamic>{
  'items': instance.items,
  'pageNumber': instance.pageNumber,
  'pageSize': instance.pageSize,
  'totalCount': instance.totalCount,
  'totalPages': instance.totalPages,
};
