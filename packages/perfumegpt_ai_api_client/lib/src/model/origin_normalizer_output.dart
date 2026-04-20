//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'origin_normalizer_output.g.dart';

@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class OriginNormalizerOutput {
  /// Returns a new [OriginNormalizerOutput] instance.
  OriginNormalizerOutput({this.origins});

  /// Danh sách nguồn gốc
  @JsonKey(name: r'origins', required: false, includeIfNull: false)
  final List<String>? origins;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is OriginNormalizerOutput && other.origins == origins;

  @override
  int get hashCode => origins.hashCode;

  factory OriginNormalizerOutput.fromJson(Map<String, dynamic> json) =>
      _$OriginNormalizerOutputFromJson(json);

  Map<String, dynamic> toJson() => _$OriginNormalizerOutputToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}
