// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_response_of_list_of_olfactory_family_response.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$BaseResponseOfListOfOlfactoryFamilyResponseCWProxy {
  BaseResponseOfListOfOlfactoryFamilyResponse payload(
    List<OlfactoryFamilyResponse>? payload,
  );

  BaseResponseOfListOfOlfactoryFamilyResponse success(bool? success);

  BaseResponseOfListOfOlfactoryFamilyResponse message(String? message);

  BaseResponseOfListOfOlfactoryFamilyResponse errors(List<String>? errors);

  BaseResponseOfListOfOlfactoryFamilyResponse errorType(
    ResponseErrorType? errorType,
  );

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `BaseResponseOfListOfOlfactoryFamilyResponse(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// BaseResponseOfListOfOlfactoryFamilyResponse(...).copyWith(id: 12, name: "My name")
  /// ```
  BaseResponseOfListOfOlfactoryFamilyResponse call({
    List<OlfactoryFamilyResponse>? payload,
    bool? success,
    String? message,
    List<String>? errors,
    ResponseErrorType? errorType,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfBaseResponseOfListOfOlfactoryFamilyResponse.copyWith(...)` or call `instanceOfBaseResponseOfListOfOlfactoryFamilyResponse.copyWith.fieldName(value)` for a single field.
class _$BaseResponseOfListOfOlfactoryFamilyResponseCWProxyImpl
    implements _$BaseResponseOfListOfOlfactoryFamilyResponseCWProxy {
  const _$BaseResponseOfListOfOlfactoryFamilyResponseCWProxyImpl(this._value);

  final BaseResponseOfListOfOlfactoryFamilyResponse _value;

  @override
  BaseResponseOfListOfOlfactoryFamilyResponse payload(
    List<OlfactoryFamilyResponse>? payload,
  ) => call(payload: payload);

  @override
  BaseResponseOfListOfOlfactoryFamilyResponse success(bool? success) =>
      call(success: success);

  @override
  BaseResponseOfListOfOlfactoryFamilyResponse message(String? message) =>
      call(message: message);

  @override
  BaseResponseOfListOfOlfactoryFamilyResponse errors(List<String>? errors) =>
      call(errors: errors);

  @override
  BaseResponseOfListOfOlfactoryFamilyResponse errorType(
    ResponseErrorType? errorType,
  ) => call(errorType: errorType);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `BaseResponseOfListOfOlfactoryFamilyResponse(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// BaseResponseOfListOfOlfactoryFamilyResponse(...).copyWith(id: 12, name: "My name")
  /// ```
  BaseResponseOfListOfOlfactoryFamilyResponse call({
    Object? payload = const $CopyWithPlaceholder(),
    Object? success = const $CopyWithPlaceholder(),
    Object? message = const $CopyWithPlaceholder(),
    Object? errors = const $CopyWithPlaceholder(),
    Object? errorType = const $CopyWithPlaceholder(),
  }) {
    return BaseResponseOfListOfOlfactoryFamilyResponse(
      payload: payload == const $CopyWithPlaceholder()
          ? _value.payload
          // ignore: cast_nullable_to_non_nullable
          : payload as List<OlfactoryFamilyResponse>?,
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
          : errorType as ResponseErrorType?,
    );
  }
}

extension $BaseResponseOfListOfOlfactoryFamilyResponseCopyWith
    on BaseResponseOfListOfOlfactoryFamilyResponse {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfBaseResponseOfListOfOlfactoryFamilyResponse.copyWith(...)` or `instanceOfBaseResponseOfListOfOlfactoryFamilyResponse.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$BaseResponseOfListOfOlfactoryFamilyResponseCWProxy get copyWith =>
      _$BaseResponseOfListOfOlfactoryFamilyResponseCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BaseResponseOfListOfOlfactoryFamilyResponse
_$BaseResponseOfListOfOlfactoryFamilyResponseFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('BaseResponseOfListOfOlfactoryFamilyResponse', json, (
  $checkedConvert,
) {
  final val = BaseResponseOfListOfOlfactoryFamilyResponse(
    payload: $checkedConvert(
      'payload',
      (v) => (v as List<dynamic>?)
          ?.map(
            (e) => OlfactoryFamilyResponse.fromJson(e as Map<String, dynamic>),
          )
          .toList(),
    ),
    success: $checkedConvert('success', (v) => v as bool?),
    message: $checkedConvert('message', (v) => v as String?),
    errors: $checkedConvert(
      'errors',
      (v) => (v as List<dynamic>?)?.map((e) => e as String).toList(),
    ),
    errorType: $checkedConvert(
      'errorType',
      (v) => $enumDecodeNullable(_$ResponseErrorTypeEnumMap, v),
    ),
  );
  return val;
});

Map<String, dynamic> _$BaseResponseOfListOfOlfactoryFamilyResponseToJson(
  BaseResponseOfListOfOlfactoryFamilyResponse instance,
) => <String, dynamic>{
  'payload': ?instance.payload?.map((e) => e.toJson()).toList(),
  'success': ?instance.success,
  'message': ?instance.message,
  'errors': ?instance.errors,
  'errorType': ?_$ResponseErrorTypeEnumMap[instance.errorType],
};

const _$ResponseErrorTypeEnumMap = {
  ResponseErrorType.badRequest: 'BadRequest',
  ResponseErrorType.unauthorized: 'Unauthorized',
  ResponseErrorType.forbidden: 'Forbidden',
  ResponseErrorType.notFound: 'NotFound',
  ResponseErrorType.conflict: 'Conflict',
  ResponseErrorType.internalError: 'InternalError',
};
