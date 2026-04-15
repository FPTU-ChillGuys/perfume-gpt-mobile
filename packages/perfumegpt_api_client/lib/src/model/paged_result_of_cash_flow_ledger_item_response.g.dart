// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'paged_result_of_cash_flow_ledger_item_response.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$PagedResultOfCashFlowLedgerItemResponseCWProxy {
  PagedResultOfCashFlowLedgerItemResponse items(
    List<CashFlowLedgerItemResponse> items,
  );

  PagedResultOfCashFlowLedgerItemResponse pageNumber(int pageNumber);

  PagedResultOfCashFlowLedgerItemResponse pageSize(int pageSize);

  PagedResultOfCashFlowLedgerItemResponse totalCount(int totalCount);

  PagedResultOfCashFlowLedgerItemResponse totalPages(int? totalPages);

  PagedResultOfCashFlowLedgerItemResponse hasPreviousPage(
    bool? hasPreviousPage,
  );

  PagedResultOfCashFlowLedgerItemResponse hasNextPage(bool? hasNextPage);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `PagedResultOfCashFlowLedgerItemResponse(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// PagedResultOfCashFlowLedgerItemResponse(...).copyWith(id: 12, name: "My name")
  /// ```
  PagedResultOfCashFlowLedgerItemResponse call({
    List<CashFlowLedgerItemResponse> items,
    int pageNumber,
    int pageSize,
    int totalCount,
    int? totalPages,
    bool? hasPreviousPage,
    bool? hasNextPage,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfPagedResultOfCashFlowLedgerItemResponse.copyWith(...)` or call `instanceOfPagedResultOfCashFlowLedgerItemResponse.copyWith.fieldName(value)` for a single field.
class _$PagedResultOfCashFlowLedgerItemResponseCWProxyImpl
    implements _$PagedResultOfCashFlowLedgerItemResponseCWProxy {
  const _$PagedResultOfCashFlowLedgerItemResponseCWProxyImpl(this._value);

  final PagedResultOfCashFlowLedgerItemResponse _value;

  @override
  PagedResultOfCashFlowLedgerItemResponse items(
    List<CashFlowLedgerItemResponse> items,
  ) => call(items: items);

  @override
  PagedResultOfCashFlowLedgerItemResponse pageNumber(int pageNumber) =>
      call(pageNumber: pageNumber);

  @override
  PagedResultOfCashFlowLedgerItemResponse pageSize(int pageSize) =>
      call(pageSize: pageSize);

  @override
  PagedResultOfCashFlowLedgerItemResponse totalCount(int totalCount) =>
      call(totalCount: totalCount);

  @override
  PagedResultOfCashFlowLedgerItemResponse totalPages(int? totalPages) =>
      call(totalPages: totalPages);

  @override
  PagedResultOfCashFlowLedgerItemResponse hasPreviousPage(
    bool? hasPreviousPage,
  ) => call(hasPreviousPage: hasPreviousPage);

  @override
  PagedResultOfCashFlowLedgerItemResponse hasNextPage(bool? hasNextPage) =>
      call(hasNextPage: hasNextPage);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `PagedResultOfCashFlowLedgerItemResponse(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// PagedResultOfCashFlowLedgerItemResponse(...).copyWith(id: 12, name: "My name")
  /// ```
  PagedResultOfCashFlowLedgerItemResponse call({
    Object? items = const $CopyWithPlaceholder(),
    Object? pageNumber = const $CopyWithPlaceholder(),
    Object? pageSize = const $CopyWithPlaceholder(),
    Object? totalCount = const $CopyWithPlaceholder(),
    Object? totalPages = const $CopyWithPlaceholder(),
    Object? hasPreviousPage = const $CopyWithPlaceholder(),
    Object? hasNextPage = const $CopyWithPlaceholder(),
  }) {
    return PagedResultOfCashFlowLedgerItemResponse(
      items: items == const $CopyWithPlaceholder() || items == null
          ? _value.items
          // ignore: cast_nullable_to_non_nullable
          : items as List<CashFlowLedgerItemResponse>,
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

extension $PagedResultOfCashFlowLedgerItemResponseCopyWith
    on PagedResultOfCashFlowLedgerItemResponse {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfPagedResultOfCashFlowLedgerItemResponse.copyWith(...)` or `instanceOfPagedResultOfCashFlowLedgerItemResponse.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$PagedResultOfCashFlowLedgerItemResponseCWProxy get copyWith =>
      _$PagedResultOfCashFlowLedgerItemResponseCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PagedResultOfCashFlowLedgerItemResponse
_$PagedResultOfCashFlowLedgerItemResponseFromJson(Map<String, dynamic> json) =>
    $checkedCreate('PagedResultOfCashFlowLedgerItemResponse', json, (
      $checkedConvert,
    ) {
      $checkKeys(
        json,
        requiredKeys: const ['items', 'pageNumber', 'pageSize', 'totalCount'],
      );
      final val = PagedResultOfCashFlowLedgerItemResponse(
        items: $checkedConvert(
          'items',
          (v) => (v as List<dynamic>)
              .map(
                (e) => CashFlowLedgerItemResponse.fromJson(
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

Map<String, dynamic> _$PagedResultOfCashFlowLedgerItemResponseToJson(
  PagedResultOfCashFlowLedgerItemResponse instance,
) => <String, dynamic>{
  'items': instance.items.map((e) => e.toJson()).toList(),
  'pageNumber': instance.pageNumber,
  'pageSize': instance.pageSize,
  'totalCount': instance.totalCount,
  'totalPages': ?instance.totalPages,
  'hasPreviousPage': ?instance.hasPreviousPage,
  'hasNextPage': ?instance.hasNextPage,
};
