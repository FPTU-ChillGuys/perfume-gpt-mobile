//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'update_catalog_item_request.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class UpdateCatalogItemRequest {
  /// Returns a new [UpdateCatalogItemRequest] instance.
  UpdateCatalogItemRequest({

     this.negotiatedPrice,

     this.estimatedLeadTimeDays,
  });

          // minimum: 0
  @JsonKey(
    
    name: r'negotiatedPrice',
    required: false,
    includeIfNull: false,
  )


  final num? negotiatedPrice;



          // minimum: 0
  @JsonKey(
    
    name: r'estimatedLeadTimeDays',
    required: false,
    includeIfNull: false,
  )


  final int? estimatedLeadTimeDays;





    @override
    bool operator ==(Object other) => identical(this, other) || other is UpdateCatalogItemRequest &&
      other.negotiatedPrice == negotiatedPrice &&
      other.estimatedLeadTimeDays == estimatedLeadTimeDays;

    @override
    int get hashCode =>
        negotiatedPrice.hashCode +
        estimatedLeadTimeDays.hashCode;

  factory UpdateCatalogItemRequest.fromJson(Map<String, dynamic> json) => _$UpdateCatalogItemRequestFromJson(json);

  Map<String, dynamic> toJson() => _$UpdateCatalogItemRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

