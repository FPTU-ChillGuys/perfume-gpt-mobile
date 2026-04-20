// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'paged_result.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$PagedResultCWProxy {
  PagedResult items(List<String> items);

  PagedResult pageNumber(num pageNumber);

  PagedResult pageSize(num pageSize);

  PagedResult totalCount(num totalCount);

  PagedResult totalPages(num totalPages);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `PagedResult(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// PagedResult(...).copyWith(id: 12, name: "My name")
  /// ```
  PagedResult call({
    List<String> items,
    num pageNumber,
    num pageSize,
    num totalCount,
    num totalPages,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfPagedResult.copyWith(...)` or call `instanceOfPagedResult.copyWith.fieldName(value)` for a single field.
class _$PagedResultCWProxyImpl implements _$PagedResultCWProxy {
  const _$PagedResultCWProxyImpl(this._value);

  final PagedResult _value;

  @override
  PagedResult items(List<String> items) => call(items: items);

  @override
  PagedResult pageNumber(num pageNumber) => call(pageNumber: pageNumber);

  @override
  PagedResult pageSize(num pageSize) => call(pageSize: pageSize);

  @override
  PagedResult totalCount(num totalCount) => call(totalCount: totalCount);

  @override
  PagedResult totalPages(num totalPages) => call(totalPages: totalPages);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `PagedResult(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// PagedResult(...).copyWith(id: 12, name: "My name")
  /// ```
  PagedResult call({
    Object? items = const $CopyWithPlaceholder(),
    Object? pageNumber = const $CopyWithPlaceholder(),
    Object? pageSize = const $CopyWithPlaceholder(),
    Object? totalCount = const $CopyWithPlaceholder(),
    Object? totalPages = const $CopyWithPlaceholder(),
  }) {
    return PagedResult(
      items: items == const $CopyWithPlaceholder() || items == null
          ? _value.items
          // ignore: cast_nullable_to_non_nullable
          : items as List<String>,
      pageNumber:
          pageNumber == const $CopyWithPlaceholder() || pageNumber == null
          ? _value.pageNumber
          // ignore: cast_nullable_to_non_nullable
          : pageNumber as num,
      pageSize: pageSize == const $CopyWithPlaceholder() || pageSize == null
          ? _value.pageSize
          // ignore: cast_nullable_to_non_nullable
          : pageSize as num,
      totalCount:
          totalCount == const $CopyWithPlaceholder() || totalCount == null
          ? _value.totalCount
          // ignore: cast_nullable_to_non_nullable
          : totalCount as num,
      totalPages:
          totalPages == const $CopyWithPlaceholder() || totalPages == null
          ? _value.totalPages
          // ignore: cast_nullable_to_non_nullable
          : totalPages as num,
    );
  }
}

extension $PagedResultCopyWith on PagedResult {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfPagedResult.copyWith(...)` or `instanceOfPagedResult.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$PagedResultCWProxy get copyWith => _$PagedResultCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PagedResult _$PagedResultFromJson(Map<String, dynamic> json) =>
    $checkedCreate('PagedResult', json, ($checkedConvert) {
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
      final val = PagedResult(
        items: $checkedConvert(
          'items',
          (v) => (v as List<dynamic>).map((e) => e as String).toList(),
        ),
        pageNumber: $checkedConvert('pageNumber', (v) => v as num),
        pageSize: $checkedConvert('pageSize', (v) => v as num),
        totalCount: $checkedConvert('totalCount', (v) => v as num),
        totalPages: $checkedConvert('totalPages', (v) => v as num),
      );
      return val;
    });

Map<String, dynamic> _$PagedResultToJson(PagedResult instance) =>
    <String, dynamic>{
      'items': instance.items,
      'pageNumber': instance.pageNumber,
      'pageSize': instance.pageSize,
      'totalCount': instance.totalCount,
      'totalPages': instance.totalPages,
    };
