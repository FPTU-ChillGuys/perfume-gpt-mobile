// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'paged_result_of_page_response.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$PagedResultOfPageResponseCWProxy {
  PagedResultOfPageResponse items(List<PageResponse> items);

  PagedResultOfPageResponse pageNumber(int pageNumber);

  PagedResultOfPageResponse pageSize(int pageSize);

  PagedResultOfPageResponse totalCount(int totalCount);

  PagedResultOfPageResponse totalPages(int? totalPages);

  PagedResultOfPageResponse hasPreviousPage(bool? hasPreviousPage);

  PagedResultOfPageResponse hasNextPage(bool? hasNextPage);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `PagedResultOfPageResponse(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// PagedResultOfPageResponse(...).copyWith(id: 12, name: "My name")
  /// ```
  PagedResultOfPageResponse call({
    List<PageResponse> items,
    int pageNumber,
    int pageSize,
    int totalCount,
    int? totalPages,
    bool? hasPreviousPage,
    bool? hasNextPage,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfPagedResultOfPageResponse.copyWith(...)` or call `instanceOfPagedResultOfPageResponse.copyWith.fieldName(value)` for a single field.
class _$PagedResultOfPageResponseCWProxyImpl
    implements _$PagedResultOfPageResponseCWProxy {
  const _$PagedResultOfPageResponseCWProxyImpl(this._value);

  final PagedResultOfPageResponse _value;

  @override
  PagedResultOfPageResponse items(List<PageResponse> items) =>
      call(items: items);

  @override
  PagedResultOfPageResponse pageNumber(int pageNumber) =>
      call(pageNumber: pageNumber);

  @override
  PagedResultOfPageResponse pageSize(int pageSize) => call(pageSize: pageSize);

  @override
  PagedResultOfPageResponse totalCount(int totalCount) =>
      call(totalCount: totalCount);

  @override
  PagedResultOfPageResponse totalPages(int? totalPages) =>
      call(totalPages: totalPages);

  @override
  PagedResultOfPageResponse hasPreviousPage(bool? hasPreviousPage) =>
      call(hasPreviousPage: hasPreviousPage);

  @override
  PagedResultOfPageResponse hasNextPage(bool? hasNextPage) =>
      call(hasNextPage: hasNextPage);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `PagedResultOfPageResponse(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// PagedResultOfPageResponse(...).copyWith(id: 12, name: "My name")
  /// ```
  PagedResultOfPageResponse call({
    Object? items = const $CopyWithPlaceholder(),
    Object? pageNumber = const $CopyWithPlaceholder(),
    Object? pageSize = const $CopyWithPlaceholder(),
    Object? totalCount = const $CopyWithPlaceholder(),
    Object? totalPages = const $CopyWithPlaceholder(),
    Object? hasPreviousPage = const $CopyWithPlaceholder(),
    Object? hasNextPage = const $CopyWithPlaceholder(),
  }) {
    return PagedResultOfPageResponse(
      items: items == const $CopyWithPlaceholder() || items == null
          ? _value.items
          // ignore: cast_nullable_to_non_nullable
          : items as List<PageResponse>,
      pageNumber:
          pageNumber == const $CopyWithPlaceholder() || pageNumber == null
          ? _value.pageNumber
          // ignore: cast_nullable_to_non_nullable
          : pageNumber as int,
      pageSize: pageSize == const $CopyWithPlaceholder() || pageSize == null
          ? _value.pageSize
          // ignore: cast_nullable_to_non_nullable
          : pageSize as int,
      totalCount:
          totalCount == const $CopyWithPlaceholder() || totalCount == null
          ? _value.totalCount
          // ignore: cast_nullable_to_non_nullable
          : totalCount as int,
      totalPages: totalPages == const $CopyWithPlaceholder()
          ? _value.totalPages
          // ignore: cast_nullable_to_non_nullable
          : totalPages as int?,
      hasPreviousPage: hasPreviousPage == const $CopyWithPlaceholder()
          ? _value.hasPreviousPage
          // ignore: cast_nullable_to_non_nullable
          : hasPreviousPage as bool?,
      hasNextPage: hasNextPage == const $CopyWithPlaceholder()
          ? _value.hasNextPage
          // ignore: cast_nullable_to_non_nullable
          : hasNextPage as bool?,
    );
  }
}

extension $PagedResultOfPageResponseCopyWith on PagedResultOfPageResponse {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfPagedResultOfPageResponse.copyWith(...)` or `instanceOfPagedResultOfPageResponse.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$PagedResultOfPageResponseCWProxy get copyWith =>
      _$PagedResultOfPageResponseCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PagedResultOfPageResponse _$PagedResultOfPageResponseFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('PagedResultOfPageResponse', json, ($checkedConvert) {
  $checkKeys(
    json,
    requiredKeys: const ['items', 'pageNumber', 'pageSize', 'totalCount'],
  );
  final val = PagedResultOfPageResponse(
    items: $checkedConvert(
      'items',
      (v) => (v as List<dynamic>)
          .map((e) => PageResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
    ),
    pageNumber: $checkedConvert('pageNumber', (v) => (v as num).toInt()),
    pageSize: $checkedConvert('pageSize', (v) => (v as num).toInt()),
    totalCount: $checkedConvert('totalCount', (v) => (v as num).toInt()),
    totalPages: $checkedConvert('totalPages', (v) => (v as num?)?.toInt()),
    hasPreviousPage: $checkedConvert('hasPreviousPage', (v) => v as bool?),
    hasNextPage: $checkedConvert('hasNextPage', (v) => v as bool?),
  );
  return val;
});

Map<String, dynamic> _$PagedResultOfPageResponseToJson(
  PagedResultOfPageResponse instance,
) => <String, dynamic>{
  'items': instance.items.map((e) => e.toJson()).toList(),
  'pageNumber': instance.pageNumber,
  'pageSize': instance.pageSize,
  'totalCount': instance.totalCount,
  'totalPages': ?instance.totalPages,
  'hasPreviousPage': ?instance.hasPreviousPage,
  'hasNextPage': ?instance.hasNextPage,
};
