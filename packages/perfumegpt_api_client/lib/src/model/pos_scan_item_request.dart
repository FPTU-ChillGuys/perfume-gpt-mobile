//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'pos_scan_item_request.g.dart';

@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class PosScanItemRequest {
  /// Returns a new [PosScanItemRequest] instance.
  PosScanItemRequest({
    required this.barcode,

    required this.batchCode,

    this.quantity,
  });

  @JsonKey(name: r'barcode', required: true, includeIfNull: false)
  final String barcode;

  @JsonKey(name: r'batchCode', required: true, includeIfNull: false)
  final String batchCode;

  @JsonKey(name: r'quantity', required: false, includeIfNull: false)
  final int? quantity;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PosScanItemRequest &&
          other.barcode == barcode &&
          other.batchCode == batchCode &&
          other.quantity == quantity;

  @override
  int get hashCode => barcode.hashCode + batchCode.hashCode + quantity.hashCode;

  factory PosScanItemRequest.fromJson(Map<String, dynamic> json) =>
      _$PosScanItemRequestFromJson(json);

  Map<String, dynamic> toJson() => _$PosScanItemRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}
