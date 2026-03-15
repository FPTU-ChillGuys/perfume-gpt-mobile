// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'paged_result_of_stock_response.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$PagedResultOfStockResponseCWProxy {
  PagedResultOfStockResponse items(List<StockResponse> items);

  PagedResultOfStockResponse pageNumber(int pageNumber);

  PagedResultOfStockResponse pageSize(int pageSize);

  PagedResultOfStockResponse totalCount(int totalCount);

  PagedResultOfStockResponse totalPages(int totalPages);

  PagedResultOfStockResponse hasPreviousPage(bool? hasPreviousPage);

  PagedResultOfStockResponse hasNextPage(bool? hasNextPage);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `PagedResultOfStockResponse(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// PagedResultOfStockResponse(...).copyWith(id: 12, name: "My name")
  /// ````
  PagedResultOfStockResponse call({
    List<StockResponse> items,
    int pageNumber,
    int pageSize,
    int totalCount,
    int totalPages,
    bool? hasPreviousPage,
    bool? hasNextPage,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfPagedResultOfStockResponse.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfPagedResultOfStockResponse.copyWith.fieldName(...)`
class _$PagedResultOfStockResponseCWProxyImpl
    implements _$PagedResultOfStockResponseCWProxy {
  const _$PagedResultOfStockResponseCWProxyImpl(this._value);

  final PagedResultOfStockResponse _value;

  @override
  PagedResultOfStockResponse items(List<StockResponse> items) =>
      this(items: items);

  @override
  PagedResultOfStockResponse pageNumber(int pageNumber) =>
      this(pageNumber: pageNumber);

  @override
  PagedResultOfStockResponse pageSize(int pageSize) => this(pageSize: pageSize);

  @override
  PagedResultOfStockResponse totalCount(int totalCount) =>
      this(totalCount: totalCount);

  @override
  PagedResultOfStockResponse totalPages(int totalPages) =>
      this(totalPages: totalPages);

  @override
  PagedResultOfStockResponse hasPreviousPage(bool? hasPreviousPage) =>
      this(hasPreviousPage: hasPreviousPage);

  @override
  PagedResultOfStockResponse hasNextPage(bool? hasNextPage) =>
      this(hasNextPage: hasNextPage);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `PagedResultOfStockResponse(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// PagedResultOfStockResponse(...).copyWith(id: 12, name: "My name")
  /// ````
  PagedResultOfStockResponse call({
    Object? items = const $CopyWithPlaceholder(),
    Object? pageNumber = const $CopyWithPlaceholder(),
    Object? pageSize = const $CopyWithPlaceholder(),
    Object? totalCount = const $CopyWithPlaceholder(),
    Object? totalPages = const $CopyWithPlaceholder(),
    Object? hasPreviousPage = const $CopyWithPlaceholder(),
    Object? hasNextPage = const $CopyWithPlaceholder(),
  }) {
    return PagedResultOfStockResponse(
      items: items == const $CopyWithPlaceholder()
          ? _value.items
          // ignore: cast_nullable_to_non_nullable
          : items as List<StockResponse>,
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

extension $PagedResultOfStockResponseCopyWith on PagedResultOfStockResponse {
  /// Returns a callable class that can be used as follows: `instanceOfPagedResultOfStockResponse.copyWith(...)` or like so:`instanceOfPagedResultOfStockResponse.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$PagedResultOfStockResponseCWProxy get copyWith =>
      _$PagedResultOfStockResponseCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PagedResultOfStockResponse _$PagedResultOfStockResponseFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('PagedResultOfStockResponse', json, ($checkedConvert) {
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
  final val = PagedResultOfStockResponse(
    items: $checkedConvert(
      'items',
      (v) => (v as List<dynamic>)
          .map((e) => StockResponse.fromJson(e as Map<String, dynamic>))
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

Map<String, dynamic> _$PagedResultOfStockResponseToJson(
  PagedResultOfStockResponse instance,
) => <String, dynamic>{
  'items': instance.items.map((e) => e.toJson()).toList(),
  'pageNumber': instance.pageNumber,
  'pageSize': instance.pageSize,
  'totalCount': instance.totalCount,
  'totalPages': instance.totalPages,
  'hasPreviousPage': ?instance.hasPreviousPage,
  'hasNextPage': ?instance.hasNextPage,
};
