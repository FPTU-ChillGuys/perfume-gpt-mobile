//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'create_catalog_item_request.g.dart';

@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class CreateCatalogItemRequest {
  /// Returns a new [CreateCatalogItemRequest] instance.
  CreateCatalogItemRequest({
    required this.productVariantId,

    this.supplierId,

    this.negotiatedPrice,

    this.estimatedLeadTimeDays,

    this.isPrimary,
  });

  @JsonKey(name: r'productVariantId', required: true, includeIfNull: false)
  final String productVariantId;

  // minimum: 0
  @JsonKey(name: r'supplierId', required: false, includeIfNull: false)
  final int? supplierId;

  // minimum: 0
  @JsonKey(name: r'negotiatedPrice', required: false, includeIfNull: false)
  final num? negotiatedPrice;

  // minimum: 0
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
      other is CreateCatalogItemRequest &&
          other.productVariantId == productVariantId &&
          other.supplierId == supplierId &&
          other.negotiatedPrice == negotiatedPrice &&
          other.estimatedLeadTimeDays == estimatedLeadTimeDays &&
          other.isPrimary == isPrimary;

  @override
  int get hashCode =>
      productVariantId.hashCode +
      supplierId.hashCode +
      negotiatedPrice.hashCode +
      estimatedLeadTimeDays.hashCode +
      isPrimary.hashCode;

  factory CreateCatalogItemRequest.fromJson(Map<String, dynamic> json) =>
      _$CreateCatalogItemRequestFromJson(json);

  Map<String, dynamic> toJson() => _$CreateCatalogItemRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}
