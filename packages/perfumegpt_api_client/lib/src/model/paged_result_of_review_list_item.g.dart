// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'paged_result_of_review_list_item.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$PagedResultOfReviewListItemCWProxy {
  PagedResultOfReviewListItem items(List<ReviewListItem> items);

  PagedResultOfReviewListItem pageNumber(int pageNumber);

  PagedResultOfReviewListItem pageSize(int pageSize);

  PagedResultOfReviewListItem totalCount(int totalCount);

  PagedResultOfReviewListItem totalPages(int totalPages);

  PagedResultOfReviewListItem hasPreviousPage(bool? hasPreviousPage);

  PagedResultOfReviewListItem hasNextPage(bool? hasNextPage);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `PagedResultOfReviewListItem(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// PagedResultOfReviewListItem(...).copyWith(id: 12, name: "My name")
  /// ```
  PagedResultOfReviewListItem call({
    List<ReviewListItem> items,
    int pageNumber,
    int pageSize,
    int totalCount,
    int totalPages,
    bool? hasPreviousPage,
    bool? hasNextPage,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfPagedResultOfReviewListItem.copyWith(...)` or call `instanceOfPagedResultOfReviewListItem.copyWith.fieldName(value)` for a single field.
class _$PagedResultOfReviewListItemCWProxyImpl
    implements _$PagedResultOfReviewListItemCWProxy {
  const _$PagedResultOfReviewListItemCWProxyImpl(this._value);

  final PagedResultOfReviewListItem _value;

  @override
  PagedResultOfReviewListItem items(List<ReviewListItem> items) =>
      call(items: items);

  @override
  PagedResultOfReviewListItem pageNumber(int pageNumber) =>
      call(pageNumber: pageNumber);

  @override
  PagedResultOfReviewListItem pageSize(int pageSize) =>
      call(pageSize: pageSize);

  @override
  PagedResultOfReviewListItem totalCount(int totalCount) =>
      call(totalCount: totalCount);

  @override
  PagedResultOfReviewListItem totalPages(int totalPages) =>
      call(totalPages: totalPages);

  @override
  PagedResultOfReviewListItem hasPreviousPage(bool? hasPreviousPage) =>
      call(hasPreviousPage: hasPreviousPage);

  @override
  PagedResultOfReviewListItem hasNextPage(bool? hasNextPage) =>
      call(hasNextPage: hasNextPage);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `PagedResultOfReviewListItem(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// PagedResultOfReviewListItem(...).copyWith(id: 12, name: "My name")
  /// ```
  PagedResultOfReviewListItem call({
    Object? items = const $CopyWithPlaceholder(),
    Object? pageNumber = const $CopyWithPlaceholder(),
    Object? pageSize = const $CopyWithPlaceholder(),
    Object? totalCount = const $CopyWithPlaceholder(),
    Object? totalPages = const $CopyWithPlaceholder(),
    Object? hasPreviousPage = const $CopyWithPlaceholder(),
    Object? hasNextPage = const $CopyWithPlaceholder(),
  }) {
    return PagedResultOfReviewListItem(
      items: items == const $CopyWithPlaceholder() || items == null
          ? _value.items
          // ignore: cast_nullable_to_non_nullable
          : items as List<ReviewListItem>,
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
      totalPages:
          totalPages == const $CopyWithPlaceholder() || totalPages == null
          ? _value.totalPages
          // ignore: cast_nullable_to_non_nullable
          : totalPages as int,
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

extension $PagedResultOfReviewListItemCopyWith on PagedResultOfReviewListItem {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfPagedResultOfReviewListItem.copyWith(...)` or `instanceOfPagedResultOfReviewListItem.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$PagedResultOfReviewListItemCWProxy get copyWith =>
      _$PagedResultOfReviewListItemCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PagedResultOfReviewListItem _$PagedResultOfReviewListItemFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('PagedResultOfReviewListItem', json, ($checkedConvert) {
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
  final val = PagedResultOfReviewListItem(
    items: $checkedConvert(
      'items',
      (v) => (v as List<dynamic>)
          .map((e) => ReviewListItem.fromJson(e as Map<String, dynamic>))
          .toList(),
    ),
    pageNumber: $checkedConvert('pageNumber', (v) => (v as num).toInt()),
    pageSize: $checkedConvert('pageSize', (v) => (v as num).toInt()),
    totalCount: $checkedConvert('totalCount', (v) => (v as num).toInt()),
    totalPages: $checkedConvert('totalPages', (v) => (v as num).toInt()),
    hasPreviousPage: $checkedConvert('hasPreviousPage', (v) => v as bool?),
    hasNextPage: $checkedConvert('hasNextPage', (v) => v as bool?),
  );
  return val;
});

Map<String, dynamic> _$PagedResultOfReviewListItemToJson(
  PagedResultOfReviewListItem instance,
) => <String, dynamic>{
  'items': instance.items.map((e) => e.toJson()).toList(),
  'pageNumber': instance.pageNumber,
  'pageSize': instance.pageSize,
  'totalCount': instance.totalCount,
  'totalPages': instance.totalPages,
  'hasPreviousPage': ?instance.hasPreviousPage,
  'hasNextPage': ?instance.hasNextPage,
};
