//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'add_phrase_rule_request.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class AddPhraseRuleRequest {
  /// Returns a new [AddPhraseRuleRequest] instance.
  AddPhraseRuleRequest({

    required  this.phrase,

    required  this.ruleType,

     this.scope,

     this.confidence,
  });

      /// Phrase text (can include diacritics)
  @JsonKey(
    
    name: r'phrase',
    required: true,
    includeIfNull: false,
  )


  final String phrase;



      /// Rule type
  @JsonKey(
    
    name: r'ruleType',
    required: true,
    includeIfNull: false,
  )


  final AddPhraseRuleRequestRuleTypeEnum ruleType;



      /// Rule scope
  @JsonKey(
    
    name: r'scope',
    required: false,
    includeIfNull: false,
  )


  final AddPhraseRuleRequestScopeEnum? scope;



      /// Confidence score (0-1)
  @JsonKey(
    
    name: r'confidence',
    required: false,
    includeIfNull: false,
  )


  final num? confidence;





    @override
    bool operator ==(Object other) => identical(this, other) || other is AddPhraseRuleRequest &&
      other.phrase == phrase &&
      other.ruleType == ruleType &&
      other.scope == scope &&
      other.confidence == confidence;

    @override
    int get hashCode =>
        phrase.hashCode +
        ruleType.hashCode +
        scope.hashCode +
        confidence.hashCode;

  factory AddPhraseRuleRequest.fromJson(Map<String, dynamic> json) => _$AddPhraseRuleRequestFromJson(json);

  Map<String, dynamic> toJson() => _$AddPhraseRuleRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

/// Rule type
enum AddPhraseRuleRequestRuleTypeEnum {
    /// Rule type
@JsonValue(r'consume')
consume(r'consume'),
    /// Rule type
@JsonValue(r'extract')
extract(r'extract'),
    /// Rule type
@JsonValue(r'replace')
replace(r'replace');

const AddPhraseRuleRequestRuleTypeEnum(this.value);

final String value;

@override
String toString() => value;
}


/// Rule scope
enum AddPhraseRuleRequestScopeEnum {
    /// Rule scope
@JsonValue(r'global')
global(r'global'),
    /// Rule scope
@JsonValue(r'product')
product(r'product'),
    /// Rule scope
@JsonValue(r'brand')
brand(r'brand');

const AddPhraseRuleRequestScopeEnum(this.value);

final String value;

@override
String toString() => value;
}


