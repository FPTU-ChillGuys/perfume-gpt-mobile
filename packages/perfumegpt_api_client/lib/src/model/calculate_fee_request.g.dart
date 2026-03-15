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

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `CalculateFeeRequest(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// CalculateFeeRequest(...).copyWith(id: 12, name: "My name")
  /// ````
  CalculateFeeRequest call({
    int? toDistrictId,
    String? toWardCode,
    int? length,
    int? width,
    int? height,
    int? weight,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfCalculateFeeRequest.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfCalculateFeeRequest.copyWith.fieldName(...)`
class _$CalculateFeeRequestCWProxyImpl implements _$CalculateFeeRequestCWProxy {
  const _$CalculateFeeRequestCWProxyImpl(this._value);

  final CalculateFeeRequest _value;

  @override
  CalculateFeeRequest toDistrictId(int? toDistrictId) =>
      this(toDistrictId: toDistrictId);

  @override
  CalculateFeeRequest toWardCode(String? toWardCode) =>
      this(toWardCode: toWardCode);

  @override
  CalculateFeeRequest length(int? length) => this(length: length);

  @override
  CalculateFeeRequest width(int? width) => this(width: width);

  @override
  CalculateFeeRequest height(int? height) => this(height: height);

  @override
  CalculateFeeRequest weight(int? weight) => this(weight: weight);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `CalculateFeeRequest(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// CalculateFeeRequest(...).copyWith(id: 12, name: "My name")
  /// ````
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
  /// Returns a callable class that can be used as follows: `instanceOfCalculateFeeRequest.copyWith(...)` or like so:`instanceOfCalculateFeeRequest.copyWith.fieldName(...)`.
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
