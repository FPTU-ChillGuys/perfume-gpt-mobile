// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_controller_get_products_by_semantic_search200_response_payload.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$ProductControllerGetProductsBySemanticSearch200ResponsePayloadCWProxy {
  ProductControllerGetProductsBySemanticSearch200ResponsePayload items(
    List<ProductWithVariantsResponse> items,
  );

  ProductControllerGetProductsBySemanticSearch200ResponsePayload pageNumber(
    num pageNumber,
  );

  ProductControllerGetProductsBySemanticSearch200ResponsePayload pageSize(
    num pageSize,
  );

  ProductControllerGetProductsBySemanticSearch200ResponsePayload totalCount(
    num totalCount,
  );

  ProductControllerGetProductsBySemanticSearch200ResponsePayload totalPages(
    num totalPages,
  );

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `ProductControllerGetProductsBySemanticSearch200ResponsePayload(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// ProductControllerGetProductsBySemanticSearch200ResponsePayload(...).copyWith(id: 12, name: "My name")
  /// ```
  ProductControllerGetProductsBySemanticSearch200ResponsePayload call({
    List<ProductWithVariantsResponse> items,
    num pageNumber,
    num pageSize,
    num totalCount,
    num totalPages,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfProductControllerGetProductsBySemanticSearch200ResponsePayload.copyWith(...)` or call `instanceOfProductControllerGetProductsBySemanticSearch200ResponsePayload.copyWith.fieldName(value)` for a single field.
class _$ProductControllerGetProductsBySemanticSearch200ResponsePayloadCWProxyImpl
    implements
        _$ProductControllerGetProductsBySemanticSearch200ResponsePayloadCWProxy {
  const _$ProductControllerGetProductsBySemanticSearch200ResponsePayloadCWProxyImpl(
    this._value,
  );

  final ProductControllerGetProductsBySemanticSearch200ResponsePayload _value;

  @override
  ProductControllerGetProductsBySemanticSearch200ResponsePayload items(
    List<ProductWithVariantsResponse> items,
  ) => call(items: items);

  @override
  ProductControllerGetProductsBySemanticSearch200ResponsePayload pageNumber(
    num pageNumber,
  ) => call(pageNumber: pageNumber);

  @override
  ProductControllerGetProductsBySemanticSearch200ResponsePayload pageSize(
    num pageSize,
  ) => call(pageSize: pageSize);

  @override
  ProductControllerGetProductsBySemanticSearch200ResponsePayload totalCount(
    num totalCount,
  ) => call(totalCount: totalCount);

  @override
  ProductControllerGetProductsBySemanticSearch200ResponsePayload totalPages(
    num totalPages,
  ) => call(totalPages: totalPages);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `ProductControllerGetProductsBySemanticSearch200ResponsePayload(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// ProductControllerGetProductsBySemanticSearch200ResponsePayload(...).copyWith(id: 12, name: "My name")
  /// ```
  ProductControllerGetProductsBySemanticSearch200ResponsePayload call({
    Object? items = const $CopyWithPlaceholder(),
    Object? pageNumber = const $CopyWithPlaceholder(),
    Object? pageSize = const $CopyWithPlaceholder(),
    Object? totalCount = const $CopyWithPlaceholder(),
    Object? totalPages = const $CopyWithPlaceholder(),
  }) {
    return ProductControllerGetProductsBySemanticSearch200ResponsePayload(
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

extension $ProductControllerGetProductsBySemanticSearch200ResponsePayloadCopyWith
    on ProductControllerGetProductsBySemanticSearch200ResponsePayload {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfProductControllerGetProductsBySemanticSearch200ResponsePayload.copyWith(...)` or `instanceOfProductControllerGetProductsBySemanticSearch200ResponsePayload.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$ProductControllerGetProductsBySemanticSearch200ResponsePayloadCWProxy
  get copyWith =>
      _$ProductControllerGetProductsBySemanticSearch200ResponsePayloadCWProxyImpl(
        this,
      );
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProductControllerGetProductsBySemanticSearch200ResponsePayload
_$ProductControllerGetProductsBySemanticSearch200ResponsePayloadFromJson(
  Map<String, dynamic> json,
) => $checkedCreate(
  'ProductControllerGetProductsBySemanticSearch200ResponsePayload',
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
    final val = ProductControllerGetProductsBySemanticSearch200ResponsePayload(
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
_$ProductControllerGetProductsBySemanticSearch200ResponsePayloadToJson(
  ProductControllerGetProductsBySemanticSearch200ResponsePayload instance,
) => <String, dynamic>{
  'items': instance.items.map((e) => e.toJson()).toList(),
  'pageNumber': instance.pageNumber,
  'pageSize': instance.pageSize,
  'totalCount': instance.totalCount,
  'totalPages': instance.totalPages,
};
