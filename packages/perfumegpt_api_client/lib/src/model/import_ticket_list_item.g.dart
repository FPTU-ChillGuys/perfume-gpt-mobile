// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'import_ticket_list_item.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$ImportTicketListItemCWProxy {
  ImportTicketListItem id(String id);

  ImportTicketListItem createdByName(String? createdByName);

  ImportTicketListItem verifiedByName(String? verifiedByName);

  ImportTicketListItem supplierName(String? supplierName);

  ImportTicketListItem expectedArrivalDate(DateTime expectedArrivalDate);

  ImportTicketListItem actualImportDate(DateTime actualImportDate);

  ImportTicketListItem totalCost(num totalCost);

  ImportTicketListItem status(ImportStatus? status);

  ImportTicketListItem totalItems(int? totalItems);

  ImportTicketListItem createdAt(DateTime? createdAt);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `ImportTicketListItem(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// ImportTicketListItem(...).copyWith(id: 12, name: "My name")
  /// ```
  ImportTicketListItem call({
    String id,
    String? createdByName,
    String? verifiedByName,
    String? supplierName,
    DateTime expectedArrivalDate,
    DateTime actualImportDate,
    num totalCost,
    ImportStatus? status,
    int? totalItems,
    DateTime? createdAt,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfImportTicketListItem.copyWith(...)` or call `instanceOfImportTicketListItem.copyWith.fieldName(value)` for a single field.
class _$ImportTicketListItemCWProxyImpl
    implements _$ImportTicketListItemCWProxy {
  const _$ImportTicketListItemCWProxyImpl(this._value);

  final ImportTicketListItem _value;

  @override
  ImportTicketListItem id(String id) => call(id: id);

  @override
  ImportTicketListItem createdByName(String? createdByName) =>
      call(createdByName: createdByName);

  @override
  ImportTicketListItem verifiedByName(String? verifiedByName) =>
      call(verifiedByName: verifiedByName);

  @override
  ImportTicketListItem supplierName(String? supplierName) =>
      call(supplierName: supplierName);

  @override
  ImportTicketListItem expectedArrivalDate(DateTime expectedArrivalDate) =>
      call(expectedArrivalDate: expectedArrivalDate);

  @override
  ImportTicketListItem actualImportDate(DateTime actualImportDate) =>
      call(actualImportDate: actualImportDate);

  @override
  ImportTicketListItem totalCost(num totalCost) => call(totalCost: totalCost);

  @override
  ImportTicketListItem status(ImportStatus? status) => call(status: status);

  @override
  ImportTicketListItem totalItems(int? totalItems) =>
      call(totalItems: totalItems);

  @override
  ImportTicketListItem createdAt(DateTime? createdAt) =>
      call(createdAt: createdAt);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `ImportTicketListItem(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// ImportTicketListItem(...).copyWith(id: 12, name: "My name")
  /// ```
  ImportTicketListItem call({
    Object? id = const $CopyWithPlaceholder(),
    Object? createdByName = const $CopyWithPlaceholder(),
    Object? verifiedByName = const $CopyWithPlaceholder(),
    Object? supplierName = const $CopyWithPlaceholder(),
    Object? expectedArrivalDate = const $CopyWithPlaceholder(),
    Object? actualImportDate = const $CopyWithPlaceholder(),
    Object? totalCost = const $CopyWithPlaceholder(),
    Object? status = const $CopyWithPlaceholder(),
    Object? totalItems = const $CopyWithPlaceholder(),
    Object? createdAt = const $CopyWithPlaceholder(),
  }) {
    return ImportTicketListItem(
      id: id == const $CopyWithPlaceholder() || id == null
          ? _value.id
          // ignore: cast_nullable_to_non_nullable
          : id as String,
      createdByName: createdByName == const $CopyWithPlaceholder()
          ? _value.createdByName
          // ignore: cast_nullable_to_non_nullable
          : createdByName as String?,
      verifiedByName: verifiedByName == const $CopyWithPlaceholder()
          ? _value.verifiedByName
          // ignore: cast_nullable_to_non_nullable
          : verifiedByName as String?,
      supplierName: supplierName == const $CopyWithPlaceholder()
          ? _value.supplierName
          // ignore: cast_nullable_to_non_nullable
          : supplierName as String?,
      expectedArrivalDate:
          expectedArrivalDate == const $CopyWithPlaceholder() ||
              expectedArrivalDate == null
          ? _value.expectedArrivalDate
          // ignore: cast_nullable_to_non_nullable
          : expectedArrivalDate as DateTime,
      actualImportDate:
          actualImportDate == const $CopyWithPlaceholder() ||
              actualImportDate == null
          ? _value.actualImportDate
          // ignore: cast_nullable_to_non_nullable
          : actualImportDate as DateTime,
      totalCost: totalCost == const $CopyWithPlaceholder() || totalCost == null
          ? _value.totalCost
          // ignore: cast_nullable_to_non_nullable
          : totalCost as num,
      status: status == const $CopyWithPlaceholder()
          ? _value.status
          // ignore: cast_nullable_to_non_nullable
          : status as ImportStatus?,
      totalItems: totalItems == const $CopyWithPlaceholder()
          ? _value.totalItems
          // ignore: cast_nullable_to_non_nullable
          : totalItems as int?,
      createdAt: createdAt == const $CopyWithPlaceholder()
          ? _value.createdAt
          // ignore: cast_nullable_to_non_nullable
          : createdAt as DateTime?,
    );
  }
}

extension $ImportTicketListItemCopyWith on ImportTicketListItem {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfImportTicketListItem.copyWith(...)` or `instanceOfImportTicketListItem.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$ImportTicketListItemCWProxy get copyWith =>
      _$ImportTicketListItemCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ImportTicketListItem _$ImportTicketListItemFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('ImportTicketListItem', json, ($checkedConvert) {
  $checkKeys(
    json,
    requiredKeys: const [
      'id',
      'expectedArrivalDate',
      'actualImportDate',
      'totalCost',
    ],
  );
  final val = ImportTicketListItem(
    id: $checkedConvert('id', (v) => v as String),
    createdByName: $checkedConvert('createdByName', (v) => v as String?),
    verifiedByName: $checkedConvert('verifiedByName', (v) => v as String?),
    supplierName: $checkedConvert('supplierName', (v) => v as String?),
    expectedArrivalDate: $checkedConvert(
      'expectedArrivalDate',
      (v) => DateTime.parse(v as String),
    ),
    actualImportDate: $checkedConvert(
      'actualImportDate',
      (v) => DateTime.parse(v as String),
    ),
    totalCost: $checkedConvert('totalCost', (v) => v as num),
    status: $checkedConvert(
      'status',
      (v) => $enumDecodeNullable(_$ImportStatusEnumMap, v),
    ),
    totalItems: $checkedConvert('totalItems', (v) => (v as num?)?.toInt()),
    createdAt: $checkedConvert(
      'createdAt',
      (v) => v == null ? null : DateTime.parse(v as String),
    ),
  );
  return val;
});

Map<String, dynamic> _$ImportTicketListItemToJson(
  ImportTicketListItem instance,
) => <String, dynamic>{
  'id': instance.id,
  'createdByName': ?instance.createdByName,
  'verifiedByName': ?instance.verifiedByName,
  'supplierName': ?instance.supplierName,
  'expectedArrivalDate': instance.expectedArrivalDate.toIso8601String(),
  'actualImportDate': instance.actualImportDate.toIso8601String(),
  'totalCost': instance.totalCost,
  'status': ?_$ImportStatusEnumMap[instance.status],
  'totalItems': ?instance.totalItems,
  'createdAt': ?instance.createdAt?.toIso8601String(),
};

const _$ImportStatusEnumMap = {
  ImportStatus.pending: 'Pending',
  ImportStatus.inProgress: 'InProgress',
  ImportStatus.completed: 'Completed',
  ImportStatus.canceled: 'Canceled',
};
