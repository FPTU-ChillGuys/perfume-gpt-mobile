// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_response_of_olfactory_family_response.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$BaseResponseOfOlfactoryFamilyResponseCWProxy {
  BaseResponseOfOlfactoryFamilyResponse payload(
    OlfactoryFamilyResponse? payload,
  );

  BaseResponseOfOlfactoryFamilyResponse success(bool? success);

  BaseResponseOfOlfactoryFamilyResponse message(String? message);

  BaseResponseOfOlfactoryFamilyResponse errors(List<String>? errors);

  BaseResponseOfOlfactoryFamilyResponse errorType(int? errorType);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `BaseResponseOfOlfactoryFamilyResponse(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// BaseResponseOfOlfactoryFamilyResponse(...).copyWith(id: 12, name: "My name")
  /// ```
  BaseResponseOfOlfactoryFamilyResponse call({
    OlfactoryFamilyResponse? payload,
    bool? success,
    String? message,
    List<String>? errors,
    int? errorType,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfBaseResponseOfOlfactoryFamilyResponse.copyWith(...)` or call `instanceOfBaseResponseOfOlfactoryFamilyResponse.copyWith.fieldName(value)` for a single field.
class _$BaseResponseOfOlfactoryFamilyResponseCWProxyImpl
    implements _$BaseResponseOfOlfactoryFamilyResponseCWProxy {
  const _$BaseResponseOfOlfactoryFamilyResponseCWProxyImpl(this._value);

  final BaseResponseOfOlfactoryFamilyResponse _value;

  @override
  BaseResponseOfOlfactoryFamilyResponse payload(
    OlfactoryFamilyResponse? payload,
  ) => call(payload: payload);

  @override
  BaseResponseOfOlfactoryFamilyResponse success(bool? success) =>
      call(success: success);

  @override
  BaseResponseOfOlfactoryFamilyResponse message(String? message) =>
      call(message: message);

  @override
  BaseResponseOfOlfactoryFamilyResponse errors(List<String>? errors) =>
      call(errors: errors);

  @override
  BaseResponseOfOlfactoryFamilyResponse errorType(int? errorType) =>
      call(errorType: errorType);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `BaseResponseOfOlfactoryFamilyResponse(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// BaseResponseOfOlfactoryFamilyResponse(...).copyWith(id: 12, name: "My name")
  /// ```
  BaseResponseOfOlfactoryFamilyResponse call({
    Object? payload = const $CopyWithPlaceholder(),
    Object? success = const $CopyWithPlaceholder(),
    Object? message = const $CopyWithPlaceholder(),
    Object? errors = const $CopyWithPlaceholder(),
    Object? errorType = const $CopyWithPlaceholder(),
  }) {
    return BaseResponseOfOlfactoryFamilyResponse(
      payload: payload == const $CopyWithPlaceholder()
          ? _value.payload
          // ignore: cast_nullable_to_non_nullable
          : payload as OlfactoryFamilyResponse?,
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

extension $BaseResponseOfOlfactoryFamilyResponseCopyWith
    on BaseResponseOfOlfactoryFamilyResponse {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfBaseResponseOfOlfactoryFamilyResponse.copyWith(...)` or `instanceOfBaseResponseOfOlfactoryFamilyResponse.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$BaseResponseOfOlfactoryFamilyResponseCWProxy get copyWith =>
      _$BaseResponseOfOlfactoryFamilyResponseCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BaseResponseOfOlfactoryFamilyResponse
_$BaseResponseOfOlfactoryFamilyResponseFromJson(Map<String, dynamic> json) =>
    $checkedCreate('BaseResponseOfOlfactoryFamilyResponse', json, (
      $checkedConvert,
    ) {
      final val = BaseResponseOfOlfactoryFamilyResponse(
        payload: $checkedConvert(
          'payload',
          (v) => v == null
              ? null
              : OlfactoryFamilyResponse.fromJson(v as Map<String, dynamic>),
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

Map<String, dynamic> _$BaseResponseOfOlfactoryFamilyResponseToJson(
  BaseResponseOfOlfactoryFamilyResponse instance,
) => <String, dynamic>{
  'payload': ?instance.payload?.toJson(),
  'success': ?instance.success,
  'message': ?instance.message,
  'errors': ?instance.errors,
  'errorType': ?instance.errorType,
};
