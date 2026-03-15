// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'paged_result_of_batch_detail_response.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$PagedResultOfBatchDetailResponseCWProxy {
  PagedResultOfBatchDetailResponse items(List<BatchDetailResponse> items);

  PagedResultOfBatchDetailResponse pageNumber(int pageNumber);

  PagedResultOfBatchDetailResponse pageSize(int pageSize);

  PagedResultOfBatchDetailResponse totalCount(int totalCount);

  PagedResultOfBatchDetailResponse totalPages(int totalPages);

  PagedResultOfBatchDetailResponse hasPreviousPage(bool? hasPreviousPage);

  PagedResultOfBatchDetailResponse hasNextPage(bool? hasNextPage);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `PagedResultOfBatchDetailResponse(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// PagedResultOfBatchDetailResponse(...).copyWith(id: 12, name: "My name")
  /// ````
  PagedResultOfBatchDetailResponse call({
    List<BatchDetailResponse> items,
    int pageNumber,
    int pageSize,
    int totalCount,
    int totalPages,
    bool? hasPreviousPage,
    bool? hasNextPage,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfPagedResultOfBatchDetailResponse.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfPagedResultOfBatchDetailResponse.copyWith.fieldName(...)`
class _$PagedResultOfBatchDetailResponseCWProxyImpl
    implements _$PagedResultOfBatchDetailResponseCWProxy {
  const _$PagedResultOfBatchDetailResponseCWProxyImpl(this._value);

  final PagedResultOfBatchDetailResponse _value;

  @override
  PagedResultOfBatchDetailResponse items(List<BatchDetailResponse> items) =>
      this(items: items);

  @override
  PagedResultOfBatchDetailResponse pageNumber(int pageNumber) =>
      this(pageNumber: pageNumber);

  @override
  PagedResultOfBatchDetailResponse pageSize(int pageSize) =>
      this(pageSize: pageSize);

  @override
  PagedResultOfBatchDetailResponse totalCount(int totalCount) =>
      this(totalCount: totalCount);

  @override
  PagedResultOfBatchDetailResponse totalPages(int totalPages) =>
      this(totalPages: totalPages);

  @override
  PagedResultOfBatchDetailResponse hasPreviousPage(bool? hasPreviousPage) =>
      this(hasPreviousPage: hasPreviousPage);

  @override
  PagedResultOfBatchDetailResponse hasNextPage(bool? hasNextPage) =>
      this(hasNextPage: hasNextPage);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `PagedResultOfBatchDetailResponse(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// PagedResultOfBatchDetailResponse(...).copyWith(id: 12, name: "My name")
  /// ````
  PagedResultOfBatchDetailResponse call({
    Object? items = const $CopyWithPlaceholder(),
    Object? pageNumber = const $CopyWithPlaceholder(),
    Object? pageSize = const $CopyWithPlaceholder(),
    Object? totalCount = const $CopyWithPlaceholder(),
    Object? totalPages = const $CopyWithPlaceholder(),
    Object? hasPreviousPage = const $CopyWithPlaceholder(),
    Object? hasNextPage = const $CopyWithPlaceholder(),
  }) {
    return PagedResultOfBatchDetailResponse(
      items: items == const $CopyWithPlaceholder()
          ? _value.items
          // ignore: cast_nullable_to_non_nullable
          : items as List<BatchDetailResponse>,
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

extension $PagedResultOfBatchDetailResponseCopyWith
    on PagedResultOfBatchDetailResponse {
  /// Returns a callable class that can be used as follows: `instanceOfPagedResultOfBatchDetailResponse.copyWith(...)` or like so:`instanceOfPagedResultOfBatchDetailResponse.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$PagedResultOfBatchDetailResponseCWProxy get copyWith =>
      _$PagedResultOfBatchDetailResponseCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PagedResultOfBatchDetailResponse _$PagedResultOfBatchDetailResponseFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('PagedResultOfBatchDetailResponse', json, (
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
  final val = PagedResultOfBatchDetailResponse(
    items: $checkedConvert(
      'items',
      (v) => (v as List<dynamic>)
          .map((e) => BatchDetailResponse.fromJson(e as Map<String, dynamic>))
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

Map<String, dynamic> _$PagedResultOfBatchDetailResponseToJson(
  PagedResultOfBatchDetailResponse instance,
) => <String, dynamic>{
  'items': instance.items.map((e) => e.toJson()).toList(),
  'pageNumber': instance.pageNumber,
  'pageSize': instance.pageSize,
  'totalCount': instance.totalCount,
  'totalPages': instance.totalPages,
  'hasPreviousPage': ?instance.hasPreviousPage,
  'hasNextPage': ?instance.hasNextPage,
};
