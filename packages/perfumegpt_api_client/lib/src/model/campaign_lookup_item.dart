//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'campaign_lookup_item.g.dart';

@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class CampaignLookupItem {
  /// Returns a new [CampaignLookupItem] instance.
  CampaignLookupItem({this.id, required this.name});

  @JsonKey(name: r'id', required: false, includeIfNull: false)
  final String? id;

  @JsonKey(name: r'name', required: true, includeIfNull: false)
  final String name;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CampaignLookupItem && other.id == id && other.name == name;

  @override
  int get hashCode => id.hashCode + name.hashCode;

  factory CampaignLookupItem.fromJson(Map<String, dynamic> json) =>
      _$CampaignLookupItemFromJson(json);

  Map<String, dynamic> toJson() => _$CampaignLookupItemToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}
