// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'paged_result_of_product_list_item_with_variants.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$PagedResultOfProductListItemWithVariantsCWProxy {
  PagedResultOfProductListItemWithVariants items(
    List<ProductListItemWithVariants> items,
  );

  PagedResultOfProductListItemWithVariants pageNumber(int pageNumber);

  PagedResultOfProductListItemWithVariants pageSize(int pageSize);

  PagedResultOfProductListItemWithVariants totalCount(int totalCount);

  PagedResultOfProductListItemWithVariants totalPages(int totalPages);

  PagedResultOfProductListItemWithVariants hasPreviousPage(
    bool? hasPreviousPage,
  );

  PagedResultOfProductListItemWithVariants hasNextPage(bool? hasNextPage);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `PagedResultOfProductListItemWithVariants(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// PagedResultOfProductListItemWithVariants(...).copyWith(id: 12, name: "My name")
  /// ````
  PagedResultOfProductListItemWithVariants call({
    List<ProductListItemWithVariants> items,
    int pageNumber,
    int pageSize,
    int totalCount,
    int totalPages,
    bool? hasPreviousPage,
    bool? hasNextPage,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfPagedResultOfProductListItemWithVariants.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfPagedResultOfProductListItemWithVariants.copyWith.fieldName(...)`
class _$PagedResultOfProductListItemWithVariantsCWProxyImpl
    implements _$PagedResultOfProductListItemWithVariantsCWProxy {
  const _$PagedResultOfProductListItemWithVariantsCWProxyImpl(this._value);

  final PagedResultOfProductListItemWithVariants _value;

  @override
  PagedResultOfProductListItemWithVariants items(
    List<ProductListItemWithVariants> items,
  ) => this(items: items);

  @override
  PagedResultOfProductListItemWithVariants pageNumber(int pageNumber) =>
      this(pageNumber: pageNumber);

  @override
  PagedResultOfProductListItemWithVariants pageSize(int pageSize) =>
      this(pageSize: pageSize);

  @override
  PagedResultOfProductListItemWithVariants totalCount(int totalCount) =>
      this(totalCount: totalCount);

  @override
  PagedResultOfProductListItemWithVariants totalPages(int totalPages) =>
      this(totalPages: totalPages);

  @override
  PagedResultOfProductListItemWithVariants hasPreviousPage(
    bool? hasPreviousPage,
  ) => this(hasPreviousPage: hasPreviousPage);

  @override
  PagedResultOfProductListItemWithVariants hasNextPage(bool? hasNextPage) =>
      this(hasNextPage: hasNextPage);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `PagedResultOfProductListItemWithVariants(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// PagedResultOfProductListItemWithVariants(...).copyWith(id: 12, name: "My name")
  /// ````
  PagedResultOfProductListItemWithVariants call({
    Object? items = const $CopyWithPlaceholder(),
    Object? pageNumber = const $CopyWithPlaceholder(),
    Object? pageSize = const $CopyWithPlaceholder(),
    Object? totalCount = const $CopyWithPlaceholder(),
    Object? totalPages = const $CopyWithPlaceholder(),
    Object? hasPreviousPage = const $CopyWithPlaceholder(),
    Object? hasNextPage = const $CopyWithPlaceholder(),
  }) {
    return PagedResultOfProductListItemWithVariants(
      items: items == const $CopyWithPlaceholder()
          ? _value.items
          // ignore: cast_nullable_to_non_nullable
          : items as List<ProductListItemWithVariants>,
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

extension $PagedResultOfProductListItemWithVariantsCopyWith
    on PagedResultOfProductListItemWithVariants {
  /// Returns a callable class that can be used as follows: `instanceOfPagedResultOfProductListItemWithVariants.copyWith(...)` or like so:`instanceOfPagedResultOfProductListItemWithVariants.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$PagedResultOfProductListItemWithVariantsCWProxy get copyWith =>
      _$PagedResultOfProductListItemWithVariantsCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PagedResultOfProductListItemWithVariants
_$PagedResultOfProductListItemWithVariantsFromJson(Map<String, dynamic> json) =>
    $checkedCreate('PagedResultOfProductListItemWithVariants', json, (
      $checkedConvert,
    ) {
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
      final val = PagedResultOfProductListItemWithVariants(
        items: $checkedConvert(
          'items',
          (v) => (v as List<dynamic>)
              .map(
                (e) => ProductListItemWithVariants.fromJson(
                  e as Map<String, dynamic>,
                ),
              )
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

Map<String, dynamic> _$PagedResultOfProductListItemWithVariantsToJson(
  PagedResultOfProductListItemWithVariants instance,
) => <String, dynamic>{
  'items': instance.items.map((e) => e.toJson()).toList(),
  'pageNumber': instance.pageNumber,
  'pageSize': instance.pageSize,
  'totalCount': instance.totalCount,
  'totalPages': instance.totalPages,
  'hasPreviousPage': ?instance.hasPreviousPage,
  'hasNextPage': ?instance.hasNextPage,
};
