//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'inventory_log.g.dart';

@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class InventoryLog {
  /// Returns a new [InventoryLog] instance.
  InventoryLog({
    required this.id,

    required this.createdAt,

    required this.updatedAt,

    required this.isActive,

    required this.inventoryLog,

    required this.type,
  });

  /// ID duy nhất (UUID)
  @JsonKey(name: r'id', required: true, includeIfNull: false)
  final String id;

  /// Ngày tạo bản ghi
  @JsonKey(name: r'createdAt', required: true, includeIfNull: false)
  final DateTime createdAt;

  /// Ngày cập nhật gần nhất
  @JsonKey(name: r'updatedAt', required: true, includeIfNull: false)
  final DateTime updatedAt;

  /// Trạng thái hoạt động
  @JsonKey(name: r'isActive', required: true, includeIfNull: false)
  final bool isActive;

  /// Nội dung log tồn kho
  @JsonKey(name: r'inventoryLog', required: true, includeIfNull: false)
  final String inventoryLog;

  /// Loại log tồn kho
  @JsonKey(name: r'type', required: true, includeIfNull: false)
  final InventoryLogTypeEnum type;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is InventoryLog &&
          other.id == id &&
          other.createdAt == createdAt &&
          other.updatedAt == updatedAt &&
          other.isActive == isActive &&
          other.inventoryLog == inventoryLog &&
          other.type == type;

  @override
  int get hashCode =>
      id.hashCode +
      createdAt.hashCode +
      updatedAt.hashCode +
      isActive.hashCode +
      inventoryLog.hashCode +
      type.hashCode;

  factory InventoryLog.fromJson(Map<String, dynamic> json) =>
      _$InventoryLogFromJson(json);

  Map<String, dynamic> toJson() => _$InventoryLogToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}

/// Loại log tồn kho
enum InventoryLogTypeEnum {
  /// Loại log tồn kho
  @JsonValue(r'REPORT')
  REPORT(r'REPORT'),

  /// Loại log tồn kho
  @JsonValue(r'RESTOCK')
  RESTOCK(r'RESTOCK'),

  /// Loại log tồn kho
  @JsonValue(r'SLOW_STOCK')
  SLOW_STOCK(r'SLOW_STOCK');

  const InventoryLogTypeEnum(this.value);

  final String value;

  @override
  String toString() => value;
}
