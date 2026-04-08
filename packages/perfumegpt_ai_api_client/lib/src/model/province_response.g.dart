// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'province_response.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$ProvinceResponseCWProxy {
  ProvinceResponse provinceID(int? provinceID);

  ProvinceResponse provinceName(String provinceName);

  ProvinceResponse countryID(int? countryID);

  ProvinceResponse code(int? code);

  ProvinceResponse nameExtension(List<String>? nameExtension);

  ProvinceResponse isEnable(int? isEnable);

  ProvinceResponse regionID(int? regionID);

  ProvinceResponse updatedBy(int? updatedBy);

  ProvinceResponse createdAt(String? createdAt);

  ProvinceResponse updatedAt(String? updatedAt);

  ProvinceResponse canUpdateCOD(bool? canUpdateCOD);

  ProvinceResponse status(int? status);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `ProvinceResponse(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// ProvinceResponse(...).copyWith(id: 12, name: "My name")
  /// ```
  ProvinceResponse call({
    int? provinceID,
    String provinceName,
    int? countryID,
    int? code,
    List<String>? nameExtension,
    int? isEnable,
    int? regionID,
    int? updatedBy,
    String? createdAt,
    String? updatedAt,
    bool? canUpdateCOD,
    int? status,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfProvinceResponse.copyWith(...)` or call `instanceOfProvinceResponse.copyWith.fieldName(value)` for a single field.
class _$ProvinceResponseCWProxyImpl implements _$ProvinceResponseCWProxy {
  const _$ProvinceResponseCWProxyImpl(this._value);

  final ProvinceResponse _value;

  @override
  ProvinceResponse provinceID(int? provinceID) => call(provinceID: provinceID);

  @override
  ProvinceResponse provinceName(String provinceName) =>
      call(provinceName: provinceName);

  @override
  ProvinceResponse countryID(int? countryID) => call(countryID: countryID);

  @override
  ProvinceResponse code(int? code) => call(code: code);

  @override
  ProvinceResponse nameExtension(List<String>? nameExtension) =>
      call(nameExtension: nameExtension);

  @override
  ProvinceResponse isEnable(int? isEnable) => call(isEnable: isEnable);

  @override
  ProvinceResponse regionID(int? regionID) => call(regionID: regionID);

  @override
  ProvinceResponse updatedBy(int? updatedBy) => call(updatedBy: updatedBy);

  @override
  ProvinceResponse createdAt(String? createdAt) => call(createdAt: createdAt);

  @override
  ProvinceResponse updatedAt(String? updatedAt) => call(updatedAt: updatedAt);

  @override
  ProvinceResponse canUpdateCOD(bool? canUpdateCOD) =>
      call(canUpdateCOD: canUpdateCOD);

  @override
  ProvinceResponse status(int? status) => call(status: status);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `ProvinceResponse(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// ProvinceResponse(...).copyWith(id: 12, name: "My name")
  /// ```
  ProvinceResponse call({
    Object? provinceID = const $CopyWithPlaceholder(),
    Object? provinceName = const $CopyWithPlaceholder(),
    Object? countryID = const $CopyWithPlaceholder(),
    Object? code = const $CopyWithPlaceholder(),
    Object? nameExtension = const $CopyWithPlaceholder(),
    Object? isEnable = const $CopyWithPlaceholder(),
    Object? regionID = const $CopyWithPlaceholder(),
    Object? updatedBy = const $CopyWithPlaceholder(),
    Object? createdAt = const $CopyWithPlaceholder(),
    Object? updatedAt = const $CopyWithPlaceholder(),
    Object? canUpdateCOD = const $CopyWithPlaceholder(),
    Object? status = const $CopyWithPlaceholder(),
  }) {
    return ProvinceResponse(
      provinceID: provinceID == const $CopyWithPlaceholder()
          ? _value.provinceID
          // ignore: cast_nullable_to_non_nullable
          : provinceID as int?,
      provinceName:
          provinceName == const $CopyWithPlaceholder() || provinceName == null
          ? _value.provinceName
          // ignore: cast_nullable_to_non_nullable
          : provinceName as String,
      countryID: countryID == const $CopyWithPlaceholder()
          ? _value.countryID
          // ignore: cast_nullable_to_non_nullable
          : countryID as int?,
      code: code == const $CopyWithPlaceholder()
          ? _value.code
          // ignore: cast_nullable_to_non_nullable
          : code as int?,
      nameExtension: nameExtension == const $CopyWithPlaceholder()
          ? _value.nameExtension
          // ignore: cast_nullable_to_non_nullable
          : nameExtension as List<String>?,
      isEnable: isEnable == const $CopyWithPlaceholder()
          ? _value.isEnable
          // ignore: cast_nullable_to_non_nullable
          : isEnable as int?,
      regionID: regionID == const $CopyWithPlaceholder()
          ? _value.regionID
          // ignore: cast_nullable_to_non_nullable
          : regionID as int?,
      updatedBy: updatedBy == const $CopyWithPlaceholder()
          ? _value.updatedBy
          // ignore: cast_nullable_to_non_nullable
          : updatedBy as int?,
      createdAt: createdAt == const $CopyWithPlaceholder()
          ? _value.createdAt
          // ignore: cast_nullable_to_non_nullable
          : createdAt as String?,
      updatedAt: updatedAt == const $CopyWithPlaceholder()
          ? _value.updatedAt
          // ignore: cast_nullable_to_non_nullable
          : updatedAt as String?,
      canUpdateCOD: canUpdateCOD == const $CopyWithPlaceholder()
          ? _value.canUpdateCOD
          // ignore: cast_nullable_to_non_nullable
          : canUpdateCOD as bool?,
      status: status == const $CopyWithPlaceholder()
          ? _value.status
          // ignore: cast_nullable_to_non_nullable
          : status as int?,
    );
  }
}

extension $ProvinceResponseCopyWith on ProvinceResponse {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfProvinceResponse.copyWith(...)` or `instanceOfProvinceResponse.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$ProvinceResponseCWProxy get copyWith => _$ProvinceResponseCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProvinceResponse _$ProvinceResponseFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'ProvinceResponse',
      json,
      ($checkedConvert) {
        $checkKeys(json, requiredKeys: const ['ProvinceName']);
        final val = ProvinceResponse(
          provinceID: $checkedConvert(
            'ProvinceID',
            (v) => (v as num?)?.toInt(),
          ),
          provinceName: $checkedConvert('ProvinceName', (v) => v as String),
          countryID: $checkedConvert('CountryID', (v) => (v as num?)?.toInt()),
          code: $checkedConvert('Code', (v) => (v as num?)?.toInt()),
          nameExtension: $checkedConvert(
            'NameExtension',
            (v) => (v as List<dynamic>?)?.map((e) => e as String).toList(),
          ),
          isEnable: $checkedConvert('IsEnable', (v) => (v as num?)?.toInt()),
          regionID: $checkedConvert('RegionID', (v) => (v as num?)?.toInt()),
          updatedBy: $checkedConvert('UpdatedBy', (v) => (v as num?)?.toInt()),
          createdAt: $checkedConvert('CreatedAt', (v) => v as String?),
          updatedAt: $checkedConvert('UpdatedAt', (v) => v as String?),
          canUpdateCOD: $checkedConvert('CanUpdateCOD', (v) => v as bool?),
          status: $checkedConvert('Status', (v) => (v as num?)?.toInt()),
        );
        return val;
      },
      fieldKeyMap: const {
        'provinceID': 'ProvinceID',
        'provinceName': 'ProvinceName',
        'countryID': 'CountryID',
        'code': 'Code',
        'nameExtension': 'NameExtension',
        'isEnable': 'IsEnable',
        'regionID': 'RegionID',
        'updatedBy': 'UpdatedBy',
        'createdAt': 'CreatedAt',
        'updatedAt': 'UpdatedAt',
        'canUpdateCOD': 'CanUpdateCOD',
        'status': 'Status',
      },
    );

Map<String, dynamic> _$ProvinceResponseToJson(ProvinceResponse instance) =>
    <String, dynamic>{
      'ProvinceID': ?instance.provinceID,
      'ProvinceName': instance.provinceName,
      'CountryID': ?instance.countryID,
      'Code': ?instance.code,
      'NameExtension': ?instance.nameExtension,
      'IsEnable': ?instance.isEnable,
      'RegionID': ?instance.regionID,
      'UpdatedBy': ?instance.updatedBy,
      'CreatedAt': ?instance.createdAt,
      'UpdatedAt': ?instance.updatedAt,
      'CanUpdateCOD': ?instance.canUpdateCOD,
      'Status': ?instance.status,
    };
