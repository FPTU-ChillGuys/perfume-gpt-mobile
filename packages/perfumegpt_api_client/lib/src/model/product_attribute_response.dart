//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'product_attribute_response.g.dart';

@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class ProductAttributeResponse {
  /// Returns a new [ProductAttributeResponse] instance.
  ProductAttributeResponse({
    this.id,

    this.attributeId,

    this.valueId,

    required this.attribute,

    this.description,

    required this.value,
  });

  @JsonKey(name: r'id', required: false, includeIfNull: false)
  final String? id;

  @JsonKey(name: r'attributeId', required: false, includeIfNull: false)
  final int? attributeId;

  @JsonKey(name: r'valueId', required: false, includeIfNull: false)
  final int? valueId;

  @JsonKey(name: r'attribute', required: true, includeIfNull: false)
  final String attribute;

  @JsonKey(name: r'description', required: false, includeIfNull: false)
  final String? description;

  @JsonKey(name: r'value', required: true, includeIfNull: false)
  final String value;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ProductAttributeResponse &&
          other.id == id &&
          other.attributeId == attributeId &&
          other.valueId == valueId &&
          other.attribute == attribute &&
          other.description == description &&
          other.value == value;

  @override
  int get hashCode =>
      id.hashCode +
      attributeId.hashCode +
      valueId.hashCode +
      attribute.hashCode +
      (description == null ? 0 : description.hashCode) +
      value.hashCode;

  factory ProductAttributeResponse.fromJson(Map<String, dynamic> json) =>
      _$ProductAttributeResponseFromJson(json);

  Map<String, dynamic> toJson() => _$ProductAttributeResponseToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}
