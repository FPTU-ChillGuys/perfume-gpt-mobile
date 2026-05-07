//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'swap_damaged_stock_request.g.dart';

@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class SwapDamagedStockRequest {
  /// Returns a new [SwapDamagedStockRequest] instance.
  SwapDamagedStockRequest({
    required this.damagedReservationId,

    this.damagedQuantity,

    this.damageNote,
  });

  @JsonKey(name: r'damagedReservationId', required: true, includeIfNull: false)
  final String damagedReservationId;

  @JsonKey(name: r'damagedQuantity', required: false, includeIfNull: false)
  final int? damagedQuantity;

  @JsonKey(name: r'damageNote', required: false, includeIfNull: false)
  final String? damageNote;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SwapDamagedStockRequest &&
          other.damagedReservationId == damagedReservationId &&
          other.damagedQuantity == damagedQuantity &&
          other.damageNote == damageNote;

  @override
  int get hashCode =>
      damagedReservationId.hashCode +
      damagedQuantity.hashCode +
      (damageNote == null ? 0 : damageNote.hashCode);

  factory SwapDamagedStockRequest.fromJson(Map<String, dynamic> json) =>
      _$SwapDamagedStockRequestFromJson(json);

  Map<String, dynamic> toJson() => _$SwapDamagedStockRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}
