// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ward_response.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$WardResponseCWProxy {
  WardResponse wardCode(String? wardCode);

  WardResponse districtID(int? districtID);

  WardResponse wardName(String? wardName);

  WardResponse nameExtension(List<String>? nameExtension);

  WardResponse canUpdateCOD(bool? canUpdateCOD);

  WardResponse supportType(int? supportType);

  WardResponse status(int? status);

  WardResponse createdDate(String? createdDate);

  WardResponse updatedDate(String? updatedDate);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `WardResponse(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// WardResponse(...).copyWith(id: 12, name: "My name")
  /// ````
  WardResponse call({
    String? wardCode,
    int? districtID,
    String? wardName,
    List<String>? nameExtension,
    bool? canUpdateCOD,
    int? supportType,
    int? status,
    String? createdDate,
    String? updatedDate,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfWardResponse.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfWardResponse.copyWith.fieldName(...)`
class _$WardResponseCWProxyImpl implements _$WardResponseCWProxy {
  const _$WardResponseCWProxyImpl(this._value);

  final WardResponse _value;

  @override
  WardResponse wardCode(String? wardCode) => this(wardCode: wardCode);

  @override
  WardResponse districtID(int? districtID) => this(districtID: districtID);

  @override
  WardResponse wardName(String? wardName) => this(wardName: wardName);

  @override
  WardResponse nameExtension(List<String>? nameExtension) =>
      this(nameExtension: nameExtension);

  @override
  WardResponse canUpdateCOD(bool? canUpdateCOD) =>
      this(canUpdateCOD: canUpdateCOD);

  @override
  WardResponse supportType(int? supportType) => this(supportType: supportType);

  @override
  WardResponse status(int? status) => this(status: status);

  @override
  WardResponse createdDate(String? createdDate) =>
      this(createdDate: createdDate);

  @override
  WardResponse updatedDate(String? updatedDate) =>
      this(updatedDate: updatedDate);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `WardResponse(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// WardResponse(...).copyWith(id: 12, name: "My name")
  /// ````
  WardResponse call({
    Object? wardCode = const $CopyWithPlaceholder(),
    Object? districtID = const $CopyWithPlaceholder(),
    Object? wardName = const $CopyWithPlaceholder(),
    Object? nameExtension = const $CopyWithPlaceholder(),
    Object? canUpdateCOD = const $CopyWithPlaceholder(),
    Object? supportType = const $CopyWithPlaceholder(),
    Object? status = const $CopyWithPlaceholder(),
    Object? createdDate = const $CopyWithPlaceholder(),
    Object? updatedDate = const $CopyWithPlaceholder(),
  }) {
    return WardResponse(
      wardCode: wardCode == const $CopyWithPlaceholder()
          ? _value.wardCode
          // ignore: cast_nullable_to_non_nullable
          : wardCode as String?,
      districtID: districtID == const $CopyWithPlaceholder()
          ? _value.districtID
          // ignore: cast_nullable_to_non_nullable
          : districtID as int?,
      wardName: wardName == const $CopyWithPlaceholder()
          ? _value.wardName
          // ignore: cast_nullable_to_non_nullable
          : wardName as String?,
      nameExtension: nameExtension == const $CopyWithPlaceholder()
          ? _value.nameExtension
          // ignore: cast_nullable_to_non_nullable
          : nameExtension as List<String>?,
      canUpdateCOD: canUpdateCOD == const $CopyWithPlaceholder()
          ? _value.canUpdateCOD
          // ignore: cast_nullable_to_non_nullable
          : canUpdateCOD as bool?,
      supportType: supportType == const $CopyWithPlaceholder()
          ? _value.supportType
          // ignore: cast_nullable_to_non_nullable
          : supportType as int?,
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

extension $WardResponseCopyWith on WardResponse {
  /// Returns a callable class that can be used as follows: `instanceOfWardResponse.copyWith(...)` or like so:`instanceOfWardResponse.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$WardResponseCWProxy get copyWith => _$WardResponseCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WardResponse _$WardResponseFromJson(
  Map<String, dynamic> json,
) => $checkedCreate(
  'WardResponse',
  json,
  ($checkedConvert) {
    final val = WardResponse(
      wardCode: $checkedConvert('WardCode', (v) => v as String?),
      districtID: $checkedConvert('DistrictID', (v) => (v as num?)?.toInt()),
      wardName: $checkedConvert('WardName', (v) => v as String?),
      nameExtension: $checkedConvert(
        'NameExtension',
        (v) => (v as List<dynamic>?)?.map((e) => e as String).toList(),
      ),
      canUpdateCOD: $checkedConvert('CanUpdateCOD', (v) => v as bool?),
      supportType: $checkedConvert('SupportType', (v) => (v as num?)?.toInt()),
      status: $checkedConvert('Status', (v) => (v as num?)?.toInt()),
      createdDate: $checkedConvert('CreatedDate', (v) => v as String?),
      updatedDate: $checkedConvert('UpdatedDate', (v) => v as String?),
    );
    return val;
  },
  fieldKeyMap: const {
    'wardCode': 'WardCode',
    'districtID': 'DistrictID',
    'wardName': 'WardName',
    'nameExtension': 'NameExtension',
    'canUpdateCOD': 'CanUpdateCOD',
    'supportType': 'SupportType',
    'status': 'Status',
    'createdDate': 'CreatedDate',
    'updatedDate': 'UpdatedDate',
  },
);

Map<String, dynamic> _$WardResponseToJson(WardResponse instance) =>
    <String, dynamic>{
      'WardCode': ?instance.wardCode,
      'DistrictID': ?instance.districtID,
      'WardName': ?instance.wardName,
      'NameExtension': ?instance.nameExtension,
      'CanUpdateCOD': ?instance.canUpdateCOD,
      'SupportType': ?instance.supportType,
      'Status': ?instance.status,
      'CreatedDate': ?instance.createdDate,
      'UpdatedDate': ?instance.updatedDate,
    };
