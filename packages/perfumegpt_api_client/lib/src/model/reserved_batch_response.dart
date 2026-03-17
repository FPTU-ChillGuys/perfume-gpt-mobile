//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'reserved_batch_response.g.dart';

@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class ReservedBatchResponse {
  /// Returns a new [ReservedBatchResponse] instance.
  ReservedBatchResponse({
    this.batchId,

    this.batchCode,

    this.reservedQuantity,

    this.expiryDate,
  });

  @JsonKey(name: r'batchId', required: false, includeIfNull: false)
  final String? batchId;

  @JsonKey(name: r'batchCode', required: false, includeIfNull: false)
  final String? batchCode;

  @JsonKey(name: r'reservedQuantity', required: false, includeIfNull: false)
  final int? reservedQuantity;

  @JsonKey(name: r'expiryDate', required: false, includeIfNull: false)
  final DateTime? expiryDate;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ReservedBatchResponse &&
          other.batchId == batchId &&
          other.batchCode == batchCode &&
          other.reservedQuantity == reservedQuantity &&
          other.expiryDate == expiryDate;

  @override
  int get hashCode =>
      batchId.hashCode +
      batchCode.hashCode +
      reservedQuantity.hashCode +
      expiryDate.hashCode;

  factory ReservedBatchResponse.fromJson(Map<String, dynamic> json) =>
      _$ReservedBatchResponseFromJson(json);

  Map<String, dynamic> toJson() => _$ReservedBatchResponseToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}
