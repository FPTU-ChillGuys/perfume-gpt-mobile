// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_response_of_paged_result_of_voucher_response.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$BaseResponseOfPagedResultOfVoucherResponseCWProxy {
  BaseResponseOfPagedResultOfVoucherResponse payload(
    PagedResultOfVoucherResponse? payload,
  );

  BaseResponseOfPagedResultOfVoucherResponse success(bool? success);

  BaseResponseOfPagedResultOfVoucherResponse message(String? message);

  BaseResponseOfPagedResultOfVoucherResponse errors(List<String>? errors);

  BaseResponseOfPagedResultOfVoucherResponse errorType(int? errorType);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `BaseResponseOfPagedResultOfVoucherResponse(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// BaseResponseOfPagedResultOfVoucherResponse(...).copyWith(id: 12, name: "My name")
  /// ```
  BaseResponseOfPagedResultOfVoucherResponse call({
    PagedResultOfVoucherResponse? payload,
    bool? success,
    String? message,
    List<String>? errors,
    int? errorType,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfBaseResponseOfPagedResultOfVoucherResponse.copyWith(...)` or call `instanceOfBaseResponseOfPagedResultOfVoucherResponse.copyWith.fieldName(value)` for a single field.
class _$BaseResponseOfPagedResultOfVoucherResponseCWProxyImpl
    implements _$BaseResponseOfPagedResultOfVoucherResponseCWProxy {
  const _$BaseResponseOfPagedResultOfVoucherResponseCWProxyImpl(this._value);

  final BaseResponseOfPagedResultOfVoucherResponse _value;

  @override
  BaseResponseOfPagedResultOfVoucherResponse payload(
    PagedResultOfVoucherResponse? payload,
  ) => call(payload: payload);

  @override
  BaseResponseOfPagedResultOfVoucherResponse success(bool? success) =>
      call(success: success);

  @override
  BaseResponseOfPagedResultOfVoucherResponse message(String? message) =>
      call(message: message);

  @override
  BaseResponseOfPagedResultOfVoucherResponse errors(List<String>? errors) =>
      call(errors: errors);

  @override
  BaseResponseOfPagedResultOfVoucherResponse errorType(int? errorType) =>
      call(errorType: errorType);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `BaseResponseOfPagedResultOfVoucherResponse(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// BaseResponseOfPagedResultOfVoucherResponse(...).copyWith(id: 12, name: "My name")
  /// ```
  BaseResponseOfPagedResultOfVoucherResponse call({
    Object? payload = const $CopyWithPlaceholder(),
    Object? success = const $CopyWithPlaceholder(),
    Object? message = const $CopyWithPlaceholder(),
    Object? errors = const $CopyWithPlaceholder(),
    Object? errorType = const $CopyWithPlaceholder(),
  }) {
    return BaseResponseOfPagedResultOfVoucherResponse(
      payload: payload == const $CopyWithPlaceholder()
          ? _value.payload
          // ignore: cast_nullable_to_non_nullable
          : payload as PagedResultOfVoucherResponse?,
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

extension $BaseResponseOfPagedResultOfVoucherResponseCopyWith
    on BaseResponseOfPagedResultOfVoucherResponse {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfBaseResponseOfPagedResultOfVoucherResponse.copyWith(...)` or `instanceOfBaseResponseOfPagedResultOfVoucherResponse.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$BaseResponseOfPagedResultOfVoucherResponseCWProxy get copyWith =>
      _$BaseResponseOfPagedResultOfVoucherResponseCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BaseResponseOfPagedResultOfVoucherResponse
_$BaseResponseOfPagedResultOfVoucherResponseFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('BaseResponseOfPagedResultOfVoucherResponse', json, (
  $checkedConvert,
) {
  final val = BaseResponseOfPagedResultOfVoucherResponse(
    payload: $checkedConvert(
      'payload',
      (v) => v == null
          ? null
          : PagedResultOfVoucherResponse.fromJson(v as Map<String, dynamic>),
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

Map<String, dynamic> _$BaseResponseOfPagedResultOfVoucherResponseToJson(
  BaseResponseOfPagedResultOfVoucherResponse instance,
) => <String, dynamic>{
  'payload': ?instance.payload?.toJson(),
  'success': ?instance.success,
  'message': ?instance.message,
  'errors': ?instance.errors,
  'errorType': ?instance.errorType,
};
