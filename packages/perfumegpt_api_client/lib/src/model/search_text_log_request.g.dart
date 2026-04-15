// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_text_log_request.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$SearchTextLogRequestCWProxy {
  SearchTextLogRequest userId(String? userId);

  SearchTextLogRequest searchText(String searchText);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `SearchTextLogRequest(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// SearchTextLogRequest(...).copyWith(id: 12, name: "My name")
  /// ```
  SearchTextLogRequest call({String? userId, String searchText});
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfSearchTextLogRequest.copyWith(...)` or call `instanceOfSearchTextLogRequest.copyWith.fieldName(value)` for a single field.
class _$SearchTextLogRequestCWProxyImpl
    implements _$SearchTextLogRequestCWProxy {
  const _$SearchTextLogRequestCWProxyImpl(this._value);

  final SearchTextLogRequest _value;

  @override
  SearchTextLogRequest userId(String? userId) => call(userId: userId);

  @override
  SearchTextLogRequest searchText(String searchText) =>
      call(searchText: searchText);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `SearchTextLogRequest(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// SearchTextLogRequest(...).copyWith(id: 12, name: "My name")
  /// ```
  SearchTextLogRequest call({
    Object? userId = const $CopyWithPlaceholder(),
    Object? searchText = const $CopyWithPlaceholder(),
  }) {
    return SearchTextLogRequest(
      userId: userId == const $CopyWithPlaceholder()
          ? _value.userId
          // ignore: cast_nullable_to_non_nullable
          : userId as String?,
      searchText:
          searchText == const $CopyWithPlaceholder() || searchText == null
          ? _value.searchText
          // ignore: cast_nullable_to_non_nullable
          : searchText as String,
    );
  }
}

extension $SearchTextLogRequestCopyWith on SearchTextLogRequest {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfSearchTextLogRequest.copyWith(...)` or `instanceOfSearchTextLogRequest.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$SearchTextLogRequestCWProxy get copyWith =>
      _$SearchTextLogRequestCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SearchTextLogRequest _$SearchTextLogRequestFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('SearchTextLogRequest', json, ($checkedConvert) {
  $checkKeys(json, requiredKeys: const ['searchText']);
  final val = SearchTextLogRequest(
    userId: $checkedConvert('userId', (v) => v as String?),
    searchText: $checkedConvert('searchText', (v) => v as String),
  );
  return val;
});

Map<String, dynamic> _$SearchTextLogRequestToJson(
  SearchTextLogRequest instance,
) => <String, dynamic>{
  'userId': ?instance.userId,
  'searchText': instance.searchText,
};
