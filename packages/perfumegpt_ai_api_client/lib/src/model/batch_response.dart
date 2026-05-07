//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'batch_response.g.dart';

@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class BatchResponse {
  /// Returns a new [BatchResponse] instance.
  BatchResponse({
    required this.batchCode,

    required this.createdAt,

    required this.expiryDate,

    required this.id,

    required this.importQuantity,

    required this.manufactureDate,

    required this.remainingQuantity,

    required this.variantSku,
  });

  /// Batch code
  @JsonKey(name: r'batchCode', required: true, includeIfNull: false)
  final String batchCode;

  /// The date-time notation as defined by RFC 3339, section 5.6, for example, 2017-07-21T17:32:28Z
  @JsonKey(name: r'createdAt', required: true, includeIfNull: false)
  final DateTime createdAt;

  /// The date-time notation as defined by RFC 3339, section 5.6, for example, 2017-07-21T17:32:28Z
  @JsonKey(name: r'expiryDate', required: true, includeIfNull: false)
  final DateTime expiryDate;

  /// Unique identifier
  @JsonKey(name: r'id', required: true, includeIfNull: false)
  final String id;

  /// Signed 32-bit integers (commonly used integer type).
  @JsonKey(name: r'importQuantity', required: true, includeIfNull: false)
  final num importQuantity;

  /// The date-time notation as defined by RFC 3339, section 5.6, for example, 2017-07-21T17:32:28Z
  @JsonKey(name: r'manufactureDate', required: true, includeIfNull: false)
  final DateTime manufactureDate;

  /// Signed 32-bit integers (commonly used integer type).
  @JsonKey(name: r'remainingQuantity', required: true, includeIfNull: false)
  final num remainingQuantity;

  /// Variant SKU
  @JsonKey(name: r'variantSku', required: true, includeIfNull: false)
  final String variantSku;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is BatchResponse &&
          other.batchCode == batchCode &&
          other.createdAt == createdAt &&
          other.expiryDate == expiryDate &&
          other.id == id &&
          other.importQuantity == importQuantity &&
          other.manufactureDate == manufactureDate &&
          other.remainingQuantity == remainingQuantity &&
          other.variantSku == variantSku;

  @override
  int get hashCode =>
      batchCode.hashCode +
      createdAt.hashCode +
      expiryDate.hashCode +
      id.hashCode +
      importQuantity.hashCode +
      manufactureDate.hashCode +
      remainingQuantity.hashCode +
      variantSku.hashCode;

  factory BatchResponse.fromJson(Map<String, dynamic> json) =>
      _$BatchResponseFromJson(json);

  Map<String, dynamic> toJson() => _$BatchResponseToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}
