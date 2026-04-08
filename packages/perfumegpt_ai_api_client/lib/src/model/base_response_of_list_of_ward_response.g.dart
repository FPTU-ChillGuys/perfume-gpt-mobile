// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_response_of_list_of_ward_response.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$BaseResponseOfListOfWardResponseCWProxy {
  BaseResponseOfListOfWardResponse payload(List<WardResponse>? payload);

  BaseResponseOfListOfWardResponse success(bool? success);

  BaseResponseOfListOfWardResponse message(String? message);

  BaseResponseOfListOfWardResponse errors(List<String>? errors);

  BaseResponseOfListOfWardResponse errorType(int? errorType);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `BaseResponseOfListOfWardResponse(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// BaseResponseOfListOfWardResponse(...).copyWith(id: 12, name: "My name")
  /// ```
  BaseResponseOfListOfWardResponse call({
    List<WardResponse>? payload,
    bool? success,
    String? message,
    List<String>? errors,
    int? errorType,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfBaseResponseOfListOfWardResponse.copyWith(...)` or call `instanceOfBaseResponseOfListOfWardResponse.copyWith.fieldName(value)` for a single field.
class _$BaseResponseOfListOfWardResponseCWProxyImpl
    implements _$BaseResponseOfListOfWardResponseCWProxy {
  const _$BaseResponseOfListOfWardResponseCWProxyImpl(this._value);

  final BaseResponseOfListOfWardResponse _value;

  @override
  BaseResponseOfListOfWardResponse payload(List<WardResponse>? payload) =>
      call(payload: payload);

  @override
  BaseResponseOfListOfWardResponse success(bool? success) =>
      call(success: success);

  @override
  BaseResponseOfListOfWardResponse message(String? message) =>
      call(message: message);

  @override
  BaseResponseOfListOfWardResponse errors(List<String>? errors) =>
      call(errors: errors);

  @override
  BaseResponseOfListOfWardResponse errorType(int? errorType) =>
      call(errorType: errorType);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `BaseResponseOfListOfWardResponse(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// BaseResponseOfListOfWardResponse(...).copyWith(id: 12, name: "My name")
  /// ```
  BaseResponseOfListOfWardResponse call({
    Object? payload = const $CopyWithPlaceholder(),
    Object? success = const $CopyWithPlaceholder(),
    Object? message = const $CopyWithPlaceholder(),
    Object? errors = const $CopyWithPlaceholder(),
    Object? errorType = const $CopyWithPlaceholder(),
  }) {
    return BaseResponseOfListOfWardResponse(
      payload: payload == const $CopyWithPlaceholder()
          ? _value.payload
          // ignore: cast_nullable_to_non_nullable
          : payload as List<WardResponse>?,
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

extension $BaseResponseOfListOfWardResponseCopyWith
    on BaseResponseOfListOfWardResponse {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfBaseResponseOfListOfWardResponse.copyWith(...)` or `instanceOfBaseResponseOfListOfWardResponse.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$BaseResponseOfListOfWardResponseCWProxy get copyWith =>
      _$BaseResponseOfListOfWardResponseCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BaseResponseOfListOfWardResponse _$BaseResponseOfListOfWardResponseFromJson(
  Map<String, dynamic> json,
) =>
    $checkedCreate('BaseResponseOfListOfWardResponse', json, ($checkedConvert) {
      final val = BaseResponseOfListOfWardResponse(
        payload: $checkedConvert(
          'payload',
          (v) => (v as List<dynamic>?)
              ?.map((e) => WardResponse.fromJson(e as Map<String, dynamic>))
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

Map<String, dynamic> _$BaseResponseOfListOfWardResponseToJson(
  BaseResponseOfListOfWardResponse instance,
) => <String, dynamic>{
  'payload': ?instance.payload?.map((e) => e.toJson()).toList(),
  'success': ?instance.success,
  'message': ?instance.message,
  'errors': ?instance.errors,
  'errorType': ?instance.errorType,
};
