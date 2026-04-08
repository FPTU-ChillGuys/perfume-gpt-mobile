// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_response_of_list_of_scent_note_lookup_response.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$BaseResponseOfListOfScentNoteLookupResponseCWProxy {
  BaseResponseOfListOfScentNoteLookupResponse payload(
    List<ScentNoteLookupResponse>? payload,
  );

  BaseResponseOfListOfScentNoteLookupResponse success(bool? success);

  BaseResponseOfListOfScentNoteLookupResponse message(String? message);

  BaseResponseOfListOfScentNoteLookupResponse errors(List<String>? errors);

  BaseResponseOfListOfScentNoteLookupResponse errorType(int? errorType);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `BaseResponseOfListOfScentNoteLookupResponse(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// BaseResponseOfListOfScentNoteLookupResponse(...).copyWith(id: 12, name: "My name")
  /// ```
  BaseResponseOfListOfScentNoteLookupResponse call({
    List<ScentNoteLookupResponse>? payload,
    bool? success,
    String? message,
    List<String>? errors,
    int? errorType,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfBaseResponseOfListOfScentNoteLookupResponse.copyWith(...)` or call `instanceOfBaseResponseOfListOfScentNoteLookupResponse.copyWith.fieldName(value)` for a single field.
class _$BaseResponseOfListOfScentNoteLookupResponseCWProxyImpl
    implements _$BaseResponseOfListOfScentNoteLookupResponseCWProxy {
  const _$BaseResponseOfListOfScentNoteLookupResponseCWProxyImpl(this._value);

  final BaseResponseOfListOfScentNoteLookupResponse _value;

  @override
  BaseResponseOfListOfScentNoteLookupResponse payload(
    List<ScentNoteLookupResponse>? payload,
  ) => call(payload: payload);

  @override
  BaseResponseOfListOfScentNoteLookupResponse success(bool? success) =>
      call(success: success);

  @override
  BaseResponseOfListOfScentNoteLookupResponse message(String? message) =>
      call(message: message);

  @override
  BaseResponseOfListOfScentNoteLookupResponse errors(List<String>? errors) =>
      call(errors: errors);

  @override
  BaseResponseOfListOfScentNoteLookupResponse errorType(int? errorType) =>
      call(errorType: errorType);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `BaseResponseOfListOfScentNoteLookupResponse(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// BaseResponseOfListOfScentNoteLookupResponse(...).copyWith(id: 12, name: "My name")
  /// ```
  BaseResponseOfListOfScentNoteLookupResponse call({
    Object? payload = const $CopyWithPlaceholder(),
    Object? success = const $CopyWithPlaceholder(),
    Object? message = const $CopyWithPlaceholder(),
    Object? errors = const $CopyWithPlaceholder(),
    Object? errorType = const $CopyWithPlaceholder(),
  }) {
    return BaseResponseOfListOfScentNoteLookupResponse(
      payload: payload == const $CopyWithPlaceholder()
          ? _value.payload
          // ignore: cast_nullable_to_non_nullable
          : payload as List<ScentNoteLookupResponse>?,
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

extension $BaseResponseOfListOfScentNoteLookupResponseCopyWith
    on BaseResponseOfListOfScentNoteLookupResponse {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfBaseResponseOfListOfScentNoteLookupResponse.copyWith(...)` or `instanceOfBaseResponseOfListOfScentNoteLookupResponse.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$BaseResponseOfListOfScentNoteLookupResponseCWProxy get copyWith =>
      _$BaseResponseOfListOfScentNoteLookupResponseCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BaseResponseOfListOfScentNoteLookupResponse
_$BaseResponseOfListOfScentNoteLookupResponseFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('BaseResponseOfListOfScentNoteLookupResponse', json, (
  $checkedConvert,
) {
  final val = BaseResponseOfListOfScentNoteLookupResponse(
    payload: $checkedConvert(
      'payload',
      (v) => (v as List<dynamic>?)
          ?.map(
            (e) => ScentNoteLookupResponse.fromJson(e as Map<String, dynamic>),
          )
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

Map<String, dynamic> _$BaseResponseOfListOfScentNoteLookupResponseToJson(
  BaseResponseOfListOfScentNoteLookupResponse instance,
) => <String, dynamic>{
  'payload': ?instance.payload?.map((e) => e.toJson()).toList(),
  'success': ?instance.success,
  'message': ?instance.message,
  'errors': ?instance.errors,
  'errorType': ?instance.errorType,
};
