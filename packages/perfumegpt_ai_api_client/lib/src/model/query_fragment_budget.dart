//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'query_fragment_budget.g.dart';

@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class QueryFragmentBudget {
  /// Returns a new [QueryFragmentBudget] instance.
  QueryFragmentBudget({required this.type, this.min, this.max});

  @JsonKey(name: r'type', required: true, includeIfNull: false)
  final QueryFragmentBudgetTypeEnum type;

  /// Giá tối thiểu
  @JsonKey(name: r'min', required: false, includeIfNull: false)
  final num? min;

  /// Giá tối đa
  @JsonKey(name: r'max', required: false, includeIfNull: false)
  final num? max;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is QueryFragmentBudget &&
          other.type == type &&
          other.min == min &&
          other.max == max;

  @override
  int get hashCode => type.hashCode + min.hashCode + max.hashCode;

  factory QueryFragmentBudget.fromJson(Map<String, dynamic> json) =>
      _$QueryFragmentBudgetFromJson(json);

  Map<String, dynamic> toJson() => _$QueryFragmentBudgetToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}

enum QueryFragmentBudgetTypeEnum {
  @JsonValue(r'budget')
  budget(r'budget');

  const QueryFragmentBudgetTypeEnum(this.value);

  final String value;

  @override
  String toString() => value;
}
