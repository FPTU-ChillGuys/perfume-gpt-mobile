// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'paged_result_of_stock_adjustment_list_item.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$PagedResultOfStockAdjustmentListItemCWProxy {
  PagedResultOfStockAdjustmentListItem items(
    List<StockAdjustmentListItem> items,
  );

  PagedResultOfStockAdjustmentListItem pageNumber(int pageNumber);

  PagedResultOfStockAdjustmentListItem pageSize(int pageSize);

  PagedResultOfStockAdjustmentListItem totalCount(int totalCount);

  PagedResultOfStockAdjustmentListItem totalPages(int? totalPages);

  PagedResultOfStockAdjustmentListItem hasPreviousPage(bool? hasPreviousPage);

  PagedResultOfStockAdjustmentListItem hasNextPage(bool? hasNextPage);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `PagedResultOfStockAdjustmentListItem(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// PagedResultOfStockAdjustmentListItem(...).copyWith(id: 12, name: "My name")
  /// ```
  PagedResultOfStockAdjustmentListItem call({
    List<StockAdjustmentListItem> items,
    int pageNumber,
    int pageSize,
    int totalCount,
    int? totalPages,
    bool? hasPreviousPage,
    bool? hasNextPage,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfPagedResultOfStockAdjustmentListItem.copyWith(...)` or call `instanceOfPagedResultOfStockAdjustmentListItem.copyWith.fieldName(value)` for a single field.
class _$PagedResultOfStockAdjustmentListItemCWProxyImpl
    implements _$PagedResultOfStockAdjustmentListItemCWProxy {
  const _$PagedResultOfStockAdjustmentListItemCWProxyImpl(this._value);

  final PagedResultOfStockAdjustmentListItem _value;

  @override
  PagedResultOfStockAdjustmentListItem items(
    List<StockAdjustmentListItem> items,
  ) => call(items: items);

  @override
  PagedResultOfStockAdjustmentListItem pageNumber(int pageNumber) =>
      call(pageNumber: pageNumber);

  @override
  PagedResultOfStockAdjustmentListItem pageSize(int pageSize) =>
      call(pageSize: pageSize);

  @override
  PagedResultOfStockAdjustmentListItem totalCount(int totalCount) =>
      call(totalCount: totalCount);

  @override
  PagedResultOfStockAdjustmentListItem totalPages(int? totalPages) =>
      call(totalPages: totalPages);

  @override
  PagedResultOfStockAdjustmentListItem hasPreviousPage(bool? hasPreviousPage) =>
      call(hasPreviousPage: hasPreviousPage);

  @override
  PagedResultOfStockAdjustmentListItem hasNextPage(bool? hasNextPage) =>
      call(hasNextPage: hasNextPage);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `PagedResultOfStockAdjustmentListItem(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// PagedResultOfStockAdjustmentListItem(...).copyWith(id: 12, name: "My name")
  /// ```
  PagedResultOfStockAdjustmentListItem call({
    Object? items = const $CopyWithPlaceholder(),
    Object? pageNumber = const $CopyWithPlaceholder(),
    Object? pageSize = const $CopyWithPlaceholder(),
    Object? totalCount = const $CopyWithPlaceholder(),
    Object? totalPages = const $CopyWithPlaceholder(),
    Object? hasPreviousPage = const $CopyWithPlaceholder(),
    Object? hasNextPage = const $CopyWithPlaceholder(),
  }) {
    return PagedResultOfStockAdjustmentListItem(
      items: items == const $CopyWithPlaceholder() || items == null
          ? _value.items
          // ignore: cast_nullable_to_non_nullable
          : items as List<StockAdjustmentListItem>,
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

extension $PagedResultOfStockAdjustmentListItemCopyWith
    on PagedResultOfStockAdjustmentListItem {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfPagedResultOfStockAdjustmentListItem.copyWith(...)` or `instanceOfPagedResultOfStockAdjustmentListItem.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$PagedResultOfStockAdjustmentListItemCWProxy get copyWith =>
      _$PagedResultOfStockAdjustmentListItemCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PagedResultOfStockAdjustmentListItem
_$PagedResultOfStockAdjustmentListItemFromJson(Map<String, dynamic> json) =>
    $checkedCreate('PagedResultOfStockAdjustmentListItem', json, (
      $checkedConvert,
    ) {
      $checkKeys(
        json,
        requiredKeys: const ['items', 'pageNumber', 'pageSize', 'totalCount'],
      );
      final val = PagedResultOfStockAdjustmentListItem(
        items: $checkedConvert(
          'items',
          (v) => (v as List<dynamic>)
              .map(
                (e) =>
                    StockAdjustmentListItem.fromJson(e as Map<String, dynamic>),
              )
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

Map<String, dynamic> _$PagedResultOfStockAdjustmentListItemToJson(
  PagedResultOfStockAdjustmentListItem instance,
) => <String, dynamic>{
  'items': instance.items.map((e) => e.toJson()).toList(),
  'pageNumber': instance.pageNumber,
  'pageSize': instance.pageSize,
  'totalCount': instance.totalCount,
  'totalPages': ?instance.totalPages,
  'hasPreviousPage': ?instance.hasPreviousPage,
  'hasNextPage': ?instance.hasNextPage,
};
