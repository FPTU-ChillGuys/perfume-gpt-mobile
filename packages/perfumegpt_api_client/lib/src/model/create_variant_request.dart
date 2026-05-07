//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:perfumegpt_api_client/src/model/variant_status.dart';
import 'package:perfumegpt_api_client/src/model/variant_type.dart';
import 'package:perfumegpt_api_client/src/model/product_attribute_dto.dart';
import 'package:perfumegpt_api_client/src/model/replenishment_policy.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'create_variant_request.g.dart';

@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class CreateVariantRequest {
  /// Returns a new [CreateVariantRequest] instance.
  CreateVariantRequest({
    required this.productId,

    required this.barcode,

    required this.sku,

    this.volumeMl,

    this.concentrationId,

    this.sillage,

    this.longevity,

    this.type,

    this.basePrice,

    this.retailPrice,

    this.status,

    this.restockPolicy,

    this.lowStockThreshold,

    this.attributes,

    this.temporaryMediaIds,
  });

  @JsonKey(name: r'productId', required: true, includeIfNull: false)
  final String productId;

  @JsonKey(name: r'barcode', required: true, includeIfNull: false)
  final String barcode;

  @JsonKey(name: r'sku', required: true, includeIfNull: false)
  final String sku;

  // minimum: 0
  @JsonKey(name: r'volumeMl', required: false, includeIfNull: false)
  final int? volumeMl;

  // minimum: 0
  @JsonKey(name: r'concentrationId', required: false, includeIfNull: false)
  final int? concentrationId;

  @JsonKey(name: r'sillage', required: false, includeIfNull: false)
  final int? sillage;

  @JsonKey(name: r'longevity', required: false, includeIfNull: false)
  final int? longevity;

  @JsonKey(name: r'type', required: false, includeIfNull: false)
  final VariantType? type;

  // minimum: 0
  @JsonKey(name: r'basePrice', required: false, includeIfNull: false)
  final num? basePrice;

  @JsonKey(name: r'retailPrice', required: false, includeIfNull: false)
  final num? retailPrice;

  @JsonKey(name: r'status', required: false, includeIfNull: false)
  final VariantStatus? status;

  @JsonKey(name: r'restockPolicy', required: false, includeIfNull: false)
  final ReplenishmentPolicy? restockPolicy;

  @JsonKey(name: r'lowStockThreshold', required: false, includeIfNull: false)
  final int? lowStockThreshold;

  @JsonKey(name: r'attributes', required: false, includeIfNull: false)
  final List<ProductAttributeDto>? attributes;

  @JsonKey(name: r'temporaryMediaIds', required: false, includeIfNull: false)
  final List<String>? temporaryMediaIds;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CreateVariantRequest &&
          other.productId == productId &&
          other.barcode == barcode &&
          other.sku == sku &&
          other.volumeMl == volumeMl &&
          other.concentrationId == concentrationId &&
          other.sillage == sillage &&
          other.longevity == longevity &&
          other.type == type &&
          other.basePrice == basePrice &&
          other.retailPrice == retailPrice &&
          other.status == status &&
          other.restockPolicy == restockPolicy &&
          other.lowStockThreshold == lowStockThreshold &&
          other.attributes == attributes &&
          other.temporaryMediaIds == temporaryMediaIds;

  @override
  int get hashCode =>
      productId.hashCode +
      barcode.hashCode +
      sku.hashCode +
      volumeMl.hashCode +
      concentrationId.hashCode +
      sillage.hashCode +
      longevity.hashCode +
      type.hashCode +
      basePrice.hashCode +
      (retailPrice == null ? 0 : retailPrice.hashCode) +
      status.hashCode +
      restockPolicy.hashCode +
      lowStockThreshold.hashCode +
      (attributes == null ? 0 : attributes.hashCode) +
      (temporaryMediaIds == null ? 0 : temporaryMediaIds.hashCode);

  factory CreateVariantRequest.fromJson(Map<String, dynamic> json) =>
      _$CreateVariantRequestFromJson(json);

  Map<String, dynamic> toJson() => _$CreateVariantRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}
