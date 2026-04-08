// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_response_of_bulk_action_result_of_list_of_temporary_media_response.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$BaseResponseOfBulkActionResultOfListOfTemporaryMediaResponseCWProxy {
  BaseResponseOfBulkActionResultOfListOfTemporaryMediaResponse payload(
    BulkActionResultOfListOfTemporaryMediaResponse? payload,
  );

  BaseResponseOfBulkActionResultOfListOfTemporaryMediaResponse success(
    bool? success,
  );

  BaseResponseOfBulkActionResultOfListOfTemporaryMediaResponse message(
    String? message,
  );

  BaseResponseOfBulkActionResultOfListOfTemporaryMediaResponse errors(
    List<String>? errors,
  );

  BaseResponseOfBulkActionResultOfListOfTemporaryMediaResponse errorType(
    int? errorType,
  );

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `BaseResponseOfBulkActionResultOfListOfTemporaryMediaResponse(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// BaseResponseOfBulkActionResultOfListOfTemporaryMediaResponse(...).copyWith(id: 12, name: "My name")
  /// ```
  BaseResponseOfBulkActionResultOfListOfTemporaryMediaResponse call({
    BulkActionResultOfListOfTemporaryMediaResponse? payload,
    bool? success,
    String? message,
    List<String>? errors,
    int? errorType,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfBaseResponseOfBulkActionResultOfListOfTemporaryMediaResponse.copyWith(...)` or call `instanceOfBaseResponseOfBulkActionResultOfListOfTemporaryMediaResponse.copyWith.fieldName(value)` for a single field.
class _$BaseResponseOfBulkActionResultOfListOfTemporaryMediaResponseCWProxyImpl
    implements
        _$BaseResponseOfBulkActionResultOfListOfTemporaryMediaResponseCWProxy {
  const _$BaseResponseOfBulkActionResultOfListOfTemporaryMediaResponseCWProxyImpl(
    this._value,
  );

  final BaseResponseOfBulkActionResultOfListOfTemporaryMediaResponse _value;

  @override
  BaseResponseOfBulkActionResultOfListOfTemporaryMediaResponse payload(
    BulkActionResultOfListOfTemporaryMediaResponse? payload,
  ) => call(payload: payload);

  @override
  BaseResponseOfBulkActionResultOfListOfTemporaryMediaResponse success(
    bool? success,
  ) => call(success: success);

  @override
  BaseResponseOfBulkActionResultOfListOfTemporaryMediaResponse message(
    String? message,
  ) => call(message: message);

  @override
  BaseResponseOfBulkActionResultOfListOfTemporaryMediaResponse errors(
    List<String>? errors,
  ) => call(errors: errors);

  @override
  BaseResponseOfBulkActionResultOfListOfTemporaryMediaResponse errorType(
    int? errorType,
  ) => call(errorType: errorType);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `BaseResponseOfBulkActionResultOfListOfTemporaryMediaResponse(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// BaseResponseOfBulkActionResultOfListOfTemporaryMediaResponse(...).copyWith(id: 12, name: "My name")
  /// ```
  BaseResponseOfBulkActionResultOfListOfTemporaryMediaResponse call({
    Object? payload = const $CopyWithPlaceholder(),
    Object? success = const $CopyWithPlaceholder(),
    Object? message = const $CopyWithPlaceholder(),
    Object? errors = const $CopyWithPlaceholder(),
    Object? errorType = const $CopyWithPlaceholder(),
  }) {
    return BaseResponseOfBulkActionResultOfListOfTemporaryMediaResponse(
      payload: payload == const $CopyWithPlaceholder()
          ? _value.payload
          // ignore: cast_nullable_to_non_nullable
          : payload as BulkActionResultOfListOfTemporaryMediaResponse?,
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

extension $BaseResponseOfBulkActionResultOfListOfTemporaryMediaResponseCopyWith
    on BaseResponseOfBulkActionResultOfListOfTemporaryMediaResponse {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfBaseResponseOfBulkActionResultOfListOfTemporaryMediaResponse.copyWith(...)` or `instanceOfBaseResponseOfBulkActionResultOfListOfTemporaryMediaResponse.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$BaseResponseOfBulkActionResultOfListOfTemporaryMediaResponseCWProxy
  get copyWith =>
      _$BaseResponseOfBulkActionResultOfListOfTemporaryMediaResponseCWProxyImpl(
        this,
      );
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BaseResponseOfBulkActionResultOfListOfTemporaryMediaResponse
_$BaseResponseOfBulkActionResultOfListOfTemporaryMediaResponseFromJson(
  Map<String, dynamic> json,
) => $checkedCreate(
  'BaseResponseOfBulkActionResultOfListOfTemporaryMediaResponse',
  json,
  ($checkedConvert) {
    final val = BaseResponseOfBulkActionResultOfListOfTemporaryMediaResponse(
      payload: $checkedConvert(
        'payload',
        (v) => v == null
            ? null
            : BulkActionResultOfListOfTemporaryMediaResponse.fromJson(
                v as Map<String, dynamic>,
              ),
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
  },
);

Map<String, dynamic>
_$BaseResponseOfBulkActionResultOfListOfTemporaryMediaResponseToJson(
  BaseResponseOfBulkActionResultOfListOfTemporaryMediaResponse instance,
) => <String, dynamic>{
  'payload': ?instance.payload?.toJson(),
  'success': ?instance.success,
  'message': ?instance.message,
  'errors': ?instance.errors,
  'errorType': ?instance.errorType,
};
