// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'calculate_fee_response.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$CalculateFeeResponseCWProxy {
  CalculateFeeResponse code(int? code);

  CalculateFeeResponse message(String? message);

  CalculateFeeResponse data(CalculateFeeData? data);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `CalculateFeeResponse(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// CalculateFeeResponse(...).copyWith(id: 12, name: "My name")
  /// ````
  CalculateFeeResponse call({
    int? code,
    String? message,
    CalculateFeeData? data,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfCalculateFeeResponse.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfCalculateFeeResponse.copyWith.fieldName(...)`
class _$CalculateFeeResponseCWProxyImpl
    implements _$CalculateFeeResponseCWProxy {
  const _$CalculateFeeResponseCWProxyImpl(this._value);

  final CalculateFeeResponse _value;

  @override
  CalculateFeeResponse code(int? code) => this(code: code);

  @override
  CalculateFeeResponse message(String? message) => this(message: message);

  @override
  CalculateFeeResponse data(CalculateFeeData? data) => this(data: data);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `CalculateFeeResponse(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// CalculateFeeResponse(...).copyWith(id: 12, name: "My name")
  /// ````
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
  /// Returns a callable class that can be used as follows: `instanceOfCalculateFeeResponse.copyWith(...)` or like so:`instanceOfCalculateFeeResponse.copyWith.fieldName(...)`.
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
