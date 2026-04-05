// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_response_of_revenue_summary_response.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$BaseResponseOfRevenueSummaryResponseCWProxy {
  BaseResponseOfRevenueSummaryResponse payload(RevenueSummaryResponse? payload);

  BaseResponseOfRevenueSummaryResponse success(bool? success);

  BaseResponseOfRevenueSummaryResponse message(String? message);

  BaseResponseOfRevenueSummaryResponse errors(List<String>? errors);

  BaseResponseOfRevenueSummaryResponse errorType(int? errorType);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `BaseResponseOfRevenueSummaryResponse(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// BaseResponseOfRevenueSummaryResponse(...).copyWith(id: 12, name: "My name")
  /// ```
  BaseResponseOfRevenueSummaryResponse call({
    RevenueSummaryResponse? payload,
    bool? success,
    String? message,
    List<String>? errors,
    int? errorType,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfBaseResponseOfRevenueSummaryResponse.copyWith(...)` or call `instanceOfBaseResponseOfRevenueSummaryResponse.copyWith.fieldName(value)` for a single field.
class _$BaseResponseOfRevenueSummaryResponseCWProxyImpl
    implements _$BaseResponseOfRevenueSummaryResponseCWProxy {
  const _$BaseResponseOfRevenueSummaryResponseCWProxyImpl(this._value);

  final BaseResponseOfRevenueSummaryResponse _value;

  @override
  BaseResponseOfRevenueSummaryResponse payload(
    RevenueSummaryResponse? payload,
  ) => call(payload: payload);

  @override
  BaseResponseOfRevenueSummaryResponse success(bool? success) =>
      call(success: success);

  @override
  BaseResponseOfRevenueSummaryResponse message(String? message) =>
      call(message: message);

  @override
  BaseResponseOfRevenueSummaryResponse errors(List<String>? errors) =>
      call(errors: errors);

  @override
  BaseResponseOfRevenueSummaryResponse errorType(int? errorType) =>
      call(errorType: errorType);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `BaseResponseOfRevenueSummaryResponse(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// BaseResponseOfRevenueSummaryResponse(...).copyWith(id: 12, name: "My name")
  /// ```
  BaseResponseOfRevenueSummaryResponse call({
    Object? payload = const $CopyWithPlaceholder(),
    Object? success = const $CopyWithPlaceholder(),
    Object? message = const $CopyWithPlaceholder(),
    Object? errors = const $CopyWithPlaceholder(),
    Object? errorType = const $CopyWithPlaceholder(),
  }) {
    return BaseResponseOfRevenueSummaryResponse(
      payload: payload == const $CopyWithPlaceholder()
          ? _value.payload
          // ignore: cast_nullable_to_non_nullable
          : payload as RevenueSummaryResponse?,
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

extension $BaseResponseOfRevenueSummaryResponseCopyWith
    on BaseResponseOfRevenueSummaryResponse {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfBaseResponseOfRevenueSummaryResponse.copyWith(...)` or `instanceOfBaseResponseOfRevenueSummaryResponse.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$BaseResponseOfRevenueSummaryResponseCWProxy get copyWith =>
      _$BaseResponseOfRevenueSummaryResponseCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BaseResponseOfRevenueSummaryResponse
_$BaseResponseOfRevenueSummaryResponseFromJson(Map<String, dynamic> json) =>
    $checkedCreate('BaseResponseOfRevenueSummaryResponse', json, (
      $checkedConvert,
    ) {
      final val = BaseResponseOfRevenueSummaryResponse(
        payload: $checkedConvert(
          'payload',
          (v) => v == null
              ? null
              : RevenueSummaryResponse.fromJson(v as Map<String, dynamic>),
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

Map<String, dynamic> _$BaseResponseOfRevenueSummaryResponseToJson(
  BaseResponseOfRevenueSummaryResponse instance,
) => <String, dynamic>{
  'payload': ?instance.payload?.toJson(),
  'success': ?instance.success,
  'message': ?instance.message,
  'errors': ?instance.errors,
  'errorType': ?instance.errorType,
};
