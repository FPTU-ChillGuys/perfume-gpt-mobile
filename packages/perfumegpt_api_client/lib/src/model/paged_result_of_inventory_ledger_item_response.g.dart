// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'paged_result_of_inventory_ledger_item_response.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$PagedResultOfInventoryLedgerItemResponseCWProxy {
  PagedResultOfInventoryLedgerItemResponse items(
    List<InventoryLedgerItemResponse> items,
  );

  PagedResultOfInventoryLedgerItemResponse pageNumber(int pageNumber);

  PagedResultOfInventoryLedgerItemResponse pageSize(int pageSize);

  PagedResultOfInventoryLedgerItemResponse totalCount(int totalCount);

  PagedResultOfInventoryLedgerItemResponse totalPages(int? totalPages);

  PagedResultOfInventoryLedgerItemResponse hasPreviousPage(
    bool? hasPreviousPage,
  );

  PagedResultOfInventoryLedgerItemResponse hasNextPage(bool? hasNextPage);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `PagedResultOfInventoryLedgerItemResponse(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// PagedResultOfInventoryLedgerItemResponse(...).copyWith(id: 12, name: "My name")
  /// ```
  PagedResultOfInventoryLedgerItemResponse call({
    List<InventoryLedgerItemResponse> items,
    int pageNumber,
    int pageSize,
    int totalCount,
    int? totalPages,
    bool? hasPreviousPage,
    bool? hasNextPage,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfPagedResultOfInventoryLedgerItemResponse.copyWith(...)` or call `instanceOfPagedResultOfInventoryLedgerItemResponse.copyWith.fieldName(value)` for a single field.
class _$PagedResultOfInventoryLedgerItemResponseCWProxyImpl
    implements _$PagedResultOfInventoryLedgerItemResponseCWProxy {
  const _$PagedResultOfInventoryLedgerItemResponseCWProxyImpl(this._value);

  final PagedResultOfInventoryLedgerItemResponse _value;

  @override
  PagedResultOfInventoryLedgerItemResponse items(
    List<InventoryLedgerItemResponse> items,
  ) => call(items: items);

  @override
  PagedResultOfInventoryLedgerItemResponse pageNumber(int pageNumber) =>
      call(pageNumber: pageNumber);

  @override
  PagedResultOfInventoryLedgerItemResponse pageSize(int pageSize) =>
      call(pageSize: pageSize);

  @override
  PagedResultOfInventoryLedgerItemResponse totalCount(int totalCount) =>
      call(totalCount: totalCount);

  @override
  PagedResultOfInventoryLedgerItemResponse totalPages(int? totalPages) =>
      call(totalPages: totalPages);

  @override
  PagedResultOfInventoryLedgerItemResponse hasPreviousPage(
    bool? hasPreviousPage,
  ) => call(hasPreviousPage: hasPreviousPage);

  @override
  PagedResultOfInventoryLedgerItemResponse hasNextPage(bool? hasNextPage) =>
      call(hasNextPage: hasNextPage);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `PagedResultOfInventoryLedgerItemResponse(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// PagedResultOfInventoryLedgerItemResponse(...).copyWith(id: 12, name: "My name")
  /// ```
  PagedResultOfInventoryLedgerItemResponse call({
    Object? items = const $CopyWithPlaceholder(),
    Object? pageNumber = const $CopyWithPlaceholder(),
    Object? pageSize = const $CopyWithPlaceholder(),
    Object? totalCount = const $CopyWithPlaceholder(),
    Object? totalPages = const $CopyWithPlaceholder(),
    Object? hasPreviousPage = const $CopyWithPlaceholder(),
    Object? hasNextPage = const $CopyWithPlaceholder(),
  }) {
    return PagedResultOfInventoryLedgerItemResponse(
      items: items == const $CopyWithPlaceholder() || items == null
          ? _value.items
          // ignore: cast_nullable_to_non_nullable
          : items as List<InventoryLedgerItemResponse>,
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

extension $PagedResultOfInventoryLedgerItemResponseCopyWith
    on PagedResultOfInventoryLedgerItemResponse {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfPagedResultOfInventoryLedgerItemResponse.copyWith(...)` or `instanceOfPagedResultOfInventoryLedgerItemResponse.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$PagedResultOfInventoryLedgerItemResponseCWProxy get copyWith =>
      _$PagedResultOfInventoryLedgerItemResponseCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PagedResultOfInventoryLedgerItemResponse
_$PagedResultOfInventoryLedgerItemResponseFromJson(Map<String, dynamic> json) =>
    $checkedCreate('PagedResultOfInventoryLedgerItemResponse', json, (
      $checkedConvert,
    ) {
      $checkKeys(
        json,
        requiredKeys: const ['items', 'pageNumber', 'pageSize', 'totalCount'],
      );
      final val = PagedResultOfInventoryLedgerItemResponse(
        items: $checkedConvert(
          'items',
          (v) => (v as List<dynamic>)
              .map(
                (e) => InventoryLedgerItemResponse.fromJson(
                  e as Map<String, dynamic>,
                ),
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

Map<String, dynamic> _$PagedResultOfInventoryLedgerItemResponseToJson(
  PagedResultOfInventoryLedgerItemResponse instance,
) => <String, dynamic>{
  'items': instance.items.map((e) => e.toJson()).toList(),
  'pageNumber': instance.pageNumber,
  'pageSize': instance.pageSize,
  'totalCount': instance.totalCount,
  'totalPages': ?instance.totalPages,
  'hasPreviousPage': ?instance.hasPreviousPage,
  'hasNextPage': ?instance.hasNextPage,
};
