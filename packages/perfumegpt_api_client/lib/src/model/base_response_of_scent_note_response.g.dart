// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_response_of_scent_note_response.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$BaseResponseOfScentNoteResponseCWProxy {
  BaseResponseOfScentNoteResponse payload(ScentNoteResponse? payload);

  BaseResponseOfScentNoteResponse success(bool? success);

  BaseResponseOfScentNoteResponse message(String? message);

  BaseResponseOfScentNoteResponse errors(List<String>? errors);

  BaseResponseOfScentNoteResponse errorType(int? errorType);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `BaseResponseOfScentNoteResponse(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// BaseResponseOfScentNoteResponse(...).copyWith(id: 12, name: "My name")
  /// ```
  BaseResponseOfScentNoteResponse call({
    ScentNoteResponse? payload,
    bool? success,
    String? message,
    List<String>? errors,
    int? errorType,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfBaseResponseOfScentNoteResponse.copyWith(...)` or call `instanceOfBaseResponseOfScentNoteResponse.copyWith.fieldName(value)` for a single field.
class _$BaseResponseOfScentNoteResponseCWProxyImpl
    implements _$BaseResponseOfScentNoteResponseCWProxy {
  const _$BaseResponseOfScentNoteResponseCWProxyImpl(this._value);

  final BaseResponseOfScentNoteResponse _value;

  @override
  BaseResponseOfScentNoteResponse payload(ScentNoteResponse? payload) =>
      call(payload: payload);

  @override
  BaseResponseOfScentNoteResponse success(bool? success) =>
      call(success: success);

  @override
  BaseResponseOfScentNoteResponse message(String? message) =>
      call(message: message);

  @override
  BaseResponseOfScentNoteResponse errors(List<String>? errors) =>
      call(errors: errors);

  @override
  BaseResponseOfScentNoteResponse errorType(int? errorType) =>
      call(errorType: errorType);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `BaseResponseOfScentNoteResponse(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// BaseResponseOfScentNoteResponse(...).copyWith(id: 12, name: "My name")
  /// ```
  BaseResponseOfScentNoteResponse call({
    Object? payload = const $CopyWithPlaceholder(),
    Object? success = const $CopyWithPlaceholder(),
    Object? message = const $CopyWithPlaceholder(),
    Object? errors = const $CopyWithPlaceholder(),
    Object? errorType = const $CopyWithPlaceholder(),
  }) {
    return BaseResponseOfScentNoteResponse(
      payload: payload == const $CopyWithPlaceholder()
          ? _value.payload
          // ignore: cast_nullable_to_non_nullable
          : payload as ScentNoteResponse?,
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

extension $BaseResponseOfScentNoteResponseCopyWith
    on BaseResponseOfScentNoteResponse {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfBaseResponseOfScentNoteResponse.copyWith(...)` or `instanceOfBaseResponseOfScentNoteResponse.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$BaseResponseOfScentNoteResponseCWProxy get copyWith =>
      _$BaseResponseOfScentNoteResponseCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BaseResponseOfScentNoteResponse _$BaseResponseOfScentNoteResponseFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('BaseResponseOfScentNoteResponse', json, ($checkedConvert) {
  final val = BaseResponseOfScentNoteResponse(
    payload: $checkedConvert(
      'payload',
      (v) => v == null
          ? null
          : ScentNoteResponse.fromJson(v as Map<String, dynamic>),
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

Map<String, dynamic> _$BaseResponseOfScentNoteResponseToJson(
  BaseResponseOfScentNoteResponse instance,
) => <String, dynamic>{
  'payload': ?instance.payload?.toJson(),
  'success': ?instance.success,
  'message': ?instance.message,
  'errors': ?instance.errors,
  'errorType': ?instance.errorType,
};
