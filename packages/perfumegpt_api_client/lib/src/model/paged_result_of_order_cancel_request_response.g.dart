// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'paged_result_of_order_cancel_request_response.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$PagedResultOfOrderCancelRequestResponseCWProxy {
  PagedResultOfOrderCancelRequestResponse items(
    List<OrderCancelRequestResponse> items,
  );

  PagedResultOfOrderCancelRequestResponse pageNumber(int pageNumber);

  PagedResultOfOrderCancelRequestResponse pageSize(int pageSize);

  PagedResultOfOrderCancelRequestResponse totalCount(int totalCount);

  PagedResultOfOrderCancelRequestResponse totalPages(int? totalPages);

  PagedResultOfOrderCancelRequestResponse hasPreviousPage(
    bool? hasPreviousPage,
  );

  PagedResultOfOrderCancelRequestResponse hasNextPage(bool? hasNextPage);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `PagedResultOfOrderCancelRequestResponse(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// PagedResultOfOrderCancelRequestResponse(...).copyWith(id: 12, name: "My name")
  /// ```
  PagedResultOfOrderCancelRequestResponse call({
    List<OrderCancelRequestResponse> items,
    int pageNumber,
    int pageSize,
    int totalCount,
    int? totalPages,
    bool? hasPreviousPage,
    bool? hasNextPage,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfPagedResultOfOrderCancelRequestResponse.copyWith(...)` or call `instanceOfPagedResultOfOrderCancelRequestResponse.copyWith.fieldName(value)` for a single field.
class _$PagedResultOfOrderCancelRequestResponseCWProxyImpl
    implements _$PagedResultOfOrderCancelRequestResponseCWProxy {
  const _$PagedResultOfOrderCancelRequestResponseCWProxyImpl(this._value);

  final PagedResultOfOrderCancelRequestResponse _value;

  @override
  PagedResultOfOrderCancelRequestResponse items(
    List<OrderCancelRequestResponse> items,
  ) => call(items: items);

  @override
  PagedResultOfOrderCancelRequestResponse pageNumber(int pageNumber) =>
      call(pageNumber: pageNumber);

  @override
  PagedResultOfOrderCancelRequestResponse pageSize(int pageSize) =>
      call(pageSize: pageSize);

  @override
  PagedResultOfOrderCancelRequestResponse totalCount(int totalCount) =>
      call(totalCount: totalCount);

  @override
  PagedResultOfOrderCancelRequestResponse totalPages(int? totalPages) =>
      call(totalPages: totalPages);

  @override
  PagedResultOfOrderCancelRequestResponse hasPreviousPage(
    bool? hasPreviousPage,
  ) => call(hasPreviousPage: hasPreviousPage);

  @override
  PagedResultOfOrderCancelRequestResponse hasNextPage(bool? hasNextPage) =>
      call(hasNextPage: hasNextPage);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `PagedResultOfOrderCancelRequestResponse(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// PagedResultOfOrderCancelRequestResponse(...).copyWith(id: 12, name: "My name")
  /// ```
  PagedResultOfOrderCancelRequestResponse call({
    Object? items = const $CopyWithPlaceholder(),
    Object? pageNumber = const $CopyWithPlaceholder(),
    Object? pageSize = const $CopyWithPlaceholder(),
    Object? totalCount = const $CopyWithPlaceholder(),
    Object? totalPages = const $CopyWithPlaceholder(),
    Object? hasPreviousPage = const $CopyWithPlaceholder(),
    Object? hasNextPage = const $CopyWithPlaceholder(),
  }) {
    return PagedResultOfOrderCancelRequestResponse(
      items: items == const $CopyWithPlaceholder() || items == null
          ? _value.items
          // ignore: cast_nullable_to_non_nullable
          : items as List<OrderCancelRequestResponse>,
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

extension $PagedResultOfOrderCancelRequestResponseCopyWith
    on PagedResultOfOrderCancelRequestResponse {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfPagedResultOfOrderCancelRequestResponse.copyWith(...)` or `instanceOfPagedResultOfOrderCancelRequestResponse.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$PagedResultOfOrderCancelRequestResponseCWProxy get copyWith =>
      _$PagedResultOfOrderCancelRequestResponseCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PagedResultOfOrderCancelRequestResponse
_$PagedResultOfOrderCancelRequestResponseFromJson(Map<String, dynamic> json) =>
    $checkedCreate('PagedResultOfOrderCancelRequestResponse', json, (
      $checkedConvert,
    ) {
      $checkKeys(
        json,
        requiredKeys: const ['items', 'pageNumber', 'pageSize', 'totalCount'],
      );
      final val = PagedResultOfOrderCancelRequestResponse(
        items: $checkedConvert(
          'items',
          (v) => (v as List<dynamic>)
              .map(
                (e) => OrderCancelRequestResponse.fromJson(
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

Map<String, dynamic> _$PagedResultOfOrderCancelRequestResponseToJson(
  PagedResultOfOrderCancelRequestResponse instance,
) => <String, dynamic>{
  'items': instance.items.map((e) => e.toJson()).toList(),
  'pageNumber': instance.pageNumber,
  'pageSize': instance.pageSize,
  'totalCount': instance.totalCount,
  'totalPages': ?instance.totalPages,
  'hasPreviousPage': ?instance.hasPreviousPage,
  'hasNextPage': ?instance.hasNextPage,
};
