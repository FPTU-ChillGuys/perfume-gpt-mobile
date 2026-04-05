// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_response_of_admin_dashboard_overview_response.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$BaseResponseOfAdminDashboardOverviewResponseCWProxy {
  BaseResponseOfAdminDashboardOverviewResponse payload(
    AdminDashboardOverviewResponse? payload,
  );

  BaseResponseOfAdminDashboardOverviewResponse success(bool? success);

  BaseResponseOfAdminDashboardOverviewResponse message(String? message);

  BaseResponseOfAdminDashboardOverviewResponse errors(List<String>? errors);

  BaseResponseOfAdminDashboardOverviewResponse errorType(int? errorType);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `BaseResponseOfAdminDashboardOverviewResponse(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// BaseResponseOfAdminDashboardOverviewResponse(...).copyWith(id: 12, name: "My name")
  /// ```
  BaseResponseOfAdminDashboardOverviewResponse call({
    AdminDashboardOverviewResponse? payload,
    bool? success,
    String? message,
    List<String>? errors,
    int? errorType,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfBaseResponseOfAdminDashboardOverviewResponse.copyWith(...)` or call `instanceOfBaseResponseOfAdminDashboardOverviewResponse.copyWith.fieldName(value)` for a single field.
class _$BaseResponseOfAdminDashboardOverviewResponseCWProxyImpl
    implements _$BaseResponseOfAdminDashboardOverviewResponseCWProxy {
  const _$BaseResponseOfAdminDashboardOverviewResponseCWProxyImpl(this._value);

  final BaseResponseOfAdminDashboardOverviewResponse _value;

  @override
  BaseResponseOfAdminDashboardOverviewResponse payload(
    AdminDashboardOverviewResponse? payload,
  ) => call(payload: payload);

  @override
  BaseResponseOfAdminDashboardOverviewResponse success(bool? success) =>
      call(success: success);

  @override
  BaseResponseOfAdminDashboardOverviewResponse message(String? message) =>
      call(message: message);

  @override
  BaseResponseOfAdminDashboardOverviewResponse errors(List<String>? errors) =>
      call(errors: errors);

  @override
  BaseResponseOfAdminDashboardOverviewResponse errorType(int? errorType) =>
      call(errorType: errorType);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `BaseResponseOfAdminDashboardOverviewResponse(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// BaseResponseOfAdminDashboardOverviewResponse(...).copyWith(id: 12, name: "My name")
  /// ```
  BaseResponseOfAdminDashboardOverviewResponse call({
    Object? payload = const $CopyWithPlaceholder(),
    Object? success = const $CopyWithPlaceholder(),
    Object? message = const $CopyWithPlaceholder(),
    Object? errors = const $CopyWithPlaceholder(),
    Object? errorType = const $CopyWithPlaceholder(),
  }) {
    return BaseResponseOfAdminDashboardOverviewResponse(
      payload: payload == const $CopyWithPlaceholder()
          ? _value.payload
          // ignore: cast_nullable_to_non_nullable
          : payload as AdminDashboardOverviewResponse?,
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

extension $BaseResponseOfAdminDashboardOverviewResponseCopyWith
    on BaseResponseOfAdminDashboardOverviewResponse {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfBaseResponseOfAdminDashboardOverviewResponse.copyWith(...)` or `instanceOfBaseResponseOfAdminDashboardOverviewResponse.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$BaseResponseOfAdminDashboardOverviewResponseCWProxy get copyWith =>
      _$BaseResponseOfAdminDashboardOverviewResponseCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BaseResponseOfAdminDashboardOverviewResponse
_$BaseResponseOfAdminDashboardOverviewResponseFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('BaseResponseOfAdminDashboardOverviewResponse', json, (
  $checkedConvert,
) {
  final val = BaseResponseOfAdminDashboardOverviewResponse(
    payload: $checkedConvert(
      'payload',
      (v) => v == null
          ? null
          : AdminDashboardOverviewResponse.fromJson(v as Map<String, dynamic>),
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

Map<String, dynamic> _$BaseResponseOfAdminDashboardOverviewResponseToJson(
  BaseResponseOfAdminDashboardOverviewResponse instance,
) => <String, dynamic>{
  'payload': ?instance.payload?.toJson(),
  'success': ?instance.success,
  'message': ?instance.message,
  'errors': ?instance.errors,
  'errorType': ?instance.errorType,
};
