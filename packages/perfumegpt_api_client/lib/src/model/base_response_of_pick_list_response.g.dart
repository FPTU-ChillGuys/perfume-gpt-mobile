// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_response_of_pick_list_response.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$BaseResponseOfPickListResponseCWProxy {
  BaseResponseOfPickListResponse payload(PickListResponse? payload);

  BaseResponseOfPickListResponse success(bool? success);

  BaseResponseOfPickListResponse message(String? message);

  BaseResponseOfPickListResponse errors(List<String>? errors);

  BaseResponseOfPickListResponse errorType(int? errorType);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `BaseResponseOfPickListResponse(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// BaseResponseOfPickListResponse(...).copyWith(id: 12, name: "My name")
  /// ```
  BaseResponseOfPickListResponse call({
    PickListResponse? payload,
    bool? success,
    String? message,
    List<String>? errors,
    int? errorType,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfBaseResponseOfPickListResponse.copyWith(...)` or call `instanceOfBaseResponseOfPickListResponse.copyWith.fieldName(value)` for a single field.
class _$BaseResponseOfPickListResponseCWProxyImpl
    implements _$BaseResponseOfPickListResponseCWProxy {
  const _$BaseResponseOfPickListResponseCWProxyImpl(this._value);

  final BaseResponseOfPickListResponse _value;

  @override
  BaseResponseOfPickListResponse payload(PickListResponse? payload) =>
      call(payload: payload);

  @override
  BaseResponseOfPickListResponse success(bool? success) =>
      call(success: success);

  @override
  BaseResponseOfPickListResponse message(String? message) =>
      call(message: message);

  @override
  BaseResponseOfPickListResponse errors(List<String>? errors) =>
      call(errors: errors);

  @override
  BaseResponseOfPickListResponse errorType(int? errorType) =>
      call(errorType: errorType);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `BaseResponseOfPickListResponse(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// BaseResponseOfPickListResponse(...).copyWith(id: 12, name: "My name")
  /// ```
  BaseResponseOfPickListResponse call({
    Object? payload = const $CopyWithPlaceholder(),
    Object? success = const $CopyWithPlaceholder(),
    Object? message = const $CopyWithPlaceholder(),
    Object? errors = const $CopyWithPlaceholder(),
    Object? errorType = const $CopyWithPlaceholder(),
  }) {
    return BaseResponseOfPickListResponse(
      payload: payload == const $CopyWithPlaceholder()
          ? _value.payload
          // ignore: cast_nullable_to_non_nullable
          : payload as PickListResponse?,
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

extension $BaseResponseOfPickListResponseCopyWith
    on BaseResponseOfPickListResponse {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfBaseResponseOfPickListResponse.copyWith(...)` or `instanceOfBaseResponseOfPickListResponse.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$BaseResponseOfPickListResponseCWProxy get copyWith =>
      _$BaseResponseOfPickListResponseCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BaseResponseOfPickListResponse _$BaseResponseOfPickListResponseFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('BaseResponseOfPickListResponse', json, ($checkedConvert) {
  final val = BaseResponseOfPickListResponse(
    payload: $checkedConvert(
      'payload',
      (v) => v == null
          ? null
          : PickListResponse.fromJson(v as Map<String, dynamic>),
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

Map<String, dynamic> _$BaseResponseOfPickListResponseToJson(
  BaseResponseOfPickListResponse instance,
) => <String, dynamic>{
  'payload': ?instance.payload?.toJson(),
  'success': ?instance.success,
  'message': ?instance.message,
  'errors': ?instance.errors,
  'errorType': ?instance.errorType,
};
