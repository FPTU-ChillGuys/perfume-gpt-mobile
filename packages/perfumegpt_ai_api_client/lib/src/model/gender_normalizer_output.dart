//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'gender_normalizer_output.g.dart';

@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class GenderNormalizerOutput {
  /// Returns a new [GenderNormalizerOutput] instance.
  GenderNormalizerOutput({this.value});

  /// Giới tính nước hoa
  @JsonKey(name: r'value', required: false, includeIfNull: false)
  final GenderNormalizerOutputValueEnum? value;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is GenderNormalizerOutput && other.value == value;

  @override
  int get hashCode => value.hashCode;

  factory GenderNormalizerOutput.fromJson(Map<String, dynamic> json) =>
      _$GenderNormalizerOutputFromJson(json);

  Map<String, dynamic> toJson() => _$GenderNormalizerOutputToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}

/// Giới tính nước hoa
enum GenderNormalizerOutputValueEnum {
  /// Giới tính nước hoa
  @JsonValue(r'Nam')
  nam(r'Nam'),

  /// Giới tính nước hoa
  @JsonValue(r'Nữ')
  n(r'Nữ'),

  /// Giới tính nước hoa
  @JsonValue(r'Unisex')
  unisex(r'Unisex');

  const GenderNormalizerOutputValueEnum(this.value);

  final String value;

  @override
  String toString() => value;
}
