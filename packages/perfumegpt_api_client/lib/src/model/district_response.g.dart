// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'district_response.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$DistrictResponseCWProxy {
  DistrictResponse districtID(int? districtID);

  DistrictResponse provinceID(int? provinceID);

  DistrictResponse districtName(String? districtName);

  DistrictResponse code(int? code);

  DistrictResponse type(int? type);

  DistrictResponse supportType(int? supportType);

  DistrictResponse nameExtension(List<String>? nameExtension);

  DistrictResponse isEnable(int? isEnable);

  DistrictResponse canUpdateCOD(bool? canUpdateCOD);

  DistrictResponse status(int? status);

  DistrictResponse createdDate(String? createdDate);

  DistrictResponse updatedDate(String? updatedDate);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `DistrictResponse(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// DistrictResponse(...).copyWith(id: 12, name: "My name")
  /// ```
  DistrictResponse call({
    int? districtID,
    int? provinceID,
    String? districtName,
    int? code,
    int? type,
    int? supportType,
    List<String>? nameExtension,
    int? isEnable,
    bool? canUpdateCOD,
    int? status,
    String? createdDate,
    String? updatedDate,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfDistrictResponse.copyWith(...)` or call `instanceOfDistrictResponse.copyWith.fieldName(value)` for a single field.
class _$DistrictResponseCWProxyImpl implements _$DistrictResponseCWProxy {
  const _$DistrictResponseCWProxyImpl(this._value);

  final DistrictResponse _value;

  @override
  DistrictResponse districtID(int? districtID) => call(districtID: districtID);

  @override
  DistrictResponse provinceID(int? provinceID) => call(provinceID: provinceID);

  @override
  DistrictResponse districtName(String? districtName) =>
      call(districtName: districtName);

  @override
  DistrictResponse code(int? code) => call(code: code);

  @override
  DistrictResponse type(int? type) => call(type: type);

  @override
  DistrictResponse supportType(int? supportType) =>
      call(supportType: supportType);

  @override
  DistrictResponse nameExtension(List<String>? nameExtension) =>
      call(nameExtension: nameExtension);

  @override
  DistrictResponse isEnable(int? isEnable) => call(isEnable: isEnable);

  @override
  DistrictResponse canUpdateCOD(bool? canUpdateCOD) =>
      call(canUpdateCOD: canUpdateCOD);

  @override
  DistrictResponse status(int? status) => call(status: status);

  @override
  DistrictResponse createdDate(String? createdDate) =>
      call(createdDate: createdDate);

  @override
  DistrictResponse updatedDate(String? updatedDate) =>
      call(updatedDate: updatedDate);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `DistrictResponse(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// DistrictResponse(...).copyWith(id: 12, name: "My name")
  /// ```
  DistrictResponse call({
    Object? districtID = const $CopyWithPlaceholder(),
    Object? provinceID = const $CopyWithPlaceholder(),
    Object? districtName = const $CopyWithPlaceholder(),
    Object? code = const $CopyWithPlaceholder(),
    Object? type = const $CopyWithPlaceholder(),
    Object? supportType = const $CopyWithPlaceholder(),
    Object? nameExtension = const $CopyWithPlaceholder(),
    Object? isEnable = const $CopyWithPlaceholder(),
    Object? canUpdateCOD = const $CopyWithPlaceholder(),
    Object? status = const $CopyWithPlaceholder(),
    Object? createdDate = const $CopyWithPlaceholder(),
    Object? updatedDate = const $CopyWithPlaceholder(),
  }) {
    return DistrictResponse(
      districtID: districtID == const $CopyWithPlaceholder()
          ? _value.districtID
          // ignore: cast_nullable_to_non_nullable
          : districtID as int?,
      provinceID: provinceID == const $CopyWithPlaceholder()
          ? _value.provinceID
          // ignore: cast_nullable_to_non_nullable
          : provinceID as int?,
      districtName: districtName == const $CopyWithPlaceholder()
          ? _value.districtName
          // ignore: cast_nullable_to_non_nullable
          : districtName as String?,
      code: code == const $CopyWithPlaceholder()
          ? _value.code
          // ignore: cast_nullable_to_non_nullable
          : code as int?,
      type: type == const $CopyWithPlaceholder()
          ? _value.type
          // ignore: cast_nullable_to_non_nullable
          : type as int?,
      supportType: supportType == const $CopyWithPlaceholder()
          ? _value.supportType
          // ignore: cast_nullable_to_non_nullable
          : supportType as int?,
      nameExtension: nameExtension == const $CopyWithPlaceholder()
          ? _value.nameExtension
          // ignore: cast_nullable_to_non_nullable
          : nameExtension as List<String>?,
      isEnable: isEnable == const $CopyWithPlaceholder()
          ? _value.isEnable
          // ignore: cast_nullable_to_non_nullable
          : isEnable as int?,
      canUpdateCOD: canUpdateCOD == const $CopyWithPlaceholder()
          ? _value.canUpdateCOD
          // ignore: cast_nullable_to_non_nullable
          : canUpdateCOD as bool?,
      status: status == const $CopyWithPlaceholder()
          ? _value.status
          // ignore: cast_nullable_to_non_nullable
          : status as int?,
      createdDate: createdDate == const $CopyWithPlaceholder()
          ? _value.createdDate
          // ignore: cast_nullable_to_non_nullable
          : createdDate as String?,
      updatedDate: updatedDate == const $CopyWithPlaceholder()
          ? _value.updatedDate
          // ignore: cast_nullable_to_non_nullable
          : updatedDate as String?,
    );
  }
}

extension $DistrictResponseCopyWith on DistrictResponse {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfDistrictResponse.copyWith(...)` or `instanceOfDistrictResponse.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$DistrictResponseCWProxy get copyWith => _$DistrictResponseCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DistrictResponse _$DistrictResponseFromJson(
  Map<String, dynamic> json,
) => $checkedCreate(
  'DistrictResponse',
  json,
  ($checkedConvert) {
    final val = DistrictResponse(
      districtID: $checkedConvert('DistrictID', (v) => (v as num?)?.toInt()),
      provinceID: $checkedConvert('ProvinceID', (v) => (v as num?)?.toInt()),
      districtName: $checkedConvert('DistrictName', (v) => v as String?),
      code: $checkedConvert('Code', (v) => (v as num?)?.toInt()),
      type: $checkedConvert('Type', (v) => (v as num?)?.toInt()),
      supportType: $checkedConvert('SupportType', (v) => (v as num?)?.toInt()),
      nameExtension: $checkedConvert(
        'NameExtension',
        (v) => (v as List<dynamic>?)?.map((e) => e as String).toList(),
      ),
      isEnable: $checkedConvert('IsEnable', (v) => (v as num?)?.toInt()),
      canUpdateCOD: $checkedConvert('CanUpdateCOD', (v) => v as bool?),
      status: $checkedConvert('Status', (v) => (v as num?)?.toInt()),
      createdDate: $checkedConvert('CreatedDate', (v) => v as String?),
      updatedDate: $checkedConvert('UpdatedDate', (v) => v as String?),
    );
    return val;
  },
  fieldKeyMap: const {
    'districtID': 'DistrictID',
    'provinceID': 'ProvinceID',
    'districtName': 'DistrictName',
    'code': 'Code',
    'type': 'Type',
    'supportType': 'SupportType',
    'nameExtension': 'NameExtension',
    'isEnable': 'IsEnable',
    'canUpdateCOD': 'CanUpdateCOD',
    'status': 'Status',
    'createdDate': 'CreatedDate',
    'updatedDate': 'UpdatedDate',
  },
);

Map<String, dynamic> _$DistrictResponseToJson(DistrictResponse instance) =>
    <String, dynamic>{
      'DistrictID': ?instance.districtID,
      'ProvinceID': ?instance.provinceID,
      'DistrictName': ?instance.districtName,
      'Code': ?instance.code,
      'Type': ?instance.type,
      'SupportType': ?instance.supportType,
      'NameExtension': ?instance.nameExtension,
      'IsEnable': ?instance.isEnable,
      'CanUpdateCOD': ?instance.canUpdateCOD,
      'Status': ?instance.status,
      'CreatedDate': ?instance.createdDate,
      'UpdatedDate': ?instance.updatedDate,
    };
