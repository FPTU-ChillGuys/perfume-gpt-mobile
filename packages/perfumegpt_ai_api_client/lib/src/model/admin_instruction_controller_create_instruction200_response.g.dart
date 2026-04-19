// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'admin_instruction_controller_create_instruction200_response.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$AdminInstructionControllerCreateInstruction200ResponseCWProxy {
  AdminInstructionControllerCreateInstruction200Response success(bool success);

  AdminInstructionControllerCreateInstruction200Response error(Object? error);

  AdminInstructionControllerCreateInstruction200Response details(
    Object? details,
  );

  AdminInstructionControllerCreateInstruction200Response data(
    AdminInstructionResponse? data,
  );

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `AdminInstructionControllerCreateInstruction200Response(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// AdminInstructionControllerCreateInstruction200Response(...).copyWith(id: 12, name: "My name")
  /// ```
  AdminInstructionControllerCreateInstruction200Response call({
    bool success,
    Object? error,
    Object? details,
    AdminInstructionResponse? data,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfAdminInstructionControllerCreateInstruction200Response.copyWith(...)` or call `instanceOfAdminInstructionControllerCreateInstruction200Response.copyWith.fieldName(value)` for a single field.
class _$AdminInstructionControllerCreateInstruction200ResponseCWProxyImpl
    implements _$AdminInstructionControllerCreateInstruction200ResponseCWProxy {
  const _$AdminInstructionControllerCreateInstruction200ResponseCWProxyImpl(
    this._value,
  );

  final AdminInstructionControllerCreateInstruction200Response _value;

  @override
  AdminInstructionControllerCreateInstruction200Response success(
    bool success,
  ) => call(success: success);

  @override
  AdminInstructionControllerCreateInstruction200Response error(Object? error) =>
      call(error: error);

  @override
  AdminInstructionControllerCreateInstruction200Response details(
    Object? details,
  ) => call(details: details);

  @override
  AdminInstructionControllerCreateInstruction200Response data(
    AdminInstructionResponse? data,
  ) => call(data: data);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `AdminInstructionControllerCreateInstruction200Response(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// AdminInstructionControllerCreateInstruction200Response(...).copyWith(id: 12, name: "My name")
  /// ```
  AdminInstructionControllerCreateInstruction200Response call({
    Object? success = const $CopyWithPlaceholder(),
    Object? error = const $CopyWithPlaceholder(),
    Object? details = const $CopyWithPlaceholder(),
    Object? data = const $CopyWithPlaceholder(),
  }) {
    return AdminInstructionControllerCreateInstruction200Response(
      success: success == const $CopyWithPlaceholder() || success == null
          ? _value.success
          // ignore: cast_nullable_to_non_nullable
          : success as bool,
      error: error == const $CopyWithPlaceholder()
          ? _value.error
          // ignore: cast_nullable_to_non_nullable
          : error as Object?,
      details: details == const $CopyWithPlaceholder()
          ? _value.details
          // ignore: cast_nullable_to_non_nullable
          : details as Object?,
      data: data == const $CopyWithPlaceholder()
          ? _value.data
          // ignore: cast_nullable_to_non_nullable
          : data as AdminInstructionResponse?,
    );
  }
}

extension $AdminInstructionControllerCreateInstruction200ResponseCopyWith
    on AdminInstructionControllerCreateInstruction200Response {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfAdminInstructionControllerCreateInstruction200Response.copyWith(...)` or `instanceOfAdminInstructionControllerCreateInstruction200Response.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$AdminInstructionControllerCreateInstruction200ResponseCWProxy
  get copyWith =>
      _$AdminInstructionControllerCreateInstruction200ResponseCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AdminInstructionControllerCreateInstruction200Response
_$AdminInstructionControllerCreateInstruction200ResponseFromJson(
  Map<String, dynamic> json,
) => $checkedCreate(
  'AdminInstructionControllerCreateInstruction200Response',
  json,
  ($checkedConvert) {
    $checkKeys(json, requiredKeys: const ['success']);
    final val = AdminInstructionControllerCreateInstruction200Response(
      success: $checkedConvert('success', (v) => v as bool),
      error: $checkedConvert('error', (v) => v),
      details: $checkedConvert('details', (v) => v),
      data: $checkedConvert(
        'data',
        (v) => v == null
            ? null
            : AdminInstructionResponse.fromJson(v as Map<String, dynamic>),
      ),
    );
    return val;
  },
);

Map<String, dynamic>
_$AdminInstructionControllerCreateInstruction200ResponseToJson(
  AdminInstructionControllerCreateInstruction200Response instance,
) => <String, dynamic>{
  'success': instance.success,
  'error': ?instance.error,
  'details': ?instance.details,
  'data': ?instance.data?.toJson(),
};
