//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'concentration_lookup_dto.g.dart';

@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class ConcentrationLookupDto {
  /// Returns a new [ConcentrationLookupDto] instance.
  ConcentrationLookupDto({this.id, this.name});

  @JsonKey(name: r'id', required: false, includeIfNull: false)
  final int? id;

  @JsonKey(name: r'name', required: false, includeIfNull: false)
  final String? name;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ConcentrationLookupDto && other.id == id && other.name == name;

  @override
  int get hashCode => id.hashCode + name.hashCode;

  factory ConcentrationLookupDto.fromJson(Map<String, dynamic> json) =>
      _$ConcentrationLookupDtoFromJson(json);

  Map<String, dynamic> toJson() => _$ConcentrationLookupDtoToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}
