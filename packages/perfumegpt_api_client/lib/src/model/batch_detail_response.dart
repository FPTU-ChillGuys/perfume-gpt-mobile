//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'batch_detail_response.g.dart';

@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class BatchDetailResponse {
  /// Returns a new [BatchDetailResponse] instance.
  BatchDetailResponse({
    this.variantId,

    this.variantSku,

    this.productName,

    this.volumeMl,

    this.concentrationName,

    this.isExpired,

    this.daysUntilExpiry,

    this.id,

    this.batchCode,

    this.manufactureDate,

    this.expiryDate,

    this.importQuantity,

    this.remainingQuantity,

    this.createdAt,
  });

  @JsonKey(name: r'variantId', required: false, includeIfNull: false)
  final String? variantId;

  @JsonKey(name: r'variantSku', required: false, includeIfNull: false)
  final String? variantSku;

  @JsonKey(name: r'productName', required: false, includeIfNull: false)
  final String? productName;

  @JsonKey(name: r'volumeMl', required: false, includeIfNull: false)
  final int? volumeMl;

  @JsonKey(name: r'concentrationName', required: false, includeIfNull: false)
  final String? concentrationName;

  @JsonKey(name: r'isExpired', required: false, includeIfNull: false)
  final bool? isExpired;

  @JsonKey(name: r'daysUntilExpiry', required: false, includeIfNull: false)
  final int? daysUntilExpiry;

  @JsonKey(name: r'id', required: false, includeIfNull: false)
  final String? id;

  @JsonKey(name: r'batchCode', required: false, includeIfNull: false)
  final String? batchCode;

  @JsonKey(name: r'manufactureDate', required: false, includeIfNull: false)
  final DateTime? manufactureDate;

  @JsonKey(name: r'expiryDate', required: false, includeIfNull: false)
  final DateTime? expiryDate;

  @JsonKey(name: r'importQuantity', required: false, includeIfNull: false)
  final int? importQuantity;

  @JsonKey(name: r'remainingQuantity', required: false, includeIfNull: false)
  final int? remainingQuantity;

  @JsonKey(name: r'createdAt', required: false, includeIfNull: false)
  final DateTime? createdAt;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is BatchDetailResponse &&
          other.variantId == variantId &&
          other.variantSku == variantSku &&
          other.productName == productName &&
          other.volumeMl == volumeMl &&
          other.concentrationName == concentrationName &&
          other.isExpired == isExpired &&
          other.daysUntilExpiry == daysUntilExpiry &&
          other.id == id &&
          other.batchCode == batchCode &&
          other.manufactureDate == manufactureDate &&
          other.expiryDate == expiryDate &&
          other.importQuantity == importQuantity &&
          other.remainingQuantity == remainingQuantity &&
          other.createdAt == createdAt;

  @override
  int get hashCode =>
      variantId.hashCode +
      variantSku.hashCode +
      productName.hashCode +
      volumeMl.hashCode +
      concentrationName.hashCode +
      isExpired.hashCode +
      daysUntilExpiry.hashCode +
      id.hashCode +
      batchCode.hashCode +
      manufactureDate.hashCode +
      expiryDate.hashCode +
      importQuantity.hashCode +
      remainingQuantity.hashCode +
      createdAt.hashCode;

  factory BatchDetailResponse.fromJson(Map<String, dynamic> json) =>
      _$BatchDetailResponseFromJson(json);

  Map<String, dynamic> toJson() => _$BatchDetailResponseToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}
