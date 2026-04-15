// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'admin_instruction_response.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$AdminInstructionResponseCWProxy {
  AdminInstructionResponse id(String id);

  AdminInstructionResponse instruction(String instruction);

  AdminInstructionResponse instructionType(String instructionType);

  AdminInstructionResponse createdAt(DateTime createdAt);

  AdminInstructionResponse updatedAt(DateTime updatedAt);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `AdminInstructionResponse(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// AdminInstructionResponse(...).copyWith(id: 12, name: "My name")
  /// ```
  AdminInstructionResponse call({
    String id,
    String instruction,
    String instructionType,
    DateTime createdAt,
    DateTime updatedAt,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfAdminInstructionResponse.copyWith(...)` or call `instanceOfAdminInstructionResponse.copyWith.fieldName(value)` for a single field.
class _$AdminInstructionResponseCWProxyImpl
    implements _$AdminInstructionResponseCWProxy {
  const _$AdminInstructionResponseCWProxyImpl(this._value);

  final AdminInstructionResponse _value;

  @override
  AdminInstructionResponse id(String id) => call(id: id);

  @override
  AdminInstructionResponse instruction(String instruction) =>
      call(instruction: instruction);

  @override
  AdminInstructionResponse instructionType(String instructionType) =>
      call(instructionType: instructionType);

  @override
  AdminInstructionResponse createdAt(DateTime createdAt) =>
      call(createdAt: createdAt);

  @override
  AdminInstructionResponse updatedAt(DateTime updatedAt) =>
      call(updatedAt: updatedAt);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `AdminInstructionResponse(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// AdminInstructionResponse(...).copyWith(id: 12, name: "My name")
  /// ```
  AdminInstructionResponse call({
    Object? id = const $CopyWithPlaceholder(),
    Object? instruction = const $CopyWithPlaceholder(),
    Object? instructionType = const $CopyWithPlaceholder(),
    Object? createdAt = const $CopyWithPlaceholder(),
    Object? updatedAt = const $CopyWithPlaceholder(),
  }) {
    return AdminInstructionResponse(
      id: id == const $CopyWithPlaceholder() || id == null
          ? _value.id
          // ignore: cast_nullable_to_non_nullable
          : id as String,
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
          : instructionType as String,
      createdAt: createdAt == const $CopyWithPlaceholder() || createdAt == null
          ? _value.createdAt
          // ignore: cast_nullable_to_non_nullable
          : createdAt as DateTime,
      updatedAt: updatedAt == const $CopyWithPlaceholder() || updatedAt == null
          ? _value.updatedAt
          // ignore: cast_nullable_to_non_nullable
          : updatedAt as DateTime,
    );
  }
}

extension $AdminInstructionResponseCopyWith on AdminInstructionResponse {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfAdminInstructionResponse.copyWith(...)` or `instanceOfAdminInstructionResponse.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$AdminInstructionResponseCWProxy get copyWith =>
      _$AdminInstructionResponseCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AdminInstructionResponse _$AdminInstructionResponseFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('AdminInstructionResponse', json, ($checkedConvert) {
  $checkKeys(
    json,
    requiredKeys: const [
      'id',
      'instruction',
      'instructionType',
      'createdAt',
      'updatedAt',
    ],
  );
  final val = AdminInstructionResponse(
    id: $checkedConvert('id', (v) => v as String),
    instruction: $checkedConvert('instruction', (v) => v as String),
    instructionType: $checkedConvert('instructionType', (v) => v as String),
    createdAt: $checkedConvert('createdAt', (v) => DateTime.parse(v as String)),
    updatedAt: $checkedConvert('updatedAt', (v) => DateTime.parse(v as String)),
  );
  return val;
});

Map<String, dynamic> _$AdminInstructionResponseToJson(
  AdminInstructionResponse instance,
) => <String, dynamic>{
  'id': instance.id,
  'instruction': instance.instruction,
  'instructionType': instance.instructionType,
  'createdAt': instance.createdAt.toIso8601String(),
  'updatedAt': instance.updatedAt.toIso8601String(),
};
