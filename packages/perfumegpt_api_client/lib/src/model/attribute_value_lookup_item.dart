//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'attribute_value_lookup_item.g.dart';

@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class AttributeValueLookupItem {
  /// Returns a new [AttributeValueLookupItem] instance.
  AttributeValueLookupItem({this.id, this.value});

  @JsonKey(name: r'id', required: false, includeIfNull: false)
  final int? id;

  @JsonKey(name: r'value', required: false, includeIfNull: false)
  final String? value;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AttributeValueLookupItem &&
          other.id == id &&
          other.value == value;

  @override
  int get hashCode => id.hashCode + value.hashCode;

  factory AttributeValueLookupItem.fromJson(Map<String, dynamic> json) =>
      _$AttributeValueLookupItemFromJson(json);

  Map<String, dynamic> toJson() => _$AttributeValueLookupItemToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}
