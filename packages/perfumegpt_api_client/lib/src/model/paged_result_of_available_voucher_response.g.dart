// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'paged_result_of_available_voucher_response.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$PagedResultOfAvailableVoucherResponseCWProxy {
  PagedResultOfAvailableVoucherResponse items(
    List<AvailableVoucherResponse> items,
  );

  PagedResultOfAvailableVoucherResponse pageNumber(int pageNumber);

  PagedResultOfAvailableVoucherResponse pageSize(int pageSize);

  PagedResultOfAvailableVoucherResponse totalCount(int totalCount);

  PagedResultOfAvailableVoucherResponse totalPages(int totalPages);

  PagedResultOfAvailableVoucherResponse hasPreviousPage(bool? hasPreviousPage);

  PagedResultOfAvailableVoucherResponse hasNextPage(bool? hasNextPage);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `PagedResultOfAvailableVoucherResponse(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// PagedResultOfAvailableVoucherResponse(...).copyWith(id: 12, name: "My name")
  /// ````
  PagedResultOfAvailableVoucherResponse call({
    List<AvailableVoucherResponse> items,
    int pageNumber,
    int pageSize,
    int totalCount,
    int totalPages,
    bool? hasPreviousPage,
    bool? hasNextPage,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfPagedResultOfAvailableVoucherResponse.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfPagedResultOfAvailableVoucherResponse.copyWith.fieldName(...)`
class _$PagedResultOfAvailableVoucherResponseCWProxyImpl
    implements _$PagedResultOfAvailableVoucherResponseCWProxy {
  const _$PagedResultOfAvailableVoucherResponseCWProxyImpl(this._value);

  final PagedResultOfAvailableVoucherResponse _value;

  @override
  PagedResultOfAvailableVoucherResponse items(
    List<AvailableVoucherResponse> items,
  ) => this(items: items);

  @override
  PagedResultOfAvailableVoucherResponse pageNumber(int pageNumber) =>
      this(pageNumber: pageNumber);

  @override
  PagedResultOfAvailableVoucherResponse pageSize(int pageSize) =>
      this(pageSize: pageSize);

  @override
  PagedResultOfAvailableVoucherResponse totalCount(int totalCount) =>
      this(totalCount: totalCount);

  @override
  PagedResultOfAvailableVoucherResponse totalPages(int totalPages) =>
      this(totalPages: totalPages);

  @override
  PagedResultOfAvailableVoucherResponse hasPreviousPage(
    bool? hasPreviousPage,
  ) => this(hasPreviousPage: hasPreviousPage);

  @override
  PagedResultOfAvailableVoucherResponse hasNextPage(bool? hasNextPage) =>
      this(hasNextPage: hasNextPage);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `PagedResultOfAvailableVoucherResponse(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// PagedResultOfAvailableVoucherResponse(...).copyWith(id: 12, name: "My name")
  /// ````
  PagedResultOfAvailableVoucherResponse call({
    Object? items = const $CopyWithPlaceholder(),
    Object? pageNumber = const $CopyWithPlaceholder(),
    Object? pageSize = const $CopyWithPlaceholder(),
    Object? totalCount = const $CopyWithPlaceholder(),
    Object? totalPages = const $CopyWithPlaceholder(),
    Object? hasPreviousPage = const $CopyWithPlaceholder(),
    Object? hasNextPage = const $CopyWithPlaceholder(),
  }) {
    return PagedResultOfAvailableVoucherResponse(
      items: items == const $CopyWithPlaceholder()
          ? _value.items
          // ignore: cast_nullable_to_non_nullable
          : items as List<AvailableVoucherResponse>,
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

extension $PagedResultOfAvailableVoucherResponseCopyWith
    on PagedResultOfAvailableVoucherResponse {
  /// Returns a callable class that can be used as follows: `instanceOfPagedResultOfAvailableVoucherResponse.copyWith(...)` or like so:`instanceOfPagedResultOfAvailableVoucherResponse.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$PagedResultOfAvailableVoucherResponseCWProxy get copyWith =>
      _$PagedResultOfAvailableVoucherResponseCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PagedResultOfAvailableVoucherResponse
_$PagedResultOfAvailableVoucherResponseFromJson(Map<String, dynamic> json) =>
    $checkedCreate('PagedResultOfAvailableVoucherResponse', json, (
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
      final val = PagedResultOfAvailableVoucherResponse(
        items: $checkedConvert(
          'items',
          (v) => (v as List<dynamic>)
              .map(
                (e) => AvailableVoucherResponse.fromJson(
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

Map<String, dynamic> _$PagedResultOfAvailableVoucherResponseToJson(
  PagedResultOfAvailableVoucherResponse instance,
) => <String, dynamic>{
  'items': instance.items.map((e) => e.toJson()).toList(),
  'pageNumber': instance.pageNumber,
  'pageSize': instance.pageSize,
  'totalCount': instance.totalCount,
  'totalPages': instance.totalPages,
  'hasPreviousPage': ?instance.hasPreviousPage,
  'hasNextPage': ?instance.hasNextPage,
};
