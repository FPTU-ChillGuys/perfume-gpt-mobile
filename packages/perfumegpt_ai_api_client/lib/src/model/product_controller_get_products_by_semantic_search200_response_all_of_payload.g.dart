// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_controller_get_products_by_semantic_search200_response_all_of_payload.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$ProductControllerGetProductsBySemanticSearch200ResponseAllOfPayloadCWProxy {
  ProductControllerGetProductsBySemanticSearch200ResponseAllOfPayload items(
    List<ProductWithVariantsResponse> items,
  );

  ProductControllerGetProductsBySemanticSearch200ResponseAllOfPayload
  pageNumber(num pageNumber);

  ProductControllerGetProductsBySemanticSearch200ResponseAllOfPayload pageSize(
    num pageSize,
  );

  ProductControllerGetProductsBySemanticSearch200ResponseAllOfPayload
  totalCount(num totalCount);

  ProductControllerGetProductsBySemanticSearch200ResponseAllOfPayload
  totalPages(num totalPages);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `ProductControllerGetProductsBySemanticSearch200ResponseAllOfPayload(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// ProductControllerGetProductsBySemanticSearch200ResponseAllOfPayload(...).copyWith(id: 12, name: "My name")
  /// ```
  ProductControllerGetProductsBySemanticSearch200ResponseAllOfPayload call({
    List<ProductWithVariantsResponse> items,
    num pageNumber,
    num pageSize,
    num totalCount,
    num totalPages,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfProductControllerGetProductsBySemanticSearch200ResponseAllOfPayload.copyWith(...)` or call `instanceOfProductControllerGetProductsBySemanticSearch200ResponseAllOfPayload.copyWith.fieldName(value)` for a single field.
class _$ProductControllerGetProductsBySemanticSearch200ResponseAllOfPayloadCWProxyImpl
    implements
        _$ProductControllerGetProductsBySemanticSearch200ResponseAllOfPayloadCWProxy {
  const _$ProductControllerGetProductsBySemanticSearch200ResponseAllOfPayloadCWProxyImpl(
    this._value,
  );

  final ProductControllerGetProductsBySemanticSearch200ResponseAllOfPayload
  _value;

  @override
  ProductControllerGetProductsBySemanticSearch200ResponseAllOfPayload items(
    List<ProductWithVariantsResponse> items,
  ) => call(items: items);

  @override
  ProductControllerGetProductsBySemanticSearch200ResponseAllOfPayload
  pageNumber(num pageNumber) => call(pageNumber: pageNumber);

  @override
  ProductControllerGetProductsBySemanticSearch200ResponseAllOfPayload pageSize(
    num pageSize,
  ) => call(pageSize: pageSize);

  @override
  ProductControllerGetProductsBySemanticSearch200ResponseAllOfPayload
  totalCount(num totalCount) => call(totalCount: totalCount);

  @override
  ProductControllerGetProductsBySemanticSearch200ResponseAllOfPayload
  totalPages(num totalPages) => call(totalPages: totalPages);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `ProductControllerGetProductsBySemanticSearch200ResponseAllOfPayload(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// ProductControllerGetProductsBySemanticSearch200ResponseAllOfPayload(...).copyWith(id: 12, name: "My name")
  /// ```
  ProductControllerGetProductsBySemanticSearch200ResponseAllOfPayload call({
    Object? items = const $CopyWithPlaceholder(),
    Object? pageNumber = const $CopyWithPlaceholder(),
    Object? pageSize = const $CopyWithPlaceholder(),
    Object? totalCount = const $CopyWithPlaceholder(),
    Object? totalPages = const $CopyWithPlaceholder(),
  }) {
    return ProductControllerGetProductsBySemanticSearch200ResponseAllOfPayload(
      items: items == const $CopyWithPlaceholder() || items == null
          ? _value.items
          // ignore: cast_nullable_to_non_nullable
          : items as List<ProductWithVariantsResponse>,
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

extension $ProductControllerGetProductsBySemanticSearch200ResponseAllOfPayloadCopyWith
    on ProductControllerGetProductsBySemanticSearch200ResponseAllOfPayload {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfProductControllerGetProductsBySemanticSearch200ResponseAllOfPayload.copyWith(...)` or `instanceOfProductControllerGetProductsBySemanticSearch200ResponseAllOfPayload.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$ProductControllerGetProductsBySemanticSearch200ResponseAllOfPayloadCWProxy
  get copyWith =>
      _$ProductControllerGetProductsBySemanticSearch200ResponseAllOfPayloadCWProxyImpl(
        this,
      );
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProductControllerGetProductsBySemanticSearch200ResponseAllOfPayload
_$ProductControllerGetProductsBySemanticSearch200ResponseAllOfPayloadFromJson(
  Map<String, dynamic> json,
) => $checkedCreate(
  'ProductControllerGetProductsBySemanticSearch200ResponseAllOfPayload',
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
        ProductControllerGetProductsBySemanticSearch200ResponseAllOfPayload(
          items: $checkedConvert(
            'items',
            (v) => (v as List<dynamic>)
                .map(
                  (e) => ProductWithVariantsResponse.fromJson(
                    e as Map<String, dynamic>,
                  ),
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
_$ProductControllerGetProductsBySemanticSearch200ResponseAllOfPayloadToJson(
  ProductControllerGetProductsBySemanticSearch200ResponseAllOfPayload instance,
) => <String, dynamic>{
  'items': instance.items.map((e) => e.toJson()).toList(),
  'pageNumber': instance.pageNumber,
  'pageSize': instance.pageSize,
  'totalCount': instance.totalCount,
  'totalPages': instance.totalPages,
};
