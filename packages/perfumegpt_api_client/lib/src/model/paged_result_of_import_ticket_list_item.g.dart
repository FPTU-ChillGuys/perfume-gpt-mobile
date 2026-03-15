// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'paged_result_of_import_ticket_list_item.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$PagedResultOfImportTicketListItemCWProxy {
  PagedResultOfImportTicketListItem items(List<ImportTicketListItem> items);

  PagedResultOfImportTicketListItem pageNumber(int pageNumber);

  PagedResultOfImportTicketListItem pageSize(int pageSize);

  PagedResultOfImportTicketListItem totalCount(int totalCount);

  PagedResultOfImportTicketListItem totalPages(int totalPages);

  PagedResultOfImportTicketListItem hasPreviousPage(bool? hasPreviousPage);

  PagedResultOfImportTicketListItem hasNextPage(bool? hasNextPage);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `PagedResultOfImportTicketListItem(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// PagedResultOfImportTicketListItem(...).copyWith(id: 12, name: "My name")
  /// ````
  PagedResultOfImportTicketListItem call({
    List<ImportTicketListItem> items,
    int pageNumber,
    int pageSize,
    int totalCount,
    int totalPages,
    bool? hasPreviousPage,
    bool? hasNextPage,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfPagedResultOfImportTicketListItem.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfPagedResultOfImportTicketListItem.copyWith.fieldName(...)`
class _$PagedResultOfImportTicketListItemCWProxyImpl
    implements _$PagedResultOfImportTicketListItemCWProxy {
  const _$PagedResultOfImportTicketListItemCWProxyImpl(this._value);

  final PagedResultOfImportTicketListItem _value;

  @override
  PagedResultOfImportTicketListItem items(List<ImportTicketListItem> items) =>
      this(items: items);

  @override
  PagedResultOfImportTicketListItem pageNumber(int pageNumber) =>
      this(pageNumber: pageNumber);

  @override
  PagedResultOfImportTicketListItem pageSize(int pageSize) =>
      this(pageSize: pageSize);

  @override
  PagedResultOfImportTicketListItem totalCount(int totalCount) =>
      this(totalCount: totalCount);

  @override
  PagedResultOfImportTicketListItem totalPages(int totalPages) =>
      this(totalPages: totalPages);

  @override
  PagedResultOfImportTicketListItem hasPreviousPage(bool? hasPreviousPage) =>
      this(hasPreviousPage: hasPreviousPage);

  @override
  PagedResultOfImportTicketListItem hasNextPage(bool? hasNextPage) =>
      this(hasNextPage: hasNextPage);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `PagedResultOfImportTicketListItem(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// PagedResultOfImportTicketListItem(...).copyWith(id: 12, name: "My name")
  /// ````
  PagedResultOfImportTicketListItem call({
    Object? items = const $CopyWithPlaceholder(),
    Object? pageNumber = const $CopyWithPlaceholder(),
    Object? pageSize = const $CopyWithPlaceholder(),
    Object? totalCount = const $CopyWithPlaceholder(),
    Object? totalPages = const $CopyWithPlaceholder(),
    Object? hasPreviousPage = const $CopyWithPlaceholder(),
    Object? hasNextPage = const $CopyWithPlaceholder(),
  }) {
    return PagedResultOfImportTicketListItem(
      items: items == const $CopyWithPlaceholder()
          ? _value.items
          // ignore: cast_nullable_to_non_nullable
          : items as List<ImportTicketListItem>,
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

extension $PagedResultOfImportTicketListItemCopyWith
    on PagedResultOfImportTicketListItem {
  /// Returns a callable class that can be used as follows: `instanceOfPagedResultOfImportTicketListItem.copyWith(...)` or like so:`instanceOfPagedResultOfImportTicketListItem.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$PagedResultOfImportTicketListItemCWProxy get copyWith =>
      _$PagedResultOfImportTicketListItemCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PagedResultOfImportTicketListItem _$PagedResultOfImportTicketListItemFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('PagedResultOfImportTicketListItem', json, (
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
  final val = PagedResultOfImportTicketListItem(
    items: $checkedConvert(
      'items',
      (v) => (v as List<dynamic>)
          .map((e) => ImportTicketListItem.fromJson(e as Map<String, dynamic>))
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

Map<String, dynamic> _$PagedResultOfImportTicketListItemToJson(
  PagedResultOfImportTicketListItem instance,
) => <String, dynamic>{
  'items': instance.items.map((e) => e.toJson()).toList(),
  'pageNumber': instance.pageNumber,
  'pageSize': instance.pageSize,
  'totalCount': instance.totalCount,
  'totalPages': instance.totalPages,
  'hasPreviousPage': ?instance.hasPreviousPage,
  'hasNextPage': ?instance.hasNextPage,
};
