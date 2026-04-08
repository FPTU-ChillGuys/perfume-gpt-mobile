// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_response_of_bulk_action_result_ofstring.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$BaseResponseOfBulkActionResultOfstringCWProxy {
  BaseResponseOfBulkActionResultOfstring payload(
    BulkActionResultOfstring? payload,
  );

  BaseResponseOfBulkActionResultOfstring success(bool? success);

  BaseResponseOfBulkActionResultOfstring message(String? message);

  BaseResponseOfBulkActionResultOfstring errors(List<String>? errors);

  BaseResponseOfBulkActionResultOfstring errorType(int? errorType);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `BaseResponseOfBulkActionResultOfstring(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// BaseResponseOfBulkActionResultOfstring(...).copyWith(id: 12, name: "My name")
  /// ```
  BaseResponseOfBulkActionResultOfstring call({
    BulkActionResultOfstring? payload,
    bool? success,
    String? message,
    List<String>? errors,
    int? errorType,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfBaseResponseOfBulkActionResultOfstring.copyWith(...)` or call `instanceOfBaseResponseOfBulkActionResultOfstring.copyWith.fieldName(value)` for a single field.
class _$BaseResponseOfBulkActionResultOfstringCWProxyImpl
    implements _$BaseResponseOfBulkActionResultOfstringCWProxy {
  const _$BaseResponseOfBulkActionResultOfstringCWProxyImpl(this._value);

  final BaseResponseOfBulkActionResultOfstring _value;

  @override
  BaseResponseOfBulkActionResultOfstring payload(
    BulkActionResultOfstring? payload,
  ) => call(payload: payload);

  @override
  BaseResponseOfBulkActionResultOfstring success(bool? success) =>
      call(success: success);

  @override
  BaseResponseOfBulkActionResultOfstring message(String? message) =>
      call(message: message);

  @override
  BaseResponseOfBulkActionResultOfstring errors(List<String>? errors) =>
      call(errors: errors);

  @override
  BaseResponseOfBulkActionResultOfstring errorType(int? errorType) =>
      call(errorType: errorType);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `BaseResponseOfBulkActionResultOfstring(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// BaseResponseOfBulkActionResultOfstring(...).copyWith(id: 12, name: "My name")
  /// ```
  BaseResponseOfBulkActionResultOfstring call({
    Object? payload = const $CopyWithPlaceholder(),
    Object? success = const $CopyWithPlaceholder(),
    Object? message = const $CopyWithPlaceholder(),
    Object? errors = const $CopyWithPlaceholder(),
    Object? errorType = const $CopyWithPlaceholder(),
  }) {
    return BaseResponseOfBulkActionResultOfstring(
      payload: payload == const $CopyWithPlaceholder()
          ? _value.payload
          // ignore: cast_nullable_to_non_nullable
          : payload as BulkActionResultOfstring?,
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

extension $BaseResponseOfBulkActionResultOfstringCopyWith
    on BaseResponseOfBulkActionResultOfstring {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfBaseResponseOfBulkActionResultOfstring.copyWith(...)` or `instanceOfBaseResponseOfBulkActionResultOfstring.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$BaseResponseOfBulkActionResultOfstringCWProxy get copyWith =>
      _$BaseResponseOfBulkActionResultOfstringCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BaseResponseOfBulkActionResultOfstring
_$BaseResponseOfBulkActionResultOfstringFromJson(Map<String, dynamic> json) =>
    $checkedCreate('BaseResponseOfBulkActionResultOfstring', json, (
      $checkedConvert,
    ) {
      final val = BaseResponseOfBulkActionResultOfstring(
        payload: $checkedConvert(
          'payload',
          (v) => v == null
              ? null
              : BulkActionResultOfstring.fromJson(v as Map<String, dynamic>),
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

Map<String, dynamic> _$BaseResponseOfBulkActionResultOfstringToJson(
  BaseResponseOfBulkActionResultOfstring instance,
) => <String, dynamic>{
  'payload': ?instance.payload?.toJson(),
  'success': ?instance.success,
  'message': ?instance.message,
  'errors': ?instance.errors,
  'errorType': ?instance.errorType,
};
