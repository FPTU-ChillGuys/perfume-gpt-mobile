// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'calculate_fee_request.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$CalculateFeeRequestCWProxy {
  CalculateFeeRequest toDistrictId(int? toDistrictId);

  CalculateFeeRequest toWardCode(String? toWardCode);

  CalculateFeeRequest length(int? length);

  CalculateFeeRequest width(int? width);

  CalculateFeeRequest height(int? height);

  CalculateFeeRequest weight(int? weight);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `CalculateFeeRequest(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// CalculateFeeRequest(...).copyWith(id: 12, name: "My name")
  /// ```
  CalculateFeeRequest call({
    int? toDistrictId,
    String? toWardCode,
    int? length,
    int? width,
    int? height,
    int? weight,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfCalculateFeeRequest.copyWith(...)` or call `instanceOfCalculateFeeRequest.copyWith.fieldName(value)` for a single field.
class _$CalculateFeeRequestCWProxyImpl implements _$CalculateFeeRequestCWProxy {
  const _$CalculateFeeRequestCWProxyImpl(this._value);

  final CalculateFeeRequest _value;

  @override
  CalculateFeeRequest toDistrictId(int? toDistrictId) =>
      call(toDistrictId: toDistrictId);

  @override
  CalculateFeeRequest toWardCode(String? toWardCode) =>
      call(toWardCode: toWardCode);

  @override
  CalculateFeeRequest length(int? length) => call(length: length);

  @override
  CalculateFeeRequest width(int? width) => call(width: width);

  @override
  CalculateFeeRequest height(int? height) => call(height: height);

  @override
  CalculateFeeRequest weight(int? weight) => call(weight: weight);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `CalculateFeeRequest(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// CalculateFeeRequest(...).copyWith(id: 12, name: "My name")
  /// ```
  CalculateFeeRequest call({
    Object? toDistrictId = const $CopyWithPlaceholder(),
    Object? toWardCode = const $CopyWithPlaceholder(),
    Object? length = const $CopyWithPlaceholder(),
    Object? width = const $CopyWithPlaceholder(),
    Object? height = const $CopyWithPlaceholder(),
    Object? weight = const $CopyWithPlaceholder(),
  }) {
    return CalculateFeeRequest(
      toDistrictId: toDistrictId == const $CopyWithPlaceholder()
          ? _value.toDistrictId
          // ignore: cast_nullable_to_non_nullable
          : toDistrictId as int?,
      toWardCode: toWardCode == const $CopyWithPlaceholder()
          ? _value.toWardCode
          // ignore: cast_nullable_to_non_nullable
          : toWardCode as String?,
      length: length == const $CopyWithPlaceholder()
          ? _value.length
          // ignore: cast_nullable_to_non_nullable
          : length as int?,
      width: width == const $CopyWithPlaceholder()
          ? _value.width
          // ignore: cast_nullable_to_non_nullable
          : width as int?,
      height: height == const $CopyWithPlaceholder()
          ? _value.height
          // ignore: cast_nullable_to_non_nullable
          : height as int?,
      weight: weight == const $CopyWithPlaceholder()
          ? _value.weight
          // ignore: cast_nullable_to_non_nullable
          : weight as int?,
    );
  }
}

extension $CalculateFeeRequestCopyWith on CalculateFeeRequest {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfCalculateFeeRequest.copyWith(...)` or `instanceOfCalculateFeeRequest.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$CalculateFeeRequestCWProxy get copyWith =>
      _$CalculateFeeRequestCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CalculateFeeRequest _$CalculateFeeRequestFromJson(Map<String, dynamic> json) =>
    $checkedCreate('CalculateFeeRequest', json, ($checkedConvert) {
      final val = CalculateFeeRequest(
        toDistrictId: $checkedConvert(
          'toDistrictId',
          (v) => (v as num?)?.toInt(),
        ),
        toWardCode: $checkedConvert('toWardCode', (v) => v as String?),
        length: $checkedConvert('length', (v) => (v as num?)?.toInt()),
        width: $checkedConvert('width', (v) => (v as num?)?.toInt()),
        height: $checkedConvert('height', (v) => (v as num?)?.toInt()),
        weight: $checkedConvert('weight', (v) => (v as num?)?.toInt()),
      );
      return val;
    });

Map<String, dynamic> _$CalculateFeeRequestToJson(
  CalculateFeeRequest instance,
) => <String, dynamic>{
  'toDistrictId': ?instance.toDistrictId,
  'toWardCode': ?instance.toWardCode,
  'length': ?instance.length,
  'width': ?instance.width,
  'height': ?instance.height,
  'weight': ?instance.weight,
};
