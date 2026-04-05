//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'create_import_detail_request.g.dart';

@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class CreateImportDetailRequest {
  /// Returns a new [CreateImportDetailRequest] instance.
  CreateImportDetailRequest({
    required this.variantId,

    this.expectedQuantity,

    this.unitPrice,
  });

  @JsonKey(name: r'variantId', required: true, includeIfNull: false)
  final String variantId;

  // minimum: 0
  @JsonKey(name: r'expectedQuantity', required: false, includeIfNull: false)
  final int? expectedQuantity;

  // minimum: 0
  @JsonKey(name: r'unitPrice', required: false, includeIfNull: false)
  final num? unitPrice;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CreateImportDetailRequest &&
          other.variantId == variantId &&
          other.expectedQuantity == expectedQuantity &&
          other.unitPrice == unitPrice;

  @override
  int get hashCode =>
      variantId.hashCode + expectedQuantity.hashCode + unitPrice.hashCode;

  factory CreateImportDetailRequest.fromJson(Map<String, dynamic> json) =>
      _$CreateImportDetailRequestFromJson(json);

  Map<String, dynamic> toJson() => _$CreateImportDetailRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}
