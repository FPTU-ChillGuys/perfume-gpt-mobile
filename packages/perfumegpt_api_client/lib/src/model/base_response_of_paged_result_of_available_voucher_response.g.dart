// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_response_of_paged_result_of_available_voucher_response.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$BaseResponseOfPagedResultOfAvailableVoucherResponseCWProxy {
  BaseResponseOfPagedResultOfAvailableVoucherResponse payload(
    PagedResultOfAvailableVoucherResponse? payload,
  );

  BaseResponseOfPagedResultOfAvailableVoucherResponse success(bool? success);

  BaseResponseOfPagedResultOfAvailableVoucherResponse message(String? message);

  BaseResponseOfPagedResultOfAvailableVoucherResponse errors(
    List<String>? errors,
  );

  BaseResponseOfPagedResultOfAvailableVoucherResponse errorType(int? errorType);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `BaseResponseOfPagedResultOfAvailableVoucherResponse(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// BaseResponseOfPagedResultOfAvailableVoucherResponse(...).copyWith(id: 12, name: "My name")
  /// ```
  BaseResponseOfPagedResultOfAvailableVoucherResponse call({
    PagedResultOfAvailableVoucherResponse? payload,
    bool? success,
    String? message,
    List<String>? errors,
    int? errorType,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfBaseResponseOfPagedResultOfAvailableVoucherResponse.copyWith(...)` or call `instanceOfBaseResponseOfPagedResultOfAvailableVoucherResponse.copyWith.fieldName(value)` for a single field.
class _$BaseResponseOfPagedResultOfAvailableVoucherResponseCWProxyImpl
    implements _$BaseResponseOfPagedResultOfAvailableVoucherResponseCWProxy {
  const _$BaseResponseOfPagedResultOfAvailableVoucherResponseCWProxyImpl(
    this._value,
  );

  final BaseResponseOfPagedResultOfAvailableVoucherResponse _value;

  @override
  BaseResponseOfPagedResultOfAvailableVoucherResponse payload(
    PagedResultOfAvailableVoucherResponse? payload,
  ) => call(payload: payload);

  @override
  BaseResponseOfPagedResultOfAvailableVoucherResponse success(bool? success) =>
      call(success: success);

  @override
  BaseResponseOfPagedResultOfAvailableVoucherResponse message(
    String? message,
  ) => call(message: message);

  @override
  BaseResponseOfPagedResultOfAvailableVoucherResponse errors(
    List<String>? errors,
  ) => call(errors: errors);

  @override
  BaseResponseOfPagedResultOfAvailableVoucherResponse errorType(
    int? errorType,
  ) => call(errorType: errorType);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `BaseResponseOfPagedResultOfAvailableVoucherResponse(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// BaseResponseOfPagedResultOfAvailableVoucherResponse(...).copyWith(id: 12, name: "My name")
  /// ```
  BaseResponseOfPagedResultOfAvailableVoucherResponse call({
    Object? payload = const $CopyWithPlaceholder(),
    Object? success = const $CopyWithPlaceholder(),
    Object? message = const $CopyWithPlaceholder(),
    Object? errors = const $CopyWithPlaceholder(),
    Object? errorType = const $CopyWithPlaceholder(),
  }) {
    return BaseResponseOfPagedResultOfAvailableVoucherResponse(
      payload: payload == const $CopyWithPlaceholder()
          ? _value.payload
          // ignore: cast_nullable_to_non_nullable
          : payload as PagedResultOfAvailableVoucherResponse?,
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

extension $BaseResponseOfPagedResultOfAvailableVoucherResponseCopyWith
    on BaseResponseOfPagedResultOfAvailableVoucherResponse {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfBaseResponseOfPagedResultOfAvailableVoucherResponse.copyWith(...)` or `instanceOfBaseResponseOfPagedResultOfAvailableVoucherResponse.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$BaseResponseOfPagedResultOfAvailableVoucherResponseCWProxy get copyWith =>
      _$BaseResponseOfPagedResultOfAvailableVoucherResponseCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BaseResponseOfPagedResultOfAvailableVoucherResponse
_$BaseResponseOfPagedResultOfAvailableVoucherResponseFromJson(
  Map<String, dynamic> json,
) => $checkedCreate(
  'BaseResponseOfPagedResultOfAvailableVoucherResponse',
  json,
  ($checkedConvert) {
    final val = BaseResponseOfPagedResultOfAvailableVoucherResponse(
      payload: $checkedConvert(
        'payload',
        (v) => v == null
            ? null
            : PagedResultOfAvailableVoucherResponse.fromJson(
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
_$BaseResponseOfPagedResultOfAvailableVoucherResponseToJson(
  BaseResponseOfPagedResultOfAvailableVoucherResponse instance,
) => <String, dynamic>{
  'payload': ?instance.payload?.toJson(),
  'success': ?instance.success,
  'message': ?instance.message,
  'errors': ?instance.errors,
  'errorType': ?instance.errorType,
};
