// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_response_of_customer_for_pos_response.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$BaseResponseOfCustomerForPosResponseCWProxy {
  BaseResponseOfCustomerForPosResponse payload(CustomerForPosResponse? payload);

  BaseResponseOfCustomerForPosResponse success(bool? success);

  BaseResponseOfCustomerForPosResponse message(String? message);

  BaseResponseOfCustomerForPosResponse errors(List<String>? errors);

  BaseResponseOfCustomerForPosResponse errorType(int? errorType);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `BaseResponseOfCustomerForPosResponse(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// BaseResponseOfCustomerForPosResponse(...).copyWith(id: 12, name: "My name")
  /// ```
  BaseResponseOfCustomerForPosResponse call({
    CustomerForPosResponse? payload,
    bool? success,
    String? message,
    List<String>? errors,
    int? errorType,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfBaseResponseOfCustomerForPosResponse.copyWith(...)` or call `instanceOfBaseResponseOfCustomerForPosResponse.copyWith.fieldName(value)` for a single field.
class _$BaseResponseOfCustomerForPosResponseCWProxyImpl
    implements _$BaseResponseOfCustomerForPosResponseCWProxy {
  const _$BaseResponseOfCustomerForPosResponseCWProxyImpl(this._value);

  final BaseResponseOfCustomerForPosResponse _value;

  @override
  BaseResponseOfCustomerForPosResponse payload(
    CustomerForPosResponse? payload,
  ) => call(payload: payload);

  @override
  BaseResponseOfCustomerForPosResponse success(bool? success) =>
      call(success: success);

  @override
  BaseResponseOfCustomerForPosResponse message(String? message) =>
      call(message: message);

  @override
  BaseResponseOfCustomerForPosResponse errors(List<String>? errors) =>
      call(errors: errors);

  @override
  BaseResponseOfCustomerForPosResponse errorType(int? errorType) =>
      call(errorType: errorType);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `BaseResponseOfCustomerForPosResponse(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// BaseResponseOfCustomerForPosResponse(...).copyWith(id: 12, name: "My name")
  /// ```
  BaseResponseOfCustomerForPosResponse call({
    Object? payload = const $CopyWithPlaceholder(),
    Object? success = const $CopyWithPlaceholder(),
    Object? message = const $CopyWithPlaceholder(),
    Object? errors = const $CopyWithPlaceholder(),
    Object? errorType = const $CopyWithPlaceholder(),
  }) {
    return BaseResponseOfCustomerForPosResponse(
      payload: payload == const $CopyWithPlaceholder()
          ? _value.payload
          // ignore: cast_nullable_to_non_nullable
          : payload as CustomerForPosResponse?,
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

extension $BaseResponseOfCustomerForPosResponseCopyWith
    on BaseResponseOfCustomerForPosResponse {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfBaseResponseOfCustomerForPosResponse.copyWith(...)` or `instanceOfBaseResponseOfCustomerForPosResponse.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$BaseResponseOfCustomerForPosResponseCWProxy get copyWith =>
      _$BaseResponseOfCustomerForPosResponseCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BaseResponseOfCustomerForPosResponse
_$BaseResponseOfCustomerForPosResponseFromJson(Map<String, dynamic> json) =>
    $checkedCreate('BaseResponseOfCustomerForPosResponse', json, (
      $checkedConvert,
    ) {
      final val = BaseResponseOfCustomerForPosResponse(
        payload: $checkedConvert(
          'payload',
          (v) => v == null
              ? null
              : CustomerForPosResponse.fromJson(v as Map<String, dynamic>),
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

Map<String, dynamic> _$BaseResponseOfCustomerForPosResponseToJson(
  BaseResponseOfCustomerForPosResponse instance,
) => <String, dynamic>{
  'payload': ?instance.payload?.toJson(),
  'success': ?instance.success,
  'message': ?instance.message,
  'errors': ?instance.errors,
  'errorType': ?instance.errorType,
};
