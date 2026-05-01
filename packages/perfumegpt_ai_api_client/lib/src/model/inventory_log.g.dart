// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'inventory_log.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$InventoryLogCWProxy {
  InventoryLog id(String id);

  InventoryLog createdAt(DateTime createdAt);

  InventoryLog updatedAt(DateTime updatedAt);

  InventoryLog isActive(bool isActive);

  InventoryLog inventoryLog(String inventoryLog);

  InventoryLog type(InventoryLogTypeEnum type);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `InventoryLog(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// InventoryLog(...).copyWith(id: 12, name: "My name")
  /// ```
  InventoryLog call({
    String id,
    DateTime createdAt,
    DateTime updatedAt,
    bool isActive,
    String inventoryLog,
    InventoryLogTypeEnum type,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfInventoryLog.copyWith(...)` or call `instanceOfInventoryLog.copyWith.fieldName(value)` for a single field.
class _$InventoryLogCWProxyImpl implements _$InventoryLogCWProxy {
  const _$InventoryLogCWProxyImpl(this._value);

  final InventoryLog _value;

  @override
  InventoryLog id(String id) => call(id: id);

  @override
  InventoryLog createdAt(DateTime createdAt) => call(createdAt: createdAt);

  @override
  InventoryLog updatedAt(DateTime updatedAt) => call(updatedAt: updatedAt);

  @override
  InventoryLog isActive(bool isActive) => call(isActive: isActive);

  @override
  InventoryLog inventoryLog(String inventoryLog) =>
      call(inventoryLog: inventoryLog);

  @override
  InventoryLog type(InventoryLogTypeEnum type) => call(type: type);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `InventoryLog(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// InventoryLog(...).copyWith(id: 12, name: "My name")
  /// ```
  InventoryLog call({
    Object? id = const $CopyWithPlaceholder(),
    Object? createdAt = const $CopyWithPlaceholder(),
    Object? updatedAt = const $CopyWithPlaceholder(),
    Object? isActive = const $CopyWithPlaceholder(),
    Object? inventoryLog = const $CopyWithPlaceholder(),
    Object? type = const $CopyWithPlaceholder(),
  }) {
    return InventoryLog(
      id: id == const $CopyWithPlaceholder() || id == null
          ? _value.id
          // ignore: cast_nullable_to_non_nullable
          : id as String,
      createdAt: createdAt == const $CopyWithPlaceholder() || createdAt == null
          ? _value.createdAt
          // ignore: cast_nullable_to_non_nullable
          : createdAt as DateTime,
      updatedAt: updatedAt == const $CopyWithPlaceholder() || updatedAt == null
          ? _value.updatedAt
          // ignore: cast_nullable_to_non_nullable
          : updatedAt as DateTime,
      isActive: isActive == const $CopyWithPlaceholder() || isActive == null
          ? _value.isActive
          // ignore: cast_nullable_to_non_nullable
          : isActive as bool,
      inventoryLog:
          inventoryLog == const $CopyWithPlaceholder() || inventoryLog == null
          ? _value.inventoryLog
          // ignore: cast_nullable_to_non_nullable
          : inventoryLog as String,
      type: type == const $CopyWithPlaceholder() || type == null
          ? _value.type
          // ignore: cast_nullable_to_non_nullable
          : type as InventoryLogTypeEnum,
    );
  }
}

extension $InventoryLogCopyWith on InventoryLog {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfInventoryLog.copyWith(...)` or `instanceOfInventoryLog.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$InventoryLogCWProxy get copyWith => _$InventoryLogCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

InventoryLog _$InventoryLogFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('InventoryLog', json, ($checkedConvert) {
  $checkKeys(
    json,
    requiredKeys: const [
      'id',
      'createdAt',
      'updatedAt',
      'isActive',
      'inventoryLog',
      'type',
    ],
  );
  final val = InventoryLog(
    id: $checkedConvert('id', (v) => v as String),
    createdAt: $checkedConvert('createdAt', (v) => DateTime.parse(v as String)),
    updatedAt: $checkedConvert('updatedAt', (v) => DateTime.parse(v as String)),
    isActive: $checkedConvert('isActive', (v) => v as bool),
    inventoryLog: $checkedConvert('inventoryLog', (v) => v as String),
    type: $checkedConvert(
      'type',
      (v) => $enumDecode(_$InventoryLogTypeEnumEnumMap, v),
    ),
  );
  return val;
});

Map<String, dynamic> _$InventoryLogToJson(InventoryLog instance) =>
    <String, dynamic>{
      'id': instance.id,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
      'isActive': instance.isActive,
      'inventoryLog': instance.inventoryLog,
      'type': _$InventoryLogTypeEnumEnumMap[instance.type]!,
    };

const _$InventoryLogTypeEnumEnumMap = {
  InventoryLogTypeEnum.REPORT: 'REPORT',
  InventoryLogTypeEnum.RESTOCK: 'RESTOCK',
  InventoryLogTypeEnum.SLOW_STOCK: 'SLOW_STOCK',
};
