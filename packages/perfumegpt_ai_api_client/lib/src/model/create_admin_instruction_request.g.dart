// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_admin_instruction_request.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$CreateAdminInstructionRequestCWProxy {
  CreateAdminInstructionRequest instruction(String instruction);

  CreateAdminInstructionRequest instructionType(
    CreateAdminInstructionRequestInstructionTypeEnum instructionType,
  );

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `CreateAdminInstructionRequest(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// CreateAdminInstructionRequest(...).copyWith(id: 12, name: "My name")
  /// ```
  CreateAdminInstructionRequest call({
    String instruction,
    CreateAdminInstructionRequestInstructionTypeEnum instructionType,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfCreateAdminInstructionRequest.copyWith(...)` or call `instanceOfCreateAdminInstructionRequest.copyWith.fieldName(value)` for a single field.
class _$CreateAdminInstructionRequestCWProxyImpl
    implements _$CreateAdminInstructionRequestCWProxy {
  const _$CreateAdminInstructionRequestCWProxyImpl(this._value);

  final CreateAdminInstructionRequest _value;

  @override
  CreateAdminInstructionRequest instruction(String instruction) =>
      call(instruction: instruction);

  @override
  CreateAdminInstructionRequest instructionType(
    CreateAdminInstructionRequestInstructionTypeEnum instructionType,
  ) => call(instructionType: instructionType);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `CreateAdminInstructionRequest(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// CreateAdminInstructionRequest(...).copyWith(id: 12, name: "My name")
  /// ```
  CreateAdminInstructionRequest call({
    Object? instruction = const $CopyWithPlaceholder(),
    Object? instructionType = const $CopyWithPlaceholder(),
  }) {
    return CreateAdminInstructionRequest(
      instruction:
          instruction == const $CopyWithPlaceholder() || instruction == null
          ? _value.instruction
          // ignore: cast_nullable_to_non_nullable
          : instruction as String,
      instructionType:
          instructionType == const $CopyWithPlaceholder() ||
              instructionType == null
          ? _value.instructionType
          // ignore: cast_nullable_to_non_nullable
          : instructionType as CreateAdminInstructionRequestInstructionTypeEnum,
    );
  }
}

extension $CreateAdminInstructionRequestCopyWith
    on CreateAdminInstructionRequest {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfCreateAdminInstructionRequest.copyWith(...)` or `instanceOfCreateAdminInstructionRequest.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$CreateAdminInstructionRequestCWProxy get copyWith =>
      _$CreateAdminInstructionRequestCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CreateAdminInstructionRequest _$CreateAdminInstructionRequestFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('CreateAdminInstructionRequest', json, ($checkedConvert) {
  $checkKeys(json, requiredKeys: const ['instruction', 'instructionType']);
  final val = CreateAdminInstructionRequest(
    instruction: $checkedConvert('instruction', (v) => v as String),
    instructionType: $checkedConvert(
      'instructionType',
      (v) => $enumDecode(
        _$CreateAdminInstructionRequestInstructionTypeEnumEnumMap,
        v,
      ),
    ),
  );
  return val;
});

Map<String, dynamic> _$CreateAdminInstructionRequestToJson(
  CreateAdminInstructionRequest instance,
) => <String, dynamic>{
  'instruction': instance.instruction,
  'instructionType':
      _$CreateAdminInstructionRequestInstructionTypeEnumEnumMap[instance
          .instructionType]!,
};

const _$CreateAdminInstructionRequestInstructionTypeEnumEnumMap = {
  CreateAdminInstructionRequestInstructionTypeEnum.review: 'review',
  CreateAdminInstructionRequestInstructionTypeEnum.order: 'order',
  CreateAdminInstructionRequestInstructionTypeEnum.inventory: 'inventory',
  CreateAdminInstructionRequestInstructionTypeEnum.trend: 'trend',
  CreateAdminInstructionRequestInstructionTypeEnum.recommendation:
      'recommendation',
  CreateAdminInstructionRequestInstructionTypeEnum.repurchase: 'repurchase',
  CreateAdminInstructionRequestInstructionTypeEnum.log: 'log',
  CreateAdminInstructionRequestInstructionTypeEnum.conversation: 'conversation',
  CreateAdminInstructionRequestInstructionTypeEnum.survey: 'survey',
  CreateAdminInstructionRequestInstructionTypeEnum.restock: 'restock',
  CreateAdminInstructionRequestInstructionTypeEnum.slowStock: 'slow_stock',
  CreateAdminInstructionRequestInstructionTypeEnum.searchExtraction:
      'search_extraction',
  CreateAdminInstructionRequestInstructionTypeEnum.staffConsultation:
      'staff_consultation',
};
