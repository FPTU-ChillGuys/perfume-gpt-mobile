// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'paged_result_of_user_voucher_response.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$PagedResultOfUserVoucherResponseCWProxy {
  PagedResultOfUserVoucherResponse items(List<UserVoucherResponse> items);

  PagedResultOfUserVoucherResponse pageNumber(int pageNumber);

  PagedResultOfUserVoucherResponse pageSize(int pageSize);

  PagedResultOfUserVoucherResponse totalCount(int totalCount);

  PagedResultOfUserVoucherResponse totalPages(int totalPages);

  PagedResultOfUserVoucherResponse hasPreviousPage(bool? hasPreviousPage);

  PagedResultOfUserVoucherResponse hasNextPage(bool? hasNextPage);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `PagedResultOfUserVoucherResponse(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// PagedResultOfUserVoucherResponse(...).copyWith(id: 12, name: "My name")
  /// ````
  PagedResultOfUserVoucherResponse call({
    List<UserVoucherResponse> items,
    int pageNumber,
    int pageSize,
    int totalCount,
    int totalPages,
    bool? hasPreviousPage,
    bool? hasNextPage,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfPagedResultOfUserVoucherResponse.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfPagedResultOfUserVoucherResponse.copyWith.fieldName(...)`
class _$PagedResultOfUserVoucherResponseCWProxyImpl
    implements _$PagedResultOfUserVoucherResponseCWProxy {
  const _$PagedResultOfUserVoucherResponseCWProxyImpl(this._value);

  final PagedResultOfUserVoucherResponse _value;

  @override
  PagedResultOfUserVoucherResponse items(List<UserVoucherResponse> items) =>
      this(items: items);

  @override
  PagedResultOfUserVoucherResponse pageNumber(int pageNumber) =>
      this(pageNumber: pageNumber);

  @override
  PagedResultOfUserVoucherResponse pageSize(int pageSize) =>
      this(pageSize: pageSize);

  @override
  PagedResultOfUserVoucherResponse totalCount(int totalCount) =>
      this(totalCount: totalCount);

  @override
  PagedResultOfUserVoucherResponse totalPages(int totalPages) =>
      this(totalPages: totalPages);

  @override
  PagedResultOfUserVoucherResponse hasPreviousPage(bool? hasPreviousPage) =>
      this(hasPreviousPage: hasPreviousPage);

  @override
  PagedResultOfUserVoucherResponse hasNextPage(bool? hasNextPage) =>
      this(hasNextPage: hasNextPage);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `PagedResultOfUserVoucherResponse(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// PagedResultOfUserVoucherResponse(...).copyWith(id: 12, name: "My name")
  /// ````
  PagedResultOfUserVoucherResponse call({
    Object? items = const $CopyWithPlaceholder(),
    Object? pageNumber = const $CopyWithPlaceholder(),
    Object? pageSize = const $CopyWithPlaceholder(),
    Object? totalCount = const $CopyWithPlaceholder(),
    Object? totalPages = const $CopyWithPlaceholder(),
    Object? hasPreviousPage = const $CopyWithPlaceholder(),
    Object? hasNextPage = const $CopyWithPlaceholder(),
  }) {
    return PagedResultOfUserVoucherResponse(
      items: items == const $CopyWithPlaceholder()
          ? _value.items
          // ignore: cast_nullable_to_non_nullable
          : items as List<UserVoucherResponse>,
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

extension $PagedResultOfUserVoucherResponseCopyWith
    on PagedResultOfUserVoucherResponse {
  /// Returns a callable class that can be used as follows: `instanceOfPagedResultOfUserVoucherResponse.copyWith(...)` or like so:`instanceOfPagedResultOfUserVoucherResponse.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$PagedResultOfUserVoucherResponseCWProxy get copyWith =>
      _$PagedResultOfUserVoucherResponseCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PagedResultOfUserVoucherResponse _$PagedResultOfUserVoucherResponseFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('PagedResultOfUserVoucherResponse', json, (
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
  final val = PagedResultOfUserVoucherResponse(
    items: $checkedConvert(
      'items',
      (v) => (v as List<dynamic>)
          .map((e) => UserVoucherResponse.fromJson(e as Map<String, dynamic>))
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

Map<String, dynamic> _$PagedResultOfUserVoucherResponseToJson(
  PagedResultOfUserVoucherResponse instance,
) => <String, dynamic>{
  'items': instance.items.map((e) => e.toJson()).toList(),
  'pageNumber': instance.pageNumber,
  'pageSize': instance.pageSize,
  'totalCount': instance.totalCount,
  'totalPages': instance.totalPages,
  'hasPreviousPage': ?instance.hasPreviousPage,
  'hasNextPage': ?instance.hasNextPage,
};
