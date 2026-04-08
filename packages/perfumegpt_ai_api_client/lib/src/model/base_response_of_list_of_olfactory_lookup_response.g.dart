// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_response_of_list_of_olfactory_lookup_response.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$BaseResponseOfListOfOlfactoryLookupResponseCWProxy {
  BaseResponseOfListOfOlfactoryLookupResponse payload(
    List<OlfactoryLookupResponse>? payload,
  );

  BaseResponseOfListOfOlfactoryLookupResponse success(bool? success);

  BaseResponseOfListOfOlfactoryLookupResponse message(String? message);

  BaseResponseOfListOfOlfactoryLookupResponse errors(List<String>? errors);

  BaseResponseOfListOfOlfactoryLookupResponse errorType(int? errorType);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `BaseResponseOfListOfOlfactoryLookupResponse(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// BaseResponseOfListOfOlfactoryLookupResponse(...).copyWith(id: 12, name: "My name")
  /// ```
  BaseResponseOfListOfOlfactoryLookupResponse call({
    List<OlfactoryLookupResponse>? payload,
    bool? success,
    String? message,
    List<String>? errors,
    int? errorType,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfBaseResponseOfListOfOlfactoryLookupResponse.copyWith(...)` or call `instanceOfBaseResponseOfListOfOlfactoryLookupResponse.copyWith.fieldName(value)` for a single field.
class _$BaseResponseOfListOfOlfactoryLookupResponseCWProxyImpl
    implements _$BaseResponseOfListOfOlfactoryLookupResponseCWProxy {
  const _$BaseResponseOfListOfOlfactoryLookupResponseCWProxyImpl(this._value);

  final BaseResponseOfListOfOlfactoryLookupResponse _value;

  @override
  BaseResponseOfListOfOlfactoryLookupResponse payload(
    List<OlfactoryLookupResponse>? payload,
  ) => call(payload: payload);

  @override
  BaseResponseOfListOfOlfactoryLookupResponse success(bool? success) =>
      call(success: success);

  @override
  BaseResponseOfListOfOlfactoryLookupResponse message(String? message) =>
      call(message: message);

  @override
  BaseResponseOfListOfOlfactoryLookupResponse errors(List<String>? errors) =>
      call(errors: errors);

  @override
  BaseResponseOfListOfOlfactoryLookupResponse errorType(int? errorType) =>
      call(errorType: errorType);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `BaseResponseOfListOfOlfactoryLookupResponse(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// BaseResponseOfListOfOlfactoryLookupResponse(...).copyWith(id: 12, name: "My name")
  /// ```
  BaseResponseOfListOfOlfactoryLookupResponse call({
    Object? payload = const $CopyWithPlaceholder(),
    Object? success = const $CopyWithPlaceholder(),
    Object? message = const $CopyWithPlaceholder(),
    Object? errors = const $CopyWithPlaceholder(),
    Object? errorType = const $CopyWithPlaceholder(),
  }) {
    return BaseResponseOfListOfOlfactoryLookupResponse(
      payload: payload == const $CopyWithPlaceholder()
          ? _value.payload
          // ignore: cast_nullable_to_non_nullable
          : payload as List<OlfactoryLookupResponse>?,
      success: success == const $CopyWithPlaceholder()
          ? _value.success
          // ignore: cast_nullable_to_non_nullable
          : success as bool?,
      message: message == const $CopyWithPlaceholder()
          ? _value.message
          // ignore: cast_nullable_to_non_nullable
          : message as String?,
      errors: errors == const $CopyWithPlaceholder()
          ? _value.errors
          // ignore: cast_nullable_to_non_nullable
          : errors as List<String>?,
      errorType: errorType == const $CopyWithPlaceholder()
          ? _value.errorType
          // ignore: cast_nullable_to_non_nullable
          : errorType as int?,
    );
  }
}

extension $BaseResponseOfListOfOlfactoryLookupResponseCopyWith
    on BaseResponseOfListOfOlfactoryLookupResponse {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfBaseResponseOfListOfOlfactoryLookupResponse.copyWith(...)` or `instanceOfBaseResponseOfListOfOlfactoryLookupResponse.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$BaseResponseOfListOfOlfactoryLookupResponseCWProxy get copyWith =>
      _$BaseResponseOfListOfOlfactoryLookupResponseCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BaseResponseOfListOfOlfactoryLookupResponse
_$BaseResponseOfListOfOlfactoryLookupResponseFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('BaseResponseOfListOfOlfactoryLookupResponse', json, (
  $checkedConvert,
) {
  final val = BaseResponseOfListOfOlfactoryLookupResponse(
    payload: $checkedConvert(
      'payload',
      (v) => (v as List<dynamic>?)
          ?.map(
            (e) => OlfactoryLookupResponse.fromJson(e as Map<String, dynamic>),
          )
          .toList(),
    ),
    success: $checkedConvert('success', (v) => v as bool?),
    message: $checkedConvert('message', (v) => v as String?),
    errors: $checkedConvert(
      'errors',
      (v) => (v as List<dynamic>?)?.map((e) => e as String).toList(),
    ),
    errorType: $checkedConvert('errorType', (v) => (v as num?)?.toInt()),
  );
  return val;
});

Map<String, dynamic> _$BaseResponseOfListOfOlfactoryLookupResponseToJson(
  BaseResponseOfListOfOlfactoryLookupResponse instance,
) => <String, dynamic>{
  'payload': ?instance.payload?.map((e) => e.toJson()).toList(),
  'success': ?instance.success,
  'message': ?instance.message,
  'errors': ?instance.errors,
  'errorType': ?instance.errorType,
};
