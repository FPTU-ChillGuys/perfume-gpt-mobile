// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'paged_result_of_variant_paged_item.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$PagedResultOfVariantPagedItemCWProxy {
  PagedResultOfVariantPagedItem items(List<VariantPagedItem> items);

  PagedResultOfVariantPagedItem pageNumber(int pageNumber);

  PagedResultOfVariantPagedItem pageSize(int pageSize);

  PagedResultOfVariantPagedItem totalCount(int totalCount);

  PagedResultOfVariantPagedItem totalPages(int totalPages);

  PagedResultOfVariantPagedItem hasPreviousPage(bool? hasPreviousPage);

  PagedResultOfVariantPagedItem hasNextPage(bool? hasNextPage);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `PagedResultOfVariantPagedItem(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// PagedResultOfVariantPagedItem(...).copyWith(id: 12, name: "My name")
  /// ````
  PagedResultOfVariantPagedItem call({
    List<VariantPagedItem> items,
    int pageNumber,
    int pageSize,
    int totalCount,
    int totalPages,
    bool? hasPreviousPage,
    bool? hasNextPage,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfPagedResultOfVariantPagedItem.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfPagedResultOfVariantPagedItem.copyWith.fieldName(...)`
class _$PagedResultOfVariantPagedItemCWProxyImpl
    implements _$PagedResultOfVariantPagedItemCWProxy {
  const _$PagedResultOfVariantPagedItemCWProxyImpl(this._value);

  final PagedResultOfVariantPagedItem _value;

  @override
  PagedResultOfVariantPagedItem items(List<VariantPagedItem> items) =>
      this(items: items);

  @override
  PagedResultOfVariantPagedItem pageNumber(int pageNumber) =>
      this(pageNumber: pageNumber);

  @override
  PagedResultOfVariantPagedItem pageSize(int pageSize) =>
      this(pageSize: pageSize);

  @override
  PagedResultOfVariantPagedItem totalCount(int totalCount) =>
      this(totalCount: totalCount);

  @override
  PagedResultOfVariantPagedItem totalPages(int totalPages) =>
      this(totalPages: totalPages);

  @override
  PagedResultOfVariantPagedItem hasPreviousPage(bool? hasPreviousPage) =>
      this(hasPreviousPage: hasPreviousPage);

  @override
  PagedResultOfVariantPagedItem hasNextPage(bool? hasNextPage) =>
      this(hasNextPage: hasNextPage);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `PagedResultOfVariantPagedItem(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// PagedResultOfVariantPagedItem(...).copyWith(id: 12, name: "My name")
  /// ````
  PagedResultOfVariantPagedItem call({
    Object? items = const $CopyWithPlaceholder(),
    Object? pageNumber = const $CopyWithPlaceholder(),
    Object? pageSize = const $CopyWithPlaceholder(),
    Object? totalCount = const $CopyWithPlaceholder(),
    Object? totalPages = const $CopyWithPlaceholder(),
    Object? hasPreviousPage = const $CopyWithPlaceholder(),
    Object? hasNextPage = const $CopyWithPlaceholder(),
  }) {
    return PagedResultOfVariantPagedItem(
      items: items == const $CopyWithPlaceholder()
          ? _value.items
          // ignore: cast_nullable_to_non_nullable
          : items as List<VariantPagedItem>,
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

extension $PagedResultOfVariantPagedItemCopyWith
    on PagedResultOfVariantPagedItem {
  /// Returns a callable class that can be used as follows: `instanceOfPagedResultOfVariantPagedItem.copyWith(...)` or like so:`instanceOfPagedResultOfVariantPagedItem.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$PagedResultOfVariantPagedItemCWProxy get copyWith =>
      _$PagedResultOfVariantPagedItemCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PagedResultOfVariantPagedItem _$PagedResultOfVariantPagedItemFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('PagedResultOfVariantPagedItem', json, ($checkedConvert) {
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
  final val = PagedResultOfVariantPagedItem(
    items: $checkedConvert(
      'items',
      (v) => (v as List<dynamic>)
          .map((e) => VariantPagedItem.fromJson(e as Map<String, dynamic>))
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

Map<String, dynamic> _$PagedResultOfVariantPagedItemToJson(
  PagedResultOfVariantPagedItem instance,
) => <String, dynamic>{
  'items': instance.items.map((e) => e.toJson()).toList(),
  'pageNumber': instance.pageNumber,
  'pageSize': instance.pageSize,
  'totalCount': instance.totalCount,
  'totalPages': instance.totalPages,
  'hasPreviousPage': ?instance.hasPreviousPage,
  'hasNextPage': ?instance.hasNextPage,
};
