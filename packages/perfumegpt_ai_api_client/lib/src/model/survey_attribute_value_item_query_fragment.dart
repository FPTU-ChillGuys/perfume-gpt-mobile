//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:perfumegpt_ai_api_client/src/model/query_fragment_match.dart';
import 'package:perfumegpt_ai_api_client/src/model/query_fragment_budget.dart';
import 'package:perfumegpt_ai_api_client/src/model/query_fragment_attribute.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'survey_attribute_value_item_query_fragment.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class SurveyAttributeValueItemQueryFragment {
  /// Returns a new [SurveyAttributeValueItemQueryFragment] instance.
  SurveyAttributeValueItemQueryFragment({

    required  this.type,

    required  this.match,

    required  this.attributeName,

     this.min,

     this.max,
  });

      /// Loại thuộc tính (trừ attribute và budget)
  @JsonKey(
    
    name: r'type',
    required: true,
    includeIfNull: false,
  )


  final SurveyAttributeValueItemQueryFragmentTypeEnum type;



      /// Giá trị thuộc tính cần khớp
  @JsonKey(
    
    name: r'match',
    required: true,
    includeIfNull: false,
  )


  final String match;



      /// Tên loại thuộc tính (ví dụ: Nồng độ, Độ lưu hương)
  @JsonKey(
    
    name: r'attributeName',
    required: true,
    includeIfNull: false,
  )


  final String attributeName;



      /// Giá tối thiểu
  @JsonKey(
    
    name: r'min',
    required: false,
    includeIfNull: false,
  )


  final num? min;



      /// Giá tối đa
  @JsonKey(
    
    name: r'max',
    required: false,
    includeIfNull: false,
  )


  final num? max;





    @override
    bool operator ==(Object other) => identical(this, other) || other is SurveyAttributeValueItemQueryFragment &&
      other.type == type &&
      other.match == match &&
      other.attributeName == attributeName &&
      other.min == min &&
      other.max == max;

    @override
    int get hashCode =>
        type.hashCode +
        match.hashCode +
        attributeName.hashCode +
        min.hashCode +
        max.hashCode;

  factory SurveyAttributeValueItemQueryFragment.fromJson(Map<String, dynamic> json) => _$SurveyAttributeValueItemQueryFragmentFromJson(json);

  Map<String, dynamic> toJson() => _$SurveyAttributeValueItemQueryFragmentToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

/// Loại thuộc tính (trừ attribute và budget)
enum SurveyAttributeValueItemQueryFragmentTypeEnum {
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

const SurveyAttributeValueItemQueryFragmentTypeEnum(this.value);

final String value;

@override
String toString() => value;
}


