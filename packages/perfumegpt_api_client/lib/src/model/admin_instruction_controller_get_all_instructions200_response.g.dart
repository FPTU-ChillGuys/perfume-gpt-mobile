// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'admin_instruction_controller_get_all_instructions200_response.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$AdminInstructionControllerGetAllInstructions200ResponseCWProxy {
  AdminInstructionControllerGetAllInstructions200Response success(bool success);

  AdminInstructionControllerGetAllInstructions200Response error(Object? error);

  AdminInstructionControllerGetAllInstructions200Response details(
    Object? details,
  );

  AdminInstructionControllerGetAllInstructions200Response data(
    List<AdminInstructionResponse>? data,
  );

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `AdminInstructionControllerGetAllInstructions200Response(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// AdminInstructionControllerGetAllInstructions200Response(...).copyWith(id: 12, name: "My name")
  /// ```
  AdminInstructionControllerGetAllInstructions200Response call({
    bool success,
    Object? error,
    Object? details,
    List<AdminInstructionResponse>? data,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfAdminInstructionControllerGetAllInstructions200Response.copyWith(...)` or call `instanceOfAdminInstructionControllerGetAllInstructions200Response.copyWith.fieldName(value)` for a single field.
class _$AdminInstructionControllerGetAllInstructions200ResponseCWProxyImpl
    implements
        _$AdminInstructionControllerGetAllInstructions200ResponseCWProxy {
  const _$AdminInstructionControllerGetAllInstructions200ResponseCWProxyImpl(
    this._value,
  );

  final AdminInstructionControllerGetAllInstructions200Response _value;

  @override
  AdminInstructionControllerGetAllInstructions200Response success(
    bool success,
  ) => call(success: success);

  @override
  AdminInstructionControllerGetAllInstructions200Response error(
    Object? error,
  ) => call(error: error);

  @override
  AdminInstructionControllerGetAllInstructions200Response details(
    Object? details,
  ) => call(details: details);

  @override
  AdminInstructionControllerGetAllInstructions200Response data(
    List<AdminInstructionResponse>? data,
  ) => call(data: data);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `AdminInstructionControllerGetAllInstructions200Response(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// AdminInstructionControllerGetAllInstructions200Response(...).copyWith(id: 12, name: "My name")
  /// ```
  AdminInstructionControllerGetAllInstructions200Response call({
    Object? success = const $CopyWithPlaceholder(),
    Object? error = const $CopyWithPlaceholder(),
    Object? details = const $CopyWithPlaceholder(),
    Object? data = const $CopyWithPlaceholder(),
  }) {
    return AdminInstructionControllerGetAllInstructions200Response(
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
          : data as List<AdminInstructionResponse>?,
    );
  }
}

extension $AdminInstructionControllerGetAllInstructions200ResponseCopyWith
    on AdminInstructionControllerGetAllInstructions200Response {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfAdminInstructionControllerGetAllInstructions200Response.copyWith(...)` or `instanceOfAdminInstructionControllerGetAllInstructions200Response.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$AdminInstructionControllerGetAllInstructions200ResponseCWProxy
  get copyWith =>
      _$AdminInstructionControllerGetAllInstructions200ResponseCWProxyImpl(
        this,
      );
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AdminInstructionControllerGetAllInstructions200Response
_$AdminInstructionControllerGetAllInstructions200ResponseFromJson(
  Map<String, dynamic> json,
) => $checkedCreate(
  'AdminInstructionControllerGetAllInstructions200Response',
  json,
  ($checkedConvert) {
    $checkKeys(json, requiredKeys: const ['success']);
    final val = AdminInstructionControllerGetAllInstructions200Response(
      success: $checkedConvert('success', (v) => v as bool),
      error: $checkedConvert('error', (v) => v),
      details: $checkedConvert('details', (v) => v),
      data: $checkedConvert(
        'data',
        (v) => (v as List<dynamic>?)
            ?.map(
              (e) =>
                  AdminInstructionResponse.fromJson(e as Map<String, dynamic>),
            )
            .toList(),
      ),
    );
    return val;
  },
);

Map<String, dynamic>
_$AdminInstructionControllerGetAllInstructions200ResponseToJson(
  AdminInstructionControllerGetAllInstructions200Response instance,
) => <String, dynamic>{
  'success': instance.success,
  'error': ?instance.error,
  'details': ?instance.details,
  'data': ?instance.data?.map((e) => e.toJson()).toList(),
};
