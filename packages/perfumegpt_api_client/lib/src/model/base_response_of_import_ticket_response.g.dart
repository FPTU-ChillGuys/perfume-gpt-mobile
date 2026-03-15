// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_response_of_import_ticket_response.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$BaseResponseOfImportTicketResponseCWProxy {
  BaseResponseOfImportTicketResponse payload(ImportTicketResponse? payload);

  BaseResponseOfImportTicketResponse success(bool? success);

  BaseResponseOfImportTicketResponse message(String? message);

  BaseResponseOfImportTicketResponse errors(List<String>? errors);

  BaseResponseOfImportTicketResponse errorType(ResponseErrorType? errorType);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `BaseResponseOfImportTicketResponse(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// BaseResponseOfImportTicketResponse(...).copyWith(id: 12, name: "My name")
  /// ````
  BaseResponseOfImportTicketResponse call({
    ImportTicketResponse? payload,
    bool? success,
    String? message,
    List<String>? errors,
    ResponseErrorType? errorType,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfBaseResponseOfImportTicketResponse.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfBaseResponseOfImportTicketResponse.copyWith.fieldName(...)`
class _$BaseResponseOfImportTicketResponseCWProxyImpl
    implements _$BaseResponseOfImportTicketResponseCWProxy {
  const _$BaseResponseOfImportTicketResponseCWProxyImpl(this._value);

  final BaseResponseOfImportTicketResponse _value;

  @override
  BaseResponseOfImportTicketResponse payload(ImportTicketResponse? payload) =>
      this(payload: payload);

  @override
  BaseResponseOfImportTicketResponse success(bool? success) =>
      this(success: success);

  @override
  BaseResponseOfImportTicketResponse message(String? message) =>
      this(message: message);

  @override
  BaseResponseOfImportTicketResponse errors(List<String>? errors) =>
      this(errors: errors);

  @override
  BaseResponseOfImportTicketResponse errorType(ResponseErrorType? errorType) =>
      this(errorType: errorType);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `BaseResponseOfImportTicketResponse(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// BaseResponseOfImportTicketResponse(...).copyWith(id: 12, name: "My name")
  /// ````
  BaseResponseOfImportTicketResponse call({
    Object? payload = const $CopyWithPlaceholder(),
    Object? success = const $CopyWithPlaceholder(),
    Object? message = const $CopyWithPlaceholder(),
    Object? errors = const $CopyWithPlaceholder(),
    Object? errorType = const $CopyWithPlaceholder(),
  }) {
    return BaseResponseOfImportTicketResponse(
      payload: payload == const $CopyWithPlaceholder()
          ? _value.payload
          // ignore: cast_nullable_to_non_nullable
          : payload as ImportTicketResponse?,
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

extension $BaseResponseOfImportTicketResponseCopyWith
    on BaseResponseOfImportTicketResponse {
  /// Returns a callable class that can be used as follows: `instanceOfBaseResponseOfImportTicketResponse.copyWith(...)` or like so:`instanceOfBaseResponseOfImportTicketResponse.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$BaseResponseOfImportTicketResponseCWProxy get copyWith =>
      _$BaseResponseOfImportTicketResponseCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BaseResponseOfImportTicketResponse _$BaseResponseOfImportTicketResponseFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('BaseResponseOfImportTicketResponse', json, (
  $checkedConvert,
) {
  final val = BaseResponseOfImportTicketResponse(
    payload: $checkedConvert(
      'payload',
      (v) => v == null
          ? null
          : ImportTicketResponse.fromJson(v as Map<String, dynamic>),
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

Map<String, dynamic> _$BaseResponseOfImportTicketResponseToJson(
  BaseResponseOfImportTicketResponse instance,
) => <String, dynamic>{
  'payload': ?instance.payload?.toJson(),
  'success': ?instance.success,
  'message': ?instance.message,
  'errors': ?instance.errors,
  'errorType': ?_$ResponseErrorTypeEnumMap[instance.errorType],
};

const _$ResponseErrorTypeEnumMap = {
  ResponseErrorType.none: 'None',
  ResponseErrorType.badRequest: 'BadRequest',
  ResponseErrorType.unauthorized: 'Unauthorized',
  ResponseErrorType.forbidden: 'Forbidden',
  ResponseErrorType.notFound: 'NotFound',
  ResponseErrorType.conflict: 'Conflict',
  ResponseErrorType.internalError: 'InternalError',
};
