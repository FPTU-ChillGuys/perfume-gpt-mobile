//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'create_batch_request.g.dart';

@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class CreateBatchRequest {
  /// Returns a new [CreateBatchRequest] instance.
  CreateBatchRequest({
    required this.batchCode,

    required this.manufactureDate,

    required this.expiryDate,

    this.quantity,
  });

  @JsonKey(name: r'batchCode', required: true, includeIfNull: false)
  final String batchCode;

  @JsonKey(name: r'manufactureDate', required: true, includeIfNull: false)
  final DateTime manufactureDate;

  @JsonKey(name: r'expiryDate', required: true, includeIfNull: false)
  final DateTime expiryDate;

  // minimum: 0
  @JsonKey(name: r'quantity', required: false, includeIfNull: false)
  final int? quantity;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CreateBatchRequest &&
          other.batchCode == batchCode &&
          other.manufactureDate == manufactureDate &&
          other.expiryDate == expiryDate &&
          other.quantity == quantity;

  @override
  int get hashCode =>
      batchCode.hashCode +
      manufactureDate.hashCode +
      expiryDate.hashCode +
      quantity.hashCode;

  factory CreateBatchRequest.fromJson(Map<String, dynamic> json) =>
      _$CreateBatchRequestFromJson(json);

  Map<String, dynamic> toJson() => _$CreateBatchRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}
