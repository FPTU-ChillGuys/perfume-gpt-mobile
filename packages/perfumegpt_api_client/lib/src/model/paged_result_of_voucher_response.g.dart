// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'paged_result_of_voucher_response.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$PagedResultOfVoucherResponseCWProxy {
  PagedResultOfVoucherResponse items(List<VoucherResponse> items);

  PagedResultOfVoucherResponse pageNumber(int pageNumber);

  PagedResultOfVoucherResponse pageSize(int pageSize);

  PagedResultOfVoucherResponse totalCount(int totalCount);

  PagedResultOfVoucherResponse totalPages(int totalPages);

  PagedResultOfVoucherResponse hasPreviousPage(bool? hasPreviousPage);

  PagedResultOfVoucherResponse hasNextPage(bool? hasNextPage);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `PagedResultOfVoucherResponse(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// PagedResultOfVoucherResponse(...).copyWith(id: 12, name: "My name")
  /// ```
  PagedResultOfVoucherResponse call({
    List<VoucherResponse> items,
    int pageNumber,
    int pageSize,
    int totalCount,
    int totalPages,
    bool? hasPreviousPage,
    bool? hasNextPage,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfPagedResultOfVoucherResponse.copyWith(...)` or call `instanceOfPagedResultOfVoucherResponse.copyWith.fieldName(value)` for a single field.
class _$PagedResultOfVoucherResponseCWProxyImpl
    implements _$PagedResultOfVoucherResponseCWProxy {
  const _$PagedResultOfVoucherResponseCWProxyImpl(this._value);

  final PagedResultOfVoucherResponse _value;

  @override
  PagedResultOfVoucherResponse items(List<VoucherResponse> items) =>
      call(items: items);

  @override
  PagedResultOfVoucherResponse pageNumber(int pageNumber) =>
      call(pageNumber: pageNumber);

  @override
  PagedResultOfVoucherResponse pageSize(int pageSize) =>
      call(pageSize: pageSize);

  @override
  PagedResultOfVoucherResponse totalCount(int totalCount) =>
      call(totalCount: totalCount);

  @override
  PagedResultOfVoucherResponse totalPages(int totalPages) =>
      call(totalPages: totalPages);

  @override
  PagedResultOfVoucherResponse hasPreviousPage(bool? hasPreviousPage) =>
      call(hasPreviousPage: hasPreviousPage);

  @override
  PagedResultOfVoucherResponse hasNextPage(bool? hasNextPage) =>
      call(hasNextPage: hasNextPage);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `PagedResultOfVoucherResponse(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// PagedResultOfVoucherResponse(...).copyWith(id: 12, name: "My name")
  /// ```
  PagedResultOfVoucherResponse call({
    Object? items = const $CopyWithPlaceholder(),
    Object? pageNumber = const $CopyWithPlaceholder(),
    Object? pageSize = const $CopyWithPlaceholder(),
    Object? totalCount = const $CopyWithPlaceholder(),
    Object? totalPages = const $CopyWithPlaceholder(),
    Object? hasPreviousPage = const $CopyWithPlaceholder(),
    Object? hasNextPage = const $CopyWithPlaceholder(),
  }) {
    return PagedResultOfVoucherResponse(
      items: items == const $CopyWithPlaceholder() || items == null
          ? _value.items
          // ignore: cast_nullable_to_non_nullable
          : items as List<VoucherResponse>,
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

extension $PagedResultOfVoucherResponseCopyWith
    on PagedResultOfVoucherResponse {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfPagedResultOfVoucherResponse.copyWith(...)` or `instanceOfPagedResultOfVoucherResponse.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$PagedResultOfVoucherResponseCWProxy get copyWith =>
      _$PagedResultOfVoucherResponseCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PagedResultOfVoucherResponse _$PagedResultOfVoucherResponseFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('PagedResultOfVoucherResponse', json, ($checkedConvert) {
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
  final val = PagedResultOfVoucherResponse(
    items: $checkedConvert(
      'items',
      (v) => (v as List<dynamic>)
          .map((e) => VoucherResponse.fromJson(e as Map<String, dynamic>))
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

Map<String, dynamic> _$PagedResultOfVoucherResponseToJson(
  PagedResultOfVoucherResponse instance,
) => <String, dynamic>{
  'items': instance.items.map((e) => e.toJson()).toList(),
  'pageNumber': instance.pageNumber,
  'pageSize': instance.pageSize,
  'totalCount': instance.totalCount,
  'totalPages': instance.totalPages,
  'hasPreviousPage': ?instance.hasPreviousPage,
  'hasNextPage': ?instance.hasNextPage,
};
