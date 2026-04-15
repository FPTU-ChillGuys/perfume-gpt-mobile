// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_response_of_list_of_scent_note_response.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$BaseResponseOfListOfScentNoteResponseCWProxy {
  BaseResponseOfListOfScentNoteResponse payload(
    List<ScentNoteResponse>? payload,
  );

  BaseResponseOfListOfScentNoteResponse success(bool? success);

  BaseResponseOfListOfScentNoteResponse message(String? message);

  BaseResponseOfListOfScentNoteResponse errors(List<String>? errors);

  BaseResponseOfListOfScentNoteResponse errorType(ResponseErrorType? errorType);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `BaseResponseOfListOfScentNoteResponse(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// BaseResponseOfListOfScentNoteResponse(...).copyWith(id: 12, name: "My name")
  /// ```
  BaseResponseOfListOfScentNoteResponse call({
    List<ScentNoteResponse>? payload,
    bool? success,
    String? message,
    List<String>? errors,
    ResponseErrorType? errorType,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfBaseResponseOfListOfScentNoteResponse.copyWith(...)` or call `instanceOfBaseResponseOfListOfScentNoteResponse.copyWith.fieldName(value)` for a single field.
class _$BaseResponseOfListOfScentNoteResponseCWProxyImpl
    implements _$BaseResponseOfListOfScentNoteResponseCWProxy {
  const _$BaseResponseOfListOfScentNoteResponseCWProxyImpl(this._value);

  final BaseResponseOfListOfScentNoteResponse _value;

  @override
  BaseResponseOfListOfScentNoteResponse payload(
    List<ScentNoteResponse>? payload,
  ) => call(payload: payload);

  @override
  BaseResponseOfListOfScentNoteResponse success(bool? success) =>
      call(success: success);

  @override
  BaseResponseOfListOfScentNoteResponse message(String? message) =>
      call(message: message);

  @override
  BaseResponseOfListOfScentNoteResponse errors(List<String>? errors) =>
      call(errors: errors);

  @override
  BaseResponseOfListOfScentNoteResponse errorType(
    ResponseErrorType? errorType,
  ) => call(errorType: errorType);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `BaseResponseOfListOfScentNoteResponse(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// BaseResponseOfListOfScentNoteResponse(...).copyWith(id: 12, name: "My name")
  /// ```
  BaseResponseOfListOfScentNoteResponse call({
    Object? payload = const $CopyWithPlaceholder(),
    Object? success = const $CopyWithPlaceholder(),
    Object? message = const $CopyWithPlaceholder(),
    Object? errors = const $CopyWithPlaceholder(),
    Object? errorType = const $CopyWithPlaceholder(),
  }) {
    return BaseResponseOfListOfScentNoteResponse(
      payload: payload == const $CopyWithPlaceholder()
          ? _value.payload
          // ignore: cast_nullable_to_non_nullable
          : payload as List<ScentNoteResponse>?,
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

extension $BaseResponseOfListOfScentNoteResponseCopyWith
    on BaseResponseOfListOfScentNoteResponse {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfBaseResponseOfListOfScentNoteResponse.copyWith(...)` or `instanceOfBaseResponseOfListOfScentNoteResponse.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$BaseResponseOfListOfScentNoteResponseCWProxy get copyWith =>
      _$BaseResponseOfListOfScentNoteResponseCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BaseResponseOfListOfScentNoteResponse
_$BaseResponseOfListOfScentNoteResponseFromJson(Map<String, dynamic> json) =>
    $checkedCreate('BaseResponseOfListOfScentNoteResponse', json, (
      $checkedConvert,
    ) {
      final val = BaseResponseOfListOfScentNoteResponse(
        payload: $checkedConvert(
          'payload',
          (v) => (v as List<dynamic>?)
              ?.map(
                (e) => ScentNoteResponse.fromJson(e as Map<String, dynamic>),
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

Map<String, dynamic> _$BaseResponseOfListOfScentNoteResponseToJson(
  BaseResponseOfListOfScentNoteResponse instance,
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
