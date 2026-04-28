// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_question_from_attribute_request.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$CreateQuestionFromAttributeRequestCWProxy {
  CreateQuestionFromAttributeRequest question(String question);

  CreateQuestionFromAttributeRequest questionType(
    CreateQuestionFromAttributeRequestQuestionTypeEnum questionType,
  );

  CreateQuestionFromAttributeRequest attributeType(
    CreateQuestionFromAttributeRequestAttributeTypeEnum attributeType,
  );

  CreateQuestionFromAttributeRequest attributeName(String? attributeName);

  CreateQuestionFromAttributeRequest selectedValues(
    List<String>? selectedValues,
  );

  CreateQuestionFromAttributeRequest budgetRanges(List<String>? budgetRanges);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `CreateQuestionFromAttributeRequest(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// CreateQuestionFromAttributeRequest(...).copyWith(id: 12, name: "My name")
  /// ```
  CreateQuestionFromAttributeRequest call({
    String question,
    CreateQuestionFromAttributeRequestQuestionTypeEnum questionType,
    CreateQuestionFromAttributeRequestAttributeTypeEnum attributeType,
    String? attributeName,
    List<String>? selectedValues,
    List<String>? budgetRanges,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfCreateQuestionFromAttributeRequest.copyWith(...)` or call `instanceOfCreateQuestionFromAttributeRequest.copyWith.fieldName(value)` for a single field.
class _$CreateQuestionFromAttributeRequestCWProxyImpl
    implements _$CreateQuestionFromAttributeRequestCWProxy {
  const _$CreateQuestionFromAttributeRequestCWProxyImpl(this._value);

  final CreateQuestionFromAttributeRequest _value;

  @override
  CreateQuestionFromAttributeRequest question(String question) =>
      call(question: question);

  @override
  CreateQuestionFromAttributeRequest questionType(
    CreateQuestionFromAttributeRequestQuestionTypeEnum questionType,
  ) => call(questionType: questionType);

  @override
  CreateQuestionFromAttributeRequest attributeType(
    CreateQuestionFromAttributeRequestAttributeTypeEnum attributeType,
  ) => call(attributeType: attributeType);

  @override
  CreateQuestionFromAttributeRequest attributeName(String? attributeName) =>
      call(attributeName: attributeName);

  @override
  CreateQuestionFromAttributeRequest selectedValues(
    List<String>? selectedValues,
  ) => call(selectedValues: selectedValues);

  @override
  CreateQuestionFromAttributeRequest budgetRanges(List<String>? budgetRanges) =>
      call(budgetRanges: budgetRanges);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `CreateQuestionFromAttributeRequest(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// CreateQuestionFromAttributeRequest(...).copyWith(id: 12, name: "My name")
  /// ```
  CreateQuestionFromAttributeRequest call({
    Object? question = const $CopyWithPlaceholder(),
    Object? questionType = const $CopyWithPlaceholder(),
    Object? attributeType = const $CopyWithPlaceholder(),
    Object? attributeName = const $CopyWithPlaceholder(),
    Object? selectedValues = const $CopyWithPlaceholder(),
    Object? budgetRanges = const $CopyWithPlaceholder(),
  }) {
    return CreateQuestionFromAttributeRequest(
      question: question == const $CopyWithPlaceholder() || question == null
          ? _value.question
          // ignore: cast_nullable_to_non_nullable
          : question as String,
      questionType:
          questionType == const $CopyWithPlaceholder() || questionType == null
          ? _value.questionType
          // ignore: cast_nullable_to_non_nullable
          : questionType as CreateQuestionFromAttributeRequestQuestionTypeEnum,
      attributeType:
          attributeType == const $CopyWithPlaceholder() || attributeType == null
          ? _value.attributeType
          // ignore: cast_nullable_to_non_nullable
          : attributeType
                as CreateQuestionFromAttributeRequestAttributeTypeEnum,
      attributeName: attributeName == const $CopyWithPlaceholder()
          ? _value.attributeName
          // ignore: cast_nullable_to_non_nullable
          : attributeName as String?,
      selectedValues: selectedValues == const $CopyWithPlaceholder()
          ? _value.selectedValues
          // ignore: cast_nullable_to_non_nullable
          : selectedValues as List<String>?,
      budgetRanges: budgetRanges == const $CopyWithPlaceholder()
          ? _value.budgetRanges
          // ignore: cast_nullable_to_non_nullable
          : budgetRanges as List<String>?,
    );
  }
}

extension $CreateQuestionFromAttributeRequestCopyWith
    on CreateQuestionFromAttributeRequest {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfCreateQuestionFromAttributeRequest.copyWith(...)` or `instanceOfCreateQuestionFromAttributeRequest.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$CreateQuestionFromAttributeRequestCWProxy get copyWith =>
      _$CreateQuestionFromAttributeRequestCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CreateQuestionFromAttributeRequest _$CreateQuestionFromAttributeRequestFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('CreateQuestionFromAttributeRequest', json, (
  $checkedConvert,
) {
  $checkKeys(
    json,
    requiredKeys: const ['question', 'questionType', 'attributeType'],
  );
  final val = CreateQuestionFromAttributeRequest(
    question: $checkedConvert('question', (v) => v as String),
    questionType: $checkedConvert(
      'questionType',
      (v) => $enumDecode(
        _$CreateQuestionFromAttributeRequestQuestionTypeEnumEnumMap,
        v,
      ),
    ),
    attributeType: $checkedConvert(
      'attributeType',
      (v) => $enumDecode(
        _$CreateQuestionFromAttributeRequestAttributeTypeEnumEnumMap,
        v,
      ),
    ),
    attributeName: $checkedConvert('attributeName', (v) => v as String?),
    selectedValues: $checkedConvert(
      'selectedValues',
      (v) => (v as List<dynamic>?)?.map((e) => e as String).toList(),
    ),
    budgetRanges: $checkedConvert(
      'budgetRanges',
      (v) => (v as List<dynamic>?)?.map((e) => e as String).toList(),
    ),
  );
  return val;
});

Map<String, dynamic> _$CreateQuestionFromAttributeRequestToJson(
  CreateQuestionFromAttributeRequest instance,
) => <String, dynamic>{
  'question': instance.question,
  'questionType':
      _$CreateQuestionFromAttributeRequestQuestionTypeEnumEnumMap[instance
          .questionType]!,
  'attributeType':
      _$CreateQuestionFromAttributeRequestAttributeTypeEnumEnumMap[instance
          .attributeType]!,
  'attributeName': ?instance.attributeName,
  'selectedValues': ?instance.selectedValues,
  'budgetRanges': ?instance.budgetRanges,
};

const _$CreateQuestionFromAttributeRequestQuestionTypeEnumEnumMap = {
  CreateQuestionFromAttributeRequestQuestionTypeEnum.single: 'single',
  CreateQuestionFromAttributeRequestQuestionTypeEnum.multiple: 'multiple',
};

const _$CreateQuestionFromAttributeRequestAttributeTypeEnumEnumMap = {
  CreateQuestionFromAttributeRequestAttributeTypeEnum.gender: 'gender',
  CreateQuestionFromAttributeRequestAttributeTypeEnum.origin: 'origin',
  CreateQuestionFromAttributeRequestAttributeTypeEnum.brand: 'brand',
  CreateQuestionFromAttributeRequestAttributeTypeEnum.category: 'category',
  CreateQuestionFromAttributeRequestAttributeTypeEnum.concentration:
      'concentration',
  CreateQuestionFromAttributeRequestAttributeTypeEnum.note: 'note',
  CreateQuestionFromAttributeRequestAttributeTypeEnum.family: 'family',
  CreateQuestionFromAttributeRequestAttributeTypeEnum.attribute: 'attribute',
  CreateQuestionFromAttributeRequestAttributeTypeEnum.budget: 'budget',
};
