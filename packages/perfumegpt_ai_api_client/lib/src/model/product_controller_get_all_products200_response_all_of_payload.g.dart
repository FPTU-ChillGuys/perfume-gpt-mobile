// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_controller_get_all_products200_response_all_of_payload.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$ProductControllerGetAllProducts200ResponseAllOfPayloadCWProxy {
  ProductControllerGetAllProducts200ResponseAllOfPayload items(
    List<ProductResponse> items,
  );

  ProductControllerGetAllProducts200ResponseAllOfPayload pageNumber(
    num pageNumber,
  );

  ProductControllerGetAllProducts200ResponseAllOfPayload pageSize(num pageSize);

  ProductControllerGetAllProducts200ResponseAllOfPayload totalCount(
    num totalCount,
  );

  ProductControllerGetAllProducts200ResponseAllOfPayload totalPages(
    num totalPages,
  );

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `ProductControllerGetAllProducts200ResponseAllOfPayload(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// ProductControllerGetAllProducts200ResponseAllOfPayload(...).copyWith(id: 12, name: "My name")
  /// ```
  ProductControllerGetAllProducts200ResponseAllOfPayload call({
    List<ProductResponse> items,
    num pageNumber,
    num pageSize,
    num totalCount,
    num totalPages,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfProductControllerGetAllProducts200ResponseAllOfPayload.copyWith(...)` or call `instanceOfProductControllerGetAllProducts200ResponseAllOfPayload.copyWith.fieldName(value)` for a single field.
class _$ProductControllerGetAllProducts200ResponseAllOfPayloadCWProxyImpl
    implements _$ProductControllerGetAllProducts200ResponseAllOfPayloadCWProxy {
  const _$ProductControllerGetAllProducts200ResponseAllOfPayloadCWProxyImpl(
    this._value,
  );

  final ProductControllerGetAllProducts200ResponseAllOfPayload _value;

  @override
  ProductControllerGetAllProducts200ResponseAllOfPayload items(
    List<ProductResponse> items,
  ) => call(items: items);

  @override
  ProductControllerGetAllProducts200ResponseAllOfPayload pageNumber(
    num pageNumber,
  ) => call(pageNumber: pageNumber);

  @override
  ProductControllerGetAllProducts200ResponseAllOfPayload pageSize(
    num pageSize,
  ) => call(pageSize: pageSize);

  @override
  ProductControllerGetAllProducts200ResponseAllOfPayload totalCount(
    num totalCount,
  ) => call(totalCount: totalCount);

  @override
  ProductControllerGetAllProducts200ResponseAllOfPayload totalPages(
    num totalPages,
  ) => call(totalPages: totalPages);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `ProductControllerGetAllProducts200ResponseAllOfPayload(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// ProductControllerGetAllProducts200ResponseAllOfPayload(...).copyWith(id: 12, name: "My name")
  /// ```
  ProductControllerGetAllProducts200ResponseAllOfPayload call({
    Object? items = const $CopyWithPlaceholder(),
    Object? pageNumber = const $CopyWithPlaceholder(),
    Object? pageSize = const $CopyWithPlaceholder(),
    Object? totalCount = const $CopyWithPlaceholder(),
    Object? totalPages = const $CopyWithPlaceholder(),
  }) {
    return ProductControllerGetAllProducts200ResponseAllOfPayload(
      items: items == const $CopyWithPlaceholder() || items == null
          ? _value.items
          // ignore: cast_nullable_to_non_nullable
          : items as List<ProductResponse>,
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

extension $ProductControllerGetAllProducts200ResponseAllOfPayloadCopyWith
    on ProductControllerGetAllProducts200ResponseAllOfPayload {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfProductControllerGetAllProducts200ResponseAllOfPayload.copyWith(...)` or `instanceOfProductControllerGetAllProducts200ResponseAllOfPayload.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$ProductControllerGetAllProducts200ResponseAllOfPayloadCWProxy
  get copyWith =>
      _$ProductControllerGetAllProducts200ResponseAllOfPayloadCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProductControllerGetAllProducts200ResponseAllOfPayload
_$ProductControllerGetAllProducts200ResponseAllOfPayloadFromJson(
  Map<String, dynamic> json,
) => $checkedCreate(
  'ProductControllerGetAllProducts200ResponseAllOfPayload',
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
    final val = ProductControllerGetAllProducts200ResponseAllOfPayload(
      items: $checkedConvert(
        'items',
        (v) => (v as List<dynamic>)
            .map((e) => ProductResponse.fromJson(e as Map<String, dynamic>))
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
_$ProductControllerGetAllProducts200ResponseAllOfPayloadToJson(
  ProductControllerGetAllProducts200ResponseAllOfPayload instance,
) => <String, dynamic>{
  'items': instance.items.map((e) => e.toJson()).toList(),
  'pageNumber': instance.pageNumber,
  'pageSize': instance.pageSize,
  'totalCount': instance.totalCount,
  'totalPages': instance.totalPages,
};
