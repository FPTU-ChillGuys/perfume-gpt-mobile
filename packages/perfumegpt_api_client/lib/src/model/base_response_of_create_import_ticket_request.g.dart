// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_response_of_create_import_ticket_request.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$BaseResponseOfCreateImportTicketRequestCWProxy {
  BaseResponseOfCreateImportTicketRequest payload(
    CreateImportTicketRequest? payload,
  );

  BaseResponseOfCreateImportTicketRequest success(bool? success);

  BaseResponseOfCreateImportTicketRequest message(String? message);

  BaseResponseOfCreateImportTicketRequest errors(List<String>? errors);

  BaseResponseOfCreateImportTicketRequest errorType(
    ResponseErrorType? errorType,
  );

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `BaseResponseOfCreateImportTicketRequest(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// BaseResponseOfCreateImportTicketRequest(...).copyWith(id: 12, name: "My name")
  /// ```
  BaseResponseOfCreateImportTicketRequest call({
    CreateImportTicketRequest? payload,
    bool? success,
    String? message,
    List<String>? errors,
    ResponseErrorType? errorType,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfBaseResponseOfCreateImportTicketRequest.copyWith(...)` or call `instanceOfBaseResponseOfCreateImportTicketRequest.copyWith.fieldName(value)` for a single field.
class _$BaseResponseOfCreateImportTicketRequestCWProxyImpl
    implements _$BaseResponseOfCreateImportTicketRequestCWProxy {
  const _$BaseResponseOfCreateImportTicketRequestCWProxyImpl(this._value);

  final BaseResponseOfCreateImportTicketRequest _value;

  @override
  BaseResponseOfCreateImportTicketRequest payload(
    CreateImportTicketRequest? payload,
  ) => call(payload: payload);

  @override
  BaseResponseOfCreateImportTicketRequest success(bool? success) =>
      call(success: success);

  @override
  BaseResponseOfCreateImportTicketRequest message(String? message) =>
      call(message: message);

  @override
  BaseResponseOfCreateImportTicketRequest errors(List<String>? errors) =>
      call(errors: errors);

  @override
  BaseResponseOfCreateImportTicketRequest errorType(
    ResponseErrorType? errorType,
  ) => call(errorType: errorType);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `BaseResponseOfCreateImportTicketRequest(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// BaseResponseOfCreateImportTicketRequest(...).copyWith(id: 12, name: "My name")
  /// ```
  BaseResponseOfCreateImportTicketRequest call({
    Object? payload = const $CopyWithPlaceholder(),
    Object? success = const $CopyWithPlaceholder(),
    Object? message = const $CopyWithPlaceholder(),
    Object? errors = const $CopyWithPlaceholder(),
    Object? errorType = const $CopyWithPlaceholder(),
  }) {
    return BaseResponseOfCreateImportTicketRequest(
      payload: payload == const $CopyWithPlaceholder()
          ? _value.payload
          // ignore: cast_nullable_to_non_nullable
          : payload as CreateImportTicketRequest?,
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

extension $BaseResponseOfCreateImportTicketRequestCopyWith
    on BaseResponseOfCreateImportTicketRequest {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfBaseResponseOfCreateImportTicketRequest.copyWith(...)` or `instanceOfBaseResponseOfCreateImportTicketRequest.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$BaseResponseOfCreateImportTicketRequestCWProxy get copyWith =>
      _$BaseResponseOfCreateImportTicketRequestCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BaseResponseOfCreateImportTicketRequest
_$BaseResponseOfCreateImportTicketRequestFromJson(Map<String, dynamic> json) =>
    $checkedCreate('BaseResponseOfCreateImportTicketRequest', json, (
      $checkedConvert,
    ) {
      final val = BaseResponseOfCreateImportTicketRequest(
        payload: $checkedConvert(
          'payload',
          (v) => v == null
              ? null
              : CreateImportTicketRequest.fromJson(v as Map<String, dynamic>),
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

Map<String, dynamic> _$BaseResponseOfCreateImportTicketRequestToJson(
  BaseResponseOfCreateImportTicketRequest instance,
) => <String, dynamic>{
  'payload': ?instance.payload?.toJson(),
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
