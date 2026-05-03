// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_phrase_rule_request.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$AddPhraseRuleRequestCWProxy {
  AddPhraseRuleRequest phrase(String phrase);

  AddPhraseRuleRequest ruleType(AddPhraseRuleRequestRuleTypeEnum ruleType);

  AddPhraseRuleRequest scope(AddPhraseRuleRequestScopeEnum? scope);

  AddPhraseRuleRequest confidence(num? confidence);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `AddPhraseRuleRequest(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// AddPhraseRuleRequest(...).copyWith(id: 12, name: "My name")
  /// ```
  AddPhraseRuleRequest call({
    String phrase,
    AddPhraseRuleRequestRuleTypeEnum ruleType,
    AddPhraseRuleRequestScopeEnum? scope,
    num? confidence,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfAddPhraseRuleRequest.copyWith(...)` or call `instanceOfAddPhraseRuleRequest.copyWith.fieldName(value)` for a single field.
class _$AddPhraseRuleRequestCWProxyImpl
    implements _$AddPhraseRuleRequestCWProxy {
  const _$AddPhraseRuleRequestCWProxyImpl(this._value);

  final AddPhraseRuleRequest _value;

  @override
  AddPhraseRuleRequest phrase(String phrase) => call(phrase: phrase);

  @override
  AddPhraseRuleRequest ruleType(AddPhraseRuleRequestRuleTypeEnum ruleType) =>
      call(ruleType: ruleType);

  @override
  AddPhraseRuleRequest scope(AddPhraseRuleRequestScopeEnum? scope) =>
      call(scope: scope);

  @override
  AddPhraseRuleRequest confidence(num? confidence) =>
      call(confidence: confidence);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `AddPhraseRuleRequest(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// AddPhraseRuleRequest(...).copyWith(id: 12, name: "My name")
  /// ```
  AddPhraseRuleRequest call({
    Object? phrase = const $CopyWithPlaceholder(),
    Object? ruleType = const $CopyWithPlaceholder(),
    Object? scope = const $CopyWithPlaceholder(),
    Object? confidence = const $CopyWithPlaceholder(),
  }) {
    return AddPhraseRuleRequest(
      phrase: phrase == const $CopyWithPlaceholder() || phrase == null
          ? _value.phrase
          // ignore: cast_nullable_to_non_nullable
          : phrase as String,
      ruleType: ruleType == const $CopyWithPlaceholder() || ruleType == null
          ? _value.ruleType
          // ignore: cast_nullable_to_non_nullable
          : ruleType as AddPhraseRuleRequestRuleTypeEnum,
      scope: scope == const $CopyWithPlaceholder()
          ? _value.scope
          // ignore: cast_nullable_to_non_nullable
          : scope as AddPhraseRuleRequestScopeEnum?,
      confidence: confidence == const $CopyWithPlaceholder()
          ? _value.confidence
          // ignore: cast_nullable_to_non_nullable
          : confidence as num?,
    );
  }
}

extension $AddPhraseRuleRequestCopyWith on AddPhraseRuleRequest {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfAddPhraseRuleRequest.copyWith(...)` or `instanceOfAddPhraseRuleRequest.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$AddPhraseRuleRequestCWProxy get copyWith =>
      _$AddPhraseRuleRequestCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AddPhraseRuleRequest _$AddPhraseRuleRequestFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('AddPhraseRuleRequest', json, ($checkedConvert) {
  $checkKeys(json, requiredKeys: const ['phrase', 'ruleType']);
  final val = AddPhraseRuleRequest(
    phrase: $checkedConvert('phrase', (v) => v as String),
    ruleType: $checkedConvert(
      'ruleType',
      (v) => $enumDecode(_$AddPhraseRuleRequestRuleTypeEnumEnumMap, v),
    ),
    scope: $checkedConvert(
      'scope',
      (v) => $enumDecodeNullable(_$AddPhraseRuleRequestScopeEnumEnumMap, v),
    ),
    confidence: $checkedConvert('confidence', (v) => v as num?),
  );
  return val;
});

Map<String, dynamic> _$AddPhraseRuleRequestToJson(
  AddPhraseRuleRequest instance,
) => <String, dynamic>{
  'phrase': instance.phrase,
  'ruleType': _$AddPhraseRuleRequestRuleTypeEnumEnumMap[instance.ruleType]!,
  'scope': ?_$AddPhraseRuleRequestScopeEnumEnumMap[instance.scope],
  'confidence': ?instance.confidence,
};

const _$AddPhraseRuleRequestRuleTypeEnumEnumMap = {
  AddPhraseRuleRequestRuleTypeEnum.consume: 'consume',
  AddPhraseRuleRequestRuleTypeEnum.extract: 'extract',
  AddPhraseRuleRequestRuleTypeEnum.replace: 'replace',
};

const _$AddPhraseRuleRequestScopeEnumEnumMap = {
  AddPhraseRuleRequestScopeEnum.global: 'global',
  AddPhraseRuleRequestScopeEnum.product: 'product',
  AddPhraseRuleRequestScopeEnum.brand: 'brand',
};
