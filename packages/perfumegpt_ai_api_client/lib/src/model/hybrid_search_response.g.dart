// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hybrid_search_response.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$HybridSearchResponseCWProxy {
  HybridSearchResponse items(List<ProductWithVariantsResponse> items);

  HybridSearchResponse pageNumber(num pageNumber);

  HybridSearchResponse pageSize(num pageSize);

  HybridSearchResponse totalCount(num totalCount);

  HybridSearchResponse totalPages(num totalPages);

  HybridSearchResponse queryFilters(NormalizedQueryFilters? queryFilters);

  HybridSearchResponse vectorSimilarity(bool vectorSimilarity);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `HybridSearchResponse(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// HybridSearchResponse(...).copyWith(id: 12, name: "My name")
  /// ```
  HybridSearchResponse call({
    List<ProductWithVariantsResponse> items,
    num pageNumber,
    num pageSize,
    num totalCount,
    num totalPages,
    NormalizedQueryFilters? queryFilters,
    bool vectorSimilarity,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfHybridSearchResponse.copyWith(...)` or call `instanceOfHybridSearchResponse.copyWith.fieldName(value)` for a single field.
class _$HybridSearchResponseCWProxyImpl
    implements _$HybridSearchResponseCWProxy {
  const _$HybridSearchResponseCWProxyImpl(this._value);

  final HybridSearchResponse _value;

  @override
  HybridSearchResponse items(List<ProductWithVariantsResponse> items) =>
      call(items: items);

  @override
  HybridSearchResponse pageNumber(num pageNumber) =>
      call(pageNumber: pageNumber);

  @override
  HybridSearchResponse pageSize(num pageSize) => call(pageSize: pageSize);

  @override
  HybridSearchResponse totalCount(num totalCount) =>
      call(totalCount: totalCount);

  @override
  HybridSearchResponse totalPages(num totalPages) =>
      call(totalPages: totalPages);

  @override
  HybridSearchResponse queryFilters(NormalizedQueryFilters? queryFilters) =>
      call(queryFilters: queryFilters);

  @override
  HybridSearchResponse vectorSimilarity(bool vectorSimilarity) =>
      call(vectorSimilarity: vectorSimilarity);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `HybridSearchResponse(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// HybridSearchResponse(...).copyWith(id: 12, name: "My name")
  /// ```
  HybridSearchResponse call({
    Object? items = const $CopyWithPlaceholder(),
    Object? pageNumber = const $CopyWithPlaceholder(),
    Object? pageSize = const $CopyWithPlaceholder(),
    Object? totalCount = const $CopyWithPlaceholder(),
    Object? totalPages = const $CopyWithPlaceholder(),
    Object? queryFilters = const $CopyWithPlaceholder(),
    Object? vectorSimilarity = const $CopyWithPlaceholder(),
  }) {
    return HybridSearchResponse(
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
      queryFilters: queryFilters == const $CopyWithPlaceholder()
          ? _value.queryFilters
          // ignore: cast_nullable_to_non_nullable
          : queryFilters as NormalizedQueryFilters?,
      vectorSimilarity:
          vectorSimilarity == const $CopyWithPlaceholder() ||
              vectorSimilarity == null
          ? _value.vectorSimilarity
          // ignore: cast_nullable_to_non_nullable
          : vectorSimilarity as bool,
    );
  }
}

extension $HybridSearchResponseCopyWith on HybridSearchResponse {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfHybridSearchResponse.copyWith(...)` or `instanceOfHybridSearchResponse.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$HybridSearchResponseCWProxy get copyWith =>
      _$HybridSearchResponseCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HybridSearchResponse _$HybridSearchResponseFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('HybridSearchResponse', json, ($checkedConvert) {
  $checkKeys(
    json,
    requiredKeys: const [
      'items',
      'pageNumber',
      'pageSize',
      'totalCount',
      'totalPages',
      'vectorSimilarity',
    ],
  );
  final val = HybridSearchResponse(
    items: $checkedConvert(
      'items',
      (v) => (v as List<dynamic>)
          .map(
            (e) =>
                ProductWithVariantsResponse.fromJson(e as Map<String, dynamic>),
          )
          .toList(),
    ),
    pageNumber: $checkedConvert('pageNumber', (v) => v as num),
    pageSize: $checkedConvert('pageSize', (v) => v as num),
    totalCount: $checkedConvert('totalCount', (v) => v as num),
    totalPages: $checkedConvert('totalPages', (v) => v as num),
    queryFilters: $checkedConvert(
      'queryFilters',
      (v) => v == null
          ? null
          : NormalizedQueryFilters.fromJson(v as Map<String, dynamic>),
    ),
    vectorSimilarity: $checkedConvert('vectorSimilarity', (v) => v as bool),
  );
  return val;
});

Map<String, dynamic> _$HybridSearchResponseToJson(
  HybridSearchResponse instance,
) => <String, dynamic>{
  'items': instance.items.map((e) => e.toJson()).toList(),
  'pageNumber': instance.pageNumber,
  'pageSize': instance.pageSize,
  'totalCount': instance.totalCount,
  'totalPages': instance.totalPages,
  'queryFilters': ?instance.queryFilters?.toJson(),
  'vectorSimilarity': instance.vectorSimilarity,
};
