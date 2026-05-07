//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'query_fragment_match.g.dart';

@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class QueryFragmentMatch {
  /// Returns a new [QueryFragmentMatch] instance.
  QueryFragmentMatch({required this.type, required this.match});

  /// Loại thuộc tính (trừ attribute và budget)
  @JsonKey(name: r'type', required: true, includeIfNull: false)
  final QueryFragmentMatchTypeEnum type;

  /// Giá trị cần khớp chính xác
  @JsonKey(name: r'match', required: true, includeIfNull: false)
  final String match;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is QueryFragmentMatch && other.type == type && other.match == match;

  @override
  int get hashCode => type.hashCode + match.hashCode;

  factory QueryFragmentMatch.fromJson(Map<String, dynamic> json) =>
      _$QueryFragmentMatchFromJson(json);

  Map<String, dynamic> toJson() => _$QueryFragmentMatchToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}

/// Loại thuộc tính (trừ attribute và budget)
enum QueryFragmentMatchTypeEnum {
  /// Loại thuộc tính (trừ attribute và budget)
  @JsonValue(r'gender')
  gender(r'gender'),

  /// Loại thuộc tính (trừ attribute và budget)
  @JsonValue(r'origin')
  origin(r'origin'),

  /// Loại thuộc tính (trừ attribute và budget)
  @JsonValue(r'brand')
  brand(r'brand'),

  /// Loại thuộc tính (trừ attribute và budget)
  @JsonValue(r'category')
  category(r'category'),

  /// Loại thuộc tính (trừ attribute và budget)
  @JsonValue(r'concentration')
  concentration(r'concentration'),

  /// Loại thuộc tính (trừ attribute và budget)
  @JsonValue(r'note')
  note(r'note'),

  /// Loại thuộc tính (trừ attribute và budget)
  @JsonValue(r'family')
  family(r'family'),

  /// Loại thuộc tính (trừ attribute và budget)
  @JsonValue(r'attribute')
  attribute(r'attribute'),

  /// Loại thuộc tính (trừ attribute và budget)
  @JsonValue(r'budget')
  budget(r'budget');

  const QueryFragmentMatchTypeEnum(this.value);

  final String value;

  @override
  String toString() => value;
}
