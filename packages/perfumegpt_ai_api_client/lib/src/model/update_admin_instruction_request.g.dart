// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_admin_instruction_request.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$UpdateAdminInstructionRequestCWProxy {
  UpdateAdminInstructionRequest instruction(String? instruction);

  UpdateAdminInstructionRequest instructionType(
    UpdateAdminInstructionRequestInstructionTypeEnum? instructionType,
  );

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `UpdateAdminInstructionRequest(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// UpdateAdminInstructionRequest(...).copyWith(id: 12, name: "My name")
  /// ```
  UpdateAdminInstructionRequest call({
    String? instruction,
    UpdateAdminInstructionRequestInstructionTypeEnum? instructionType,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfUpdateAdminInstructionRequest.copyWith(...)` or call `instanceOfUpdateAdminInstructionRequest.copyWith.fieldName(value)` for a single field.
class _$UpdateAdminInstructionRequestCWProxyImpl
    implements _$UpdateAdminInstructionRequestCWProxy {
  const _$UpdateAdminInstructionRequestCWProxyImpl(this._value);

  final UpdateAdminInstructionRequest _value;

  @override
  UpdateAdminInstructionRequest instruction(String? instruction) =>
      call(instruction: instruction);

  @override
  UpdateAdminInstructionRequest instructionType(
    UpdateAdminInstructionRequestInstructionTypeEnum? instructionType,
  ) => call(instructionType: instructionType);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `UpdateAdminInstructionRequest(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// UpdateAdminInstructionRequest(...).copyWith(id: 12, name: "My name")
  /// ```
  UpdateAdminInstructionRequest call({
    Object? instruction = const $CopyWithPlaceholder(),
    Object? instructionType = const $CopyWithPlaceholder(),
  }) {
    return UpdateAdminInstructionRequest(
      instruction: instruction == const $CopyWithPlaceholder()
          ? _value.instruction
          // ignore: cast_nullable_to_non_nullable
          : instruction as String?,
      instructionType: instructionType == const $CopyWithPlaceholder()
          ? _value.instructionType
          // ignore: cast_nullable_to_non_nullable
          : instructionType
                as UpdateAdminInstructionRequestInstructionTypeEnum?,
    );
  }
}

extension $UpdateAdminInstructionRequestCopyWith
    on UpdateAdminInstructionRequest {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfUpdateAdminInstructionRequest.copyWith(...)` or `instanceOfUpdateAdminInstructionRequest.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$UpdateAdminInstructionRequestCWProxy get copyWith =>
      _$UpdateAdminInstructionRequestCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UpdateAdminInstructionRequest _$UpdateAdminInstructionRequestFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('UpdateAdminInstructionRequest', json, ($checkedConvert) {
  final val = UpdateAdminInstructionRequest(
    instruction: $checkedConvert('instruction', (v) => v as String?),
    instructionType: $checkedConvert(
      'instructionType',
      (v) => $enumDecodeNullable(
        _$UpdateAdminInstructionRequestInstructionTypeEnumEnumMap,
        v,
      ),
    ),
  );
  return val;
});

Map<String, dynamic> _$UpdateAdminInstructionRequestToJson(
  UpdateAdminInstructionRequest instance,
) => <String, dynamic>{
  'instruction': ?instance.instruction,
  'instructionType':
      ?_$UpdateAdminInstructionRequestInstructionTypeEnumEnumMap[instance
          .instructionType],
};

const _$UpdateAdminInstructionRequestInstructionTypeEnumEnumMap = {
  UpdateAdminInstructionRequestInstructionTypeEnum.review: 'review',
  UpdateAdminInstructionRequestInstructionTypeEnum.order: 'order',
  UpdateAdminInstructionRequestInstructionTypeEnum.inventory: 'inventory',
  UpdateAdminInstructionRequestInstructionTypeEnum.trend: 'trend',
  UpdateAdminInstructionRequestInstructionTypeEnum.recommendation:
      'recommendation',
  UpdateAdminInstructionRequestInstructionTypeEnum.repurchase: 'repurchase',
  UpdateAdminInstructionRequestInstructionTypeEnum.log: 'log',
  UpdateAdminInstructionRequestInstructionTypeEnum.conversation: 'conversation',
  UpdateAdminInstructionRequestInstructionTypeEnum.survey: 'survey',
  UpdateAdminInstructionRequestInstructionTypeEnum.restock: 'restock',
  UpdateAdminInstructionRequestInstructionTypeEnum.slowStock: 'slow_stock',
  UpdateAdminInstructionRequestInstructionTypeEnum.searchExtraction:
      'search_extraction',
  UpdateAdminInstructionRequestInstructionTypeEnum.staffConsultation:
      'staff_consultation',
};
