// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_response_of_list_of_supplier_response.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$BaseResponseOfListOfSupplierResponseCWProxy {
  BaseResponseOfListOfSupplierResponse payload(List<SupplierResponse>? payload);

  BaseResponseOfListOfSupplierResponse success(bool? success);

  BaseResponseOfListOfSupplierResponse message(String? message);

  BaseResponseOfListOfSupplierResponse errors(List<String>? errors);

  BaseResponseOfListOfSupplierResponse errorType(int? errorType);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `BaseResponseOfListOfSupplierResponse(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// BaseResponseOfListOfSupplierResponse(...).copyWith(id: 12, name: "My name")
  /// ```
  BaseResponseOfListOfSupplierResponse call({
    List<SupplierResponse>? payload,
    bool? success,
    String? message,
    List<String>? errors,
    int? errorType,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfBaseResponseOfListOfSupplierResponse.copyWith(...)` or call `instanceOfBaseResponseOfListOfSupplierResponse.copyWith.fieldName(value)` for a single field.
class _$BaseResponseOfListOfSupplierResponseCWProxyImpl
    implements _$BaseResponseOfListOfSupplierResponseCWProxy {
  const _$BaseResponseOfListOfSupplierResponseCWProxyImpl(this._value);

  final BaseResponseOfListOfSupplierResponse _value;

  @override
  BaseResponseOfListOfSupplierResponse payload(
    List<SupplierResponse>? payload,
  ) => call(payload: payload);

  @override
  BaseResponseOfListOfSupplierResponse success(bool? success) =>
      call(success: success);

  @override
  BaseResponseOfListOfSupplierResponse message(String? message) =>
      call(message: message);

  @override
  BaseResponseOfListOfSupplierResponse errors(List<String>? errors) =>
      call(errors: errors);

  @override
  BaseResponseOfListOfSupplierResponse errorType(int? errorType) =>
      call(errorType: errorType);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `BaseResponseOfListOfSupplierResponse(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// BaseResponseOfListOfSupplierResponse(...).copyWith(id: 12, name: "My name")
  /// ```
  BaseResponseOfListOfSupplierResponse call({
    Object? payload = const $CopyWithPlaceholder(),
    Object? success = const $CopyWithPlaceholder(),
    Object? message = const $CopyWithPlaceholder(),
    Object? errors = const $CopyWithPlaceholder(),
    Object? errorType = const $CopyWithPlaceholder(),
  }) {
    return BaseResponseOfListOfSupplierResponse(
      payload: payload == const $CopyWithPlaceholder()
          ? _value.payload
          // ignore: cast_nullable_to_non_nullable
          : payload as List<SupplierResponse>?,
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

extension $BaseResponseOfListOfSupplierResponseCopyWith
    on BaseResponseOfListOfSupplierResponse {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfBaseResponseOfListOfSupplierResponse.copyWith(...)` or `instanceOfBaseResponseOfListOfSupplierResponse.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$BaseResponseOfListOfSupplierResponseCWProxy get copyWith =>
      _$BaseResponseOfListOfSupplierResponseCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BaseResponseOfListOfSupplierResponse
_$BaseResponseOfListOfSupplierResponseFromJson(Map<String, dynamic> json) =>
    $checkedCreate('BaseResponseOfListOfSupplierResponse', json, (
      $checkedConvert,
    ) {
      final val = BaseResponseOfListOfSupplierResponse(
        payload: $checkedConvert(
          'payload',
          (v) => (v as List<dynamic>?)
              ?.map((e) => SupplierResponse.fromJson(e as Map<String, dynamic>))
              .toList(),
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

Map<String, dynamic> _$BaseResponseOfListOfSupplierResponseToJson(
  BaseResponseOfListOfSupplierResponse instance,
) => <String, dynamic>{
  'payload': ?instance.payload?.map((e) => e.toJson()).toList(),
  'success': ?instance.success,
  'message': ?instance.message,
  'errors': ?instance.errors,
  'errorType': ?instance.errorType,
};
