// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_response_of_inventory_levels_response.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$BaseResponseOfInventoryLevelsResponseCWProxy {
  BaseResponseOfInventoryLevelsResponse payload(
    InventoryLevelsResponse? payload,
  );

  BaseResponseOfInventoryLevelsResponse success(bool? success);

  BaseResponseOfInventoryLevelsResponse message(String? message);

  BaseResponseOfInventoryLevelsResponse errors(List<String>? errors);

  BaseResponseOfInventoryLevelsResponse errorType(int? errorType);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `BaseResponseOfInventoryLevelsResponse(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// BaseResponseOfInventoryLevelsResponse(...).copyWith(id: 12, name: "My name")
  /// ```
  BaseResponseOfInventoryLevelsResponse call({
    InventoryLevelsResponse? payload,
    bool? success,
    String? message,
    List<String>? errors,
    int? errorType,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfBaseResponseOfInventoryLevelsResponse.copyWith(...)` or call `instanceOfBaseResponseOfInventoryLevelsResponse.copyWith.fieldName(value)` for a single field.
class _$BaseResponseOfInventoryLevelsResponseCWProxyImpl
    implements _$BaseResponseOfInventoryLevelsResponseCWProxy {
  const _$BaseResponseOfInventoryLevelsResponseCWProxyImpl(this._value);

  final BaseResponseOfInventoryLevelsResponse _value;

  @override
  BaseResponseOfInventoryLevelsResponse payload(
    InventoryLevelsResponse? payload,
  ) => call(payload: payload);

  @override
  BaseResponseOfInventoryLevelsResponse success(bool? success) =>
      call(success: success);

  @override
  BaseResponseOfInventoryLevelsResponse message(String? message) =>
      call(message: message);

  @override
  BaseResponseOfInventoryLevelsResponse errors(List<String>? errors) =>
      call(errors: errors);

  @override
  BaseResponseOfInventoryLevelsResponse errorType(int? errorType) =>
      call(errorType: errorType);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `BaseResponseOfInventoryLevelsResponse(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// BaseResponseOfInventoryLevelsResponse(...).copyWith(id: 12, name: "My name")
  /// ```
  BaseResponseOfInventoryLevelsResponse call({
    Object? payload = const $CopyWithPlaceholder(),
    Object? success = const $CopyWithPlaceholder(),
    Object? message = const $CopyWithPlaceholder(),
    Object? errors = const $CopyWithPlaceholder(),
    Object? errorType = const $CopyWithPlaceholder(),
  }) {
    return BaseResponseOfInventoryLevelsResponse(
      payload: payload == const $CopyWithPlaceholder()
          ? _value.payload
          // ignore: cast_nullable_to_non_nullable
          : payload as InventoryLevelsResponse?,
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

extension $BaseResponseOfInventoryLevelsResponseCopyWith
    on BaseResponseOfInventoryLevelsResponse {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfBaseResponseOfInventoryLevelsResponse.copyWith(...)` or `instanceOfBaseResponseOfInventoryLevelsResponse.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$BaseResponseOfInventoryLevelsResponseCWProxy get copyWith =>
      _$BaseResponseOfInventoryLevelsResponseCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BaseResponseOfInventoryLevelsResponse
_$BaseResponseOfInventoryLevelsResponseFromJson(Map<String, dynamic> json) =>
    $checkedCreate('BaseResponseOfInventoryLevelsResponse', json, (
      $checkedConvert,
    ) {
      final val = BaseResponseOfInventoryLevelsResponse(
        payload: $checkedConvert(
          'payload',
          (v) => v == null
              ? null
              : InventoryLevelsResponse.fromJson(v as Map<String, dynamic>),
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

Map<String, dynamic> _$BaseResponseOfInventoryLevelsResponseToJson(
  BaseResponseOfInventoryLevelsResponse instance,
) => <String, dynamic>{
  'payload': ?instance.payload?.toJson(),
  'success': ?instance.success,
  'message': ?instance.message,
  'errors': ?instance.errors,
  'errorType': ?instance.errorType,
};
