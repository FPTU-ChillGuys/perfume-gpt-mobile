//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'variant_supplier_response.g.dart';

@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class VariantSupplierResponse {
  /// Returns a new [VariantSupplierResponse] instance.
  VariantSupplierResponse({
    this.supplierId,

    required this.supplierName,

    this.negotiatedPrice,

    this.estimatedLeadTimeDays,

    this.isPrimary,
  });

  @JsonKey(name: r'supplierId', required: false, includeIfNull: false)
  final int? supplierId;

  @JsonKey(name: r'supplierName', required: true, includeIfNull: false)
  final String supplierName;

  @JsonKey(name: r'negotiatedPrice', required: false, includeIfNull: false)
  final num? negotiatedPrice;

  @JsonKey(
    name: r'estimatedLeadTimeDays',
    required: false,
    includeIfNull: false,
  )
  final int? estimatedLeadTimeDays;

  @JsonKey(name: r'isPrimary', required: false, includeIfNull: false)
  final bool? isPrimary;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is VariantSupplierResponse &&
          other.supplierId == supplierId &&
          other.supplierName == supplierName &&
          other.negotiatedPrice == negotiatedPrice &&
          other.estimatedLeadTimeDays == estimatedLeadTimeDays &&
          other.isPrimary == isPrimary;

  @override
  int get hashCode =>
      supplierId.hashCode +
      supplierName.hashCode +
      negotiatedPrice.hashCode +
      estimatedLeadTimeDays.hashCode +
      isPrimary.hashCode;

  factory VariantSupplierResponse.fromJson(Map<String, dynamic> json) =>
      _$VariantSupplierResponseFromJson(json);

  Map<String, dynamic> toJson() => _$VariantSupplierResponseToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}
