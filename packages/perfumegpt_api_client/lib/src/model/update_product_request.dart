//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:perfumegpt_api_client/src/model/product_attribute_dto.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'update_product_request.g.dart';

@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class UpdateProductRequest {
  /// Returns a new [UpdateProductRequest] instance.
  UpdateProductRequest({
    this.name,

    this.brandId,

    this.categoryId,

    this.description,

    this.temporaryMediaIdsToAdd,

    this.mediaIdsToDelete,

    this.attributes,
  });

  @JsonKey(name: r'name', required: false, includeIfNull: false)
  final String? name;

  @JsonKey(name: r'brandId', required: false, includeIfNull: false)
  final int? brandId;

  @JsonKey(name: r'categoryId', required: false, includeIfNull: false)
  final int? categoryId;

  @JsonKey(name: r'description', required: false, includeIfNull: false)
  final String? description;

  @JsonKey(
    name: r'temporaryMediaIdsToAdd',
    required: false,
    includeIfNull: false,
  )
  final List<String>? temporaryMediaIdsToAdd;

  @JsonKey(name: r'mediaIdsToDelete', required: false, includeIfNull: false)
  final List<String>? mediaIdsToDelete;

  @JsonKey(name: r'attributes', required: false, includeIfNull: false)
  final List<ProductAttributeDto>? attributes;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is UpdateProductRequest &&
          other.name == name &&
          other.brandId == brandId &&
          other.categoryId == categoryId &&
          other.description == description &&
          other.temporaryMediaIdsToAdd == temporaryMediaIdsToAdd &&
          other.mediaIdsToDelete == mediaIdsToDelete &&
          other.attributes == attributes;

  @override
  int get hashCode =>
      (name == null ? 0 : name.hashCode) +
      brandId.hashCode +
      categoryId.hashCode +
      (description == null ? 0 : description.hashCode) +
      (temporaryMediaIdsToAdd == null ? 0 : temporaryMediaIdsToAdd.hashCode) +
      (mediaIdsToDelete == null ? 0 : mediaIdsToDelete.hashCode) +
      (attributes == null ? 0 : attributes.hashCode);

  factory UpdateProductRequest.fromJson(Map<String, dynamic> json) =>
      _$UpdateProductRequestFromJson(json);

  Map<String, dynamic> toJson() => _$UpdateProductRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}
