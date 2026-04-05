// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_response_of_media_response.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$BaseResponseOfMediaResponseCWProxy {
  BaseResponseOfMediaResponse payload(MediaResponse? payload);

  BaseResponseOfMediaResponse success(bool? success);

  BaseResponseOfMediaResponse message(String? message);

  BaseResponseOfMediaResponse errors(List<String>? errors);

  BaseResponseOfMediaResponse errorType(int? errorType);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `BaseResponseOfMediaResponse(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// BaseResponseOfMediaResponse(...).copyWith(id: 12, name: "My name")
  /// ```
  BaseResponseOfMediaResponse call({
    MediaResponse? payload,
    bool? success,
    String? message,
    List<String>? errors,
    int? errorType,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfBaseResponseOfMediaResponse.copyWith(...)` or call `instanceOfBaseResponseOfMediaResponse.copyWith.fieldName(value)` for a single field.
class _$BaseResponseOfMediaResponseCWProxyImpl
    implements _$BaseResponseOfMediaResponseCWProxy {
  const _$BaseResponseOfMediaResponseCWProxyImpl(this._value);

  final BaseResponseOfMediaResponse _value;

  @override
  BaseResponseOfMediaResponse payload(MediaResponse? payload) =>
      call(payload: payload);

  @override
  BaseResponseOfMediaResponse success(bool? success) => call(success: success);

  @override
  BaseResponseOfMediaResponse message(String? message) =>
      call(message: message);

  @override
  BaseResponseOfMediaResponse errors(List<String>? errors) =>
      call(errors: errors);

  @override
  BaseResponseOfMediaResponse errorType(int? errorType) =>
      call(errorType: errorType);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `BaseResponseOfMediaResponse(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// BaseResponseOfMediaResponse(...).copyWith(id: 12, name: "My name")
  /// ```
  BaseResponseOfMediaResponse call({
    Object? payload = const $CopyWithPlaceholder(),
    Object? success = const $CopyWithPlaceholder(),
    Object? message = const $CopyWithPlaceholder(),
    Object? errors = const $CopyWithPlaceholder(),
    Object? errorType = const $CopyWithPlaceholder(),
  }) {
    return BaseResponseOfMediaResponse(
      payload: payload == const $CopyWithPlaceholder()
          ? _value.payload
          // ignore: cast_nullable_to_non_nullable
          : payload as MediaResponse?,
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

extension $BaseResponseOfMediaResponseCopyWith on BaseResponseOfMediaResponse {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfBaseResponseOfMediaResponse.copyWith(...)` or `instanceOfBaseResponseOfMediaResponse.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$BaseResponseOfMediaResponseCWProxy get copyWith =>
      _$BaseResponseOfMediaResponseCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BaseResponseOfMediaResponse _$BaseResponseOfMediaResponseFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('BaseResponseOfMediaResponse', json, ($checkedConvert) {
  final val = BaseResponseOfMediaResponse(
    payload: $checkedConvert(
      'payload',
      (v) =>
          v == null ? null : MediaResponse.fromJson(v as Map<String, dynamic>),
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

Map<String, dynamic> _$BaseResponseOfMediaResponseToJson(
  BaseResponseOfMediaResponse instance,
) => <String, dynamic>{
  'payload': ?instance.payload?.toJson(),
  'success': ?instance.success,
  'message': ?instance.message,
  'errors': ?instance.errors,
  'errorType': ?instance.errorType,
};
