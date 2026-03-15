// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'paged_result_of_product_list_item.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$PagedResultOfProductListItemCWProxy {
  PagedResultOfProductListItem items(List<ProductListItem> items);

  PagedResultOfProductListItem pageNumber(int pageNumber);

  PagedResultOfProductListItem pageSize(int pageSize);

  PagedResultOfProductListItem totalCount(int totalCount);

  PagedResultOfProductListItem totalPages(int totalPages);

  PagedResultOfProductListItem hasPreviousPage(bool? hasPreviousPage);

  PagedResultOfProductListItem hasNextPage(bool? hasNextPage);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `PagedResultOfProductListItem(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// PagedResultOfProductListItem(...).copyWith(id: 12, name: "My name")
  /// ````
  PagedResultOfProductListItem call({
    List<ProductListItem> items,
    int pageNumber,
    int pageSize,
    int totalCount,
    int totalPages,
    bool? hasPreviousPage,
    bool? hasNextPage,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfPagedResultOfProductListItem.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfPagedResultOfProductListItem.copyWith.fieldName(...)`
class _$PagedResultOfProductListItemCWProxyImpl
    implements _$PagedResultOfProductListItemCWProxy {
  const _$PagedResultOfProductListItemCWProxyImpl(this._value);

  final PagedResultOfProductListItem _value;

  @override
  PagedResultOfProductListItem items(List<ProductListItem> items) =>
      this(items: items);

  @override
  PagedResultOfProductListItem pageNumber(int pageNumber) =>
      this(pageNumber: pageNumber);

  @override
  PagedResultOfProductListItem pageSize(int pageSize) =>
      this(pageSize: pageSize);

  @override
  PagedResultOfProductListItem totalCount(int totalCount) =>
      this(totalCount: totalCount);

  @override
  PagedResultOfProductListItem totalPages(int totalPages) =>
      this(totalPages: totalPages);

  @override
  PagedResultOfProductListItem hasPreviousPage(bool? hasPreviousPage) =>
      this(hasPreviousPage: hasPreviousPage);

  @override
  PagedResultOfProductListItem hasNextPage(bool? hasNextPage) =>
      this(hasNextPage: hasNextPage);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `PagedResultOfProductListItem(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// PagedResultOfProductListItem(...).copyWith(id: 12, name: "My name")
  /// ````
  PagedResultOfProductListItem call({
    Object? items = const $CopyWithPlaceholder(),
    Object? pageNumber = const $CopyWithPlaceholder(),
    Object? pageSize = const $CopyWithPlaceholder(),
    Object? totalCount = const $CopyWithPlaceholder(),
    Object? totalPages = const $CopyWithPlaceholder(),
    Object? hasPreviousPage = const $CopyWithPlaceholder(),
    Object? hasNextPage = const $CopyWithPlaceholder(),
  }) {
    return PagedResultOfProductListItem(
      items: items == const $CopyWithPlaceholder()
          ? _value.items
          // ignore: cast_nullable_to_non_nullable
          : items as List<ProductListItem>,
      pageNumber: pageNumber == const $CopyWithPlaceholder()
          ? _value.pageNumber
          // ignore: cast_nullable_to_non_nullable
          : pageNumber as int,
      pageSize: pageSize == const $CopyWithPlaceholder()
          ? _value.pageSize
          // ignore: cast_nullable_to_non_nullable
          : pageSize as int,
      totalCount: totalCount == const $CopyWithPlaceholder()
          ? _value.totalCount
          // ignore: cast_nullable_to_non_nullable
          : totalCount as int,
      totalPages: totalPages == const $CopyWithPlaceholder()
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

extension $PagedResultOfProductListItemCopyWith
    on PagedResultOfProductListItem {
  /// Returns a callable class that can be used as follows: `instanceOfPagedResultOfProductListItem.copyWith(...)` or like so:`instanceOfPagedResultOfProductListItem.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$PagedResultOfProductListItemCWProxy get copyWith =>
      _$PagedResultOfProductListItemCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PagedResultOfProductListItem _$PagedResultOfProductListItemFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('PagedResultOfProductListItem', json, ($checkedConvert) {
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
  final val = PagedResultOfProductListItem(
    items: $checkedConvert(
      'items',
      (v) => (v as List<dynamic>)
          .map((e) => ProductListItem.fromJson(e as Map<String, dynamic>))
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

Map<String, dynamic> _$PagedResultOfProductListItemToJson(
  PagedResultOfProductListItem instance,
) => <String, dynamic>{
  'items': instance.items.map((e) => e.toJson()).toList(),
  'pageNumber': instance.pageNumber,
  'pageSize': instance.pageSize,
  'totalCount': instance.totalCount,
  'totalPages': instance.totalPages,
  'hasPreviousPage': ?instance.hasPreviousPage,
  'hasNextPage': ?instance.hasNextPage,
};
