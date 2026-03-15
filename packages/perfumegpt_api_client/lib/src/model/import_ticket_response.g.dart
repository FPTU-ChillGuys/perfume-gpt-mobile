// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'import_ticket_response.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$ImportTicketResponseCWProxy {
  ImportTicketResponse id(String? id);

  ImportTicketResponse createdByName(String? createdByName);

  ImportTicketResponse verifiedByName(String? verifiedByName);

  ImportTicketResponse supplierId(int? supplierId);

  ImportTicketResponse supplierName(String? supplierName);

  ImportTicketResponse expectedArrivalDate(DateTime? expectedArrivalDate);

  ImportTicketResponse actualImportDate(DateTime? actualImportDate);

  ImportTicketResponse totalCost(num? totalCost);

  ImportTicketResponse status(ImportStatus? status);

  ImportTicketResponse createdAt(DateTime? createdAt);

  ImportTicketResponse importDetails(List<ImportDetailResponse>? importDetails);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ImportTicketResponse(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ImportTicketResponse(...).copyWith(id: 12, name: "My name")
  /// ````
  ImportTicketResponse call({
    String? id,
    String? createdByName,
    String? verifiedByName,
    int? supplierId,
    String? supplierName,
    DateTime? expectedArrivalDate,
    DateTime? actualImportDate,
    num? totalCost,
    ImportStatus? status,
    DateTime? createdAt,
    List<ImportDetailResponse>? importDetails,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfImportTicketResponse.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfImportTicketResponse.copyWith.fieldName(...)`
class _$ImportTicketResponseCWProxyImpl
    implements _$ImportTicketResponseCWProxy {
  const _$ImportTicketResponseCWProxyImpl(this._value);

  final ImportTicketResponse _value;

  @override
  ImportTicketResponse id(String? id) => this(id: id);

  @override
  ImportTicketResponse createdByName(String? createdByName) =>
      this(createdByName: createdByName);

  @override
  ImportTicketResponse verifiedByName(String? verifiedByName) =>
      this(verifiedByName: verifiedByName);

  @override
  ImportTicketResponse supplierId(int? supplierId) =>
      this(supplierId: supplierId);

  @override
  ImportTicketResponse supplierName(String? supplierName) =>
      this(supplierName: supplierName);

  @override
  ImportTicketResponse expectedArrivalDate(DateTime? expectedArrivalDate) =>
      this(expectedArrivalDate: expectedArrivalDate);

  @override
  ImportTicketResponse actualImportDate(DateTime? actualImportDate) =>
      this(actualImportDate: actualImportDate);

  @override
  ImportTicketResponse totalCost(num? totalCost) => this(totalCost: totalCost);

  @override
  ImportTicketResponse status(ImportStatus? status) => this(status: status);

  @override
  ImportTicketResponse createdAt(DateTime? createdAt) =>
      this(createdAt: createdAt);

  @override
  ImportTicketResponse importDetails(
    List<ImportDetailResponse>? importDetails,
  ) => this(importDetails: importDetails);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `ImportTicketResponse(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// ImportTicketResponse(...).copyWith(id: 12, name: "My name")
  /// ````
  ImportTicketResponse call({
    Object? id = const $CopyWithPlaceholder(),
    Object? createdByName = const $CopyWithPlaceholder(),
    Object? verifiedByName = const $CopyWithPlaceholder(),
    Object? supplierId = const $CopyWithPlaceholder(),
    Object? supplierName = const $CopyWithPlaceholder(),
    Object? expectedArrivalDate = const $CopyWithPlaceholder(),
    Object? actualImportDate = const $CopyWithPlaceholder(),
    Object? totalCost = const $CopyWithPlaceholder(),
    Object? status = const $CopyWithPlaceholder(),
    Object? createdAt = const $CopyWithPlaceholder(),
    Object? importDetails = const $CopyWithPlaceholder(),
  }) {
    return ImportTicketResponse(
      id: id == const $CopyWithPlaceholder()
          ? _value.id
          // ignore: cast_nullable_to_non_nullable
          : id as String?,
      createdByName: createdByName == const $CopyWithPlaceholder()
          ? _value.createdByName
          // ignore: cast_nullable_to_non_nullable
          : createdByName as String?,
      verifiedByName: verifiedByName == const $CopyWithPlaceholder()
          ? _value.verifiedByName
          // ignore: cast_nullable_to_non_nullable
          : verifiedByName as String?,
      supplierId: supplierId == const $CopyWithPlaceholder()
          ? _value.supplierId
          // ignore: cast_nullable_to_non_nullable
          : supplierId as int?,
      supplierName: supplierName == const $CopyWithPlaceholder()
          ? _value.supplierName
          // ignore: cast_nullable_to_non_nullable
          : supplierName as String?,
      expectedArrivalDate: expectedArrivalDate == const $CopyWithPlaceholder()
          ? _value.expectedArrivalDate
          // ignore: cast_nullable_to_non_nullable
          : expectedArrivalDate as DateTime?,
      actualImportDate: actualImportDate == const $CopyWithPlaceholder()
          ? _value.actualImportDate
          // ignore: cast_nullable_to_non_nullable
          : actualImportDate as DateTime?,
      totalCost: totalCost == const $CopyWithPlaceholder()
          ? _value.totalCost
          // ignore: cast_nullable_to_non_nullable
          : totalCost as num?,
      status: status == const $CopyWithPlaceholder()
          ? _value.status
          // ignore: cast_nullable_to_non_nullable
          : status as ImportStatus?,
      createdAt: createdAt == const $CopyWithPlaceholder()
          ? _value.createdAt
          // ignore: cast_nullable_to_non_nullable
          : createdAt as DateTime?,
      importDetails: importDetails == const $CopyWithPlaceholder()
          ? _value.importDetails
          // ignore: cast_nullable_to_non_nullable
          : importDetails as List<ImportDetailResponse>?,
    );
  }
}

extension $ImportTicketResponseCopyWith on ImportTicketResponse {
  /// Returns a callable class that can be used as follows: `instanceOfImportTicketResponse.copyWith(...)` or like so:`instanceOfImportTicketResponse.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$ImportTicketResponseCWProxy get copyWith =>
      _$ImportTicketResponseCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ImportTicketResponse _$ImportTicketResponseFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('ImportTicketResponse', json, ($checkedConvert) {
  final val = ImportTicketResponse(
    id: $checkedConvert('id', (v) => v as String?),
    createdByName: $checkedConvert('createdByName', (v) => v as String?),
    verifiedByName: $checkedConvert('verifiedByName', (v) => v as String?),
    supplierId: $checkedConvert('supplierId', (v) => (v as num?)?.toInt()),
    supplierName: $checkedConvert('supplierName', (v) => v as String?),
    expectedArrivalDate: $checkedConvert(
      'expectedArrivalDate',
      (v) => v == null ? null : DateTime.parse(v as String),
    ),
    actualImportDate: $checkedConvert(
      'actualImportDate',
      (v) => v == null ? null : DateTime.parse(v as String),
    ),
    totalCost: $checkedConvert('totalCost', (v) => v as num?),
    status: $checkedConvert(
      'status',
      (v) => $enumDecodeNullable(_$ImportStatusEnumMap, v),
    ),
    createdAt: $checkedConvert(
      'createdAt',
      (v) => v == null ? null : DateTime.parse(v as String),
    ),
    importDetails: $checkedConvert(
      'importDetails',
      (v) => (v as List<dynamic>?)
          ?.map((e) => ImportDetailResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
    ),
  );
  return val;
});

Map<String, dynamic> _$ImportTicketResponseToJson(
  ImportTicketResponse instance,
) => <String, dynamic>{
  'id': ?instance.id,
  'createdByName': ?instance.createdByName,
  'verifiedByName': ?instance.verifiedByName,
  'supplierId': ?instance.supplierId,
  'supplierName': ?instance.supplierName,
  'expectedArrivalDate': ?instance.expectedArrivalDate?.toIso8601String(),
  'actualImportDate': ?instance.actualImportDate?.toIso8601String(),
  'totalCost': ?instance.totalCost,
  'status': ?_$ImportStatusEnumMap[instance.status],
  'createdAt': ?instance.createdAt?.toIso8601String(),
  'importDetails': ?instance.importDetails?.map((e) => e.toJson()).toList(),
};

const _$ImportStatusEnumMap = {
  ImportStatus.pending: 'Pending',
  ImportStatus.inProgress: 'InProgress',
  ImportStatus.completed: 'Completed',
  ImportStatus.canceled: 'Canceled',
};
