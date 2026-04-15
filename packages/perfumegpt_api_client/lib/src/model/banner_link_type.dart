//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';


enum BannerLinkType {
      @JsonValue(r'Campaign')
      campaign(r'Campaign'),
      @JsonValue(r'Product')
      product(r'Product'),
      @JsonValue(r'ProductVariant')
      productVariant(r'ProductVariant'),
      @JsonValue(r'Brand')
      brand(r'Brand');

  const BannerLinkType(this.value);

  final String value;

  @override
  String toString() => value;
}
