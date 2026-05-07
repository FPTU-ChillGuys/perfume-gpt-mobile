//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'return_item_dto.g.dart';

@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class ReturnItemDto {
  /// Returns a new [ReturnItemDto] instance.
  ReturnItemDto({this.orderDetailId, this.quantity});

  @JsonKey(name: r'orderDetailId', required: false, includeIfNull: false)
  final String? orderDetailId;

  @JsonKey(name: r'quantity', required: false, includeIfNull: false)
  final int? quantity;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ReturnItemDto &&
          other.orderDetailId == orderDetailId &&
          other.quantity == quantity;

  @override
  int get hashCode => orderDetailId.hashCode + quantity.hashCode;

  factory ReturnItemDto.fromJson(Map<String, dynamic> json) =>
      _$ReturnItemDtoFromJson(json);

  Map<String, dynamic> toJson() => _$ReturnItemDtoToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}
