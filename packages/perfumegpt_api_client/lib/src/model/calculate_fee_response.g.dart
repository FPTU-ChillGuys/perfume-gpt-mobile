// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'calculate_fee_response.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$CalculateFeeResponseCWProxy {
  CalculateFeeResponse code(int? code);

  CalculateFeeResponse message(String? message);

  CalculateFeeResponse data(CalculateFeeData? data);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `CalculateFeeResponse(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// CalculateFeeResponse(...).copyWith(id: 12, name: "My name")
  /// ```
  CalculateFeeResponse call({
    int? code,
    String? message,
    CalculateFeeData? data,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfCalculateFeeResponse.copyWith(...)` or call `instanceOfCalculateFeeResponse.copyWith.fieldName(value)` for a single field.
class _$CalculateFeeResponseCWProxyImpl
    implements _$CalculateFeeResponseCWProxy {
  const _$CalculateFeeResponseCWProxyImpl(this._value);

  final CalculateFeeResponse _value;

  @override
  CalculateFeeResponse code(int? code) => call(code: code);

  @override
  CalculateFeeResponse message(String? message) => call(message: message);

  @override
  CalculateFeeResponse data(CalculateFeeData? data) => call(data: data);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `CalculateFeeResponse(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// CalculateFeeResponse(...).copyWith(id: 12, name: "My name")
  /// ```
  CalculateFeeResponse call({
    Object? code = const $CopyWithPlaceholder(),
    Object? message = const $CopyWithPlaceholder(),
    Object? data = const $CopyWithPlaceholder(),
  }) {
    return CalculateFeeResponse(
      code: code == const $CopyWithPlaceholder()
          ? _value.code
          // ignore: cast_nullable_to_non_nullable
          : code as int?,
      message: message == const $CopyWithPlaceholder()
          ? _value.message
          // ignore: cast_nullable_to_non_nullable
          : message as String?,
      data: data == const $CopyWithPlaceholder()
          ? _value.data
          // ignore: cast_nullable_to_non_nullable
          : data as CalculateFeeData?,
    );
  }
}

extension $CalculateFeeResponseCopyWith on CalculateFeeResponse {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfCalculateFeeResponse.copyWith(...)` or `instanceOfCalculateFeeResponse.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$CalculateFeeResponseCWProxy get copyWith =>
      _$CalculateFeeResponseCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CalculateFeeResponse _$CalculateFeeResponseFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('CalculateFeeResponse', json, ($checkedConvert) {
  final val = CalculateFeeResponse(
    code: $checkedConvert('code', (v) => (v as num?)?.toInt()),
    message: $checkedConvert('message', (v) => v as String?),
    data: $checkedConvert(
      'data',
      (v) => v == null
          ? null
          : CalculateFeeData.fromJson(v as Map<String, dynamic>),
    ),
  );
  return val;
});

Map<String, dynamic> _$CalculateFeeResponseToJson(
  CalculateFeeResponse instance,
) => <String, dynamic>{
  'code': ?instance.code,
  'message': ?instance.message,
  'data': ?instance.data?.toJson(),
};
