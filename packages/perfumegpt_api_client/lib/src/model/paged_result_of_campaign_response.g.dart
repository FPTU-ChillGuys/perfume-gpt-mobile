// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'paged_result_of_campaign_response.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$PagedResultOfCampaignResponseCWProxy {
  PagedResultOfCampaignResponse items(List<CampaignResponse> items);

  PagedResultOfCampaignResponse pageNumber(int pageNumber);

  PagedResultOfCampaignResponse pageSize(int pageSize);

  PagedResultOfCampaignResponse totalCount(int totalCount);

  PagedResultOfCampaignResponse totalPages(int totalPages);

  PagedResultOfCampaignResponse hasPreviousPage(bool? hasPreviousPage);

  PagedResultOfCampaignResponse hasNextPage(bool? hasNextPage);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `PagedResultOfCampaignResponse(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// PagedResultOfCampaignResponse(...).copyWith(id: 12, name: "My name")
  /// ```
  PagedResultOfCampaignResponse call({
    List<CampaignResponse> items,
    int pageNumber,
    int pageSize,
    int totalCount,
    int totalPages,
    bool? hasPreviousPage,
    bool? hasNextPage,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfPagedResultOfCampaignResponse.copyWith(...)` or call `instanceOfPagedResultOfCampaignResponse.copyWith.fieldName(value)` for a single field.
class _$PagedResultOfCampaignResponseCWProxyImpl
    implements _$PagedResultOfCampaignResponseCWProxy {
  const _$PagedResultOfCampaignResponseCWProxyImpl(this._value);

  final PagedResultOfCampaignResponse _value;

  @override
  PagedResultOfCampaignResponse items(List<CampaignResponse> items) =>
      call(items: items);

  @override
  PagedResultOfCampaignResponse pageNumber(int pageNumber) =>
      call(pageNumber: pageNumber);

  @override
  PagedResultOfCampaignResponse pageSize(int pageSize) =>
      call(pageSize: pageSize);

  @override
  PagedResultOfCampaignResponse totalCount(int totalCount) =>
      call(totalCount: totalCount);

  @override
  PagedResultOfCampaignResponse totalPages(int totalPages) =>
      call(totalPages: totalPages);

  @override
  PagedResultOfCampaignResponse hasPreviousPage(bool? hasPreviousPage) =>
      call(hasPreviousPage: hasPreviousPage);

  @override
  PagedResultOfCampaignResponse hasNextPage(bool? hasNextPage) =>
      call(hasNextPage: hasNextPage);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `PagedResultOfCampaignResponse(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// PagedResultOfCampaignResponse(...).copyWith(id: 12, name: "My name")
  /// ```
  PagedResultOfCampaignResponse call({
    Object? items = const $CopyWithPlaceholder(),
    Object? pageNumber = const $CopyWithPlaceholder(),
    Object? pageSize = const $CopyWithPlaceholder(),
    Object? totalCount = const $CopyWithPlaceholder(),
    Object? totalPages = const $CopyWithPlaceholder(),
    Object? hasPreviousPage = const $CopyWithPlaceholder(),
    Object? hasNextPage = const $CopyWithPlaceholder(),
  }) {
    return PagedResultOfCampaignResponse(
      items: items == const $CopyWithPlaceholder() || items == null
          ? _value.items
          // ignore: cast_nullable_to_non_nullable
          : items as List<CampaignResponse>,
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

extension $PagedResultOfCampaignResponseCopyWith
    on PagedResultOfCampaignResponse {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfPagedResultOfCampaignResponse.copyWith(...)` or `instanceOfPagedResultOfCampaignResponse.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$PagedResultOfCampaignResponseCWProxy get copyWith =>
      _$PagedResultOfCampaignResponseCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PagedResultOfCampaignResponse _$PagedResultOfCampaignResponseFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('PagedResultOfCampaignResponse', json, ($checkedConvert) {
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
  final val = PagedResultOfCampaignResponse(
    items: $checkedConvert(
      'items',
      (v) => (v as List<dynamic>)
          .map((e) => CampaignResponse.fromJson(e as Map<String, dynamic>))
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

Map<String, dynamic> _$PagedResultOfCampaignResponseToJson(
  PagedResultOfCampaignResponse instance,
) => <String, dynamic>{
  'items': instance.items.map((e) => e.toJson()).toList(),
  'pageNumber': instance.pageNumber,
  'pageSize': instance.pageSize,
  'totalCount': instance.totalCount,
  'totalPages': instance.totalPages,
  'hasPreviousPage': ?instance.hasPreviousPage,
  'hasNextPage': ?instance.hasNextPage,
};
