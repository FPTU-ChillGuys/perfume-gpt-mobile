// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'conversation_controller_get_my_conversation_history200_response.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$ConversationControllerGetMyConversationHistory200ResponseCWProxy {
  ConversationControllerGetMyConversationHistory200Response success(
    bool? success,
  );

  ConversationControllerGetMyConversationHistory200Response error(
    String? error,
  );

  ConversationControllerGetMyConversationHistory200Response details(
    String? details,
  );

  ConversationControllerGetMyConversationHistory200Response data(
    ConversationControllerGetMyConversationHistory200ResponseData? data,
  );

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `ConversationControllerGetMyConversationHistory200Response(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// ConversationControllerGetMyConversationHistory200Response(...).copyWith(id: 12, name: "My name")
  /// ```
  ConversationControllerGetMyConversationHistory200Response call({
    bool? success,
    String? error,
    String? details,
    ConversationControllerGetMyConversationHistory200ResponseData? data,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfConversationControllerGetMyConversationHistory200Response.copyWith(...)` or call `instanceOfConversationControllerGetMyConversationHistory200Response.copyWith.fieldName(value)` for a single field.
class _$ConversationControllerGetMyConversationHistory200ResponseCWProxyImpl
    implements
        _$ConversationControllerGetMyConversationHistory200ResponseCWProxy {
  const _$ConversationControllerGetMyConversationHistory200ResponseCWProxyImpl(
    this._value,
  );

  final ConversationControllerGetMyConversationHistory200Response _value;

  @override
  ConversationControllerGetMyConversationHistory200Response success(
    bool? success,
  ) => call(success: success);

  @override
  ConversationControllerGetMyConversationHistory200Response error(
    String? error,
  ) => call(error: error);

  @override
  ConversationControllerGetMyConversationHistory200Response details(
    String? details,
  ) => call(details: details);

  @override
  ConversationControllerGetMyConversationHistory200Response data(
    ConversationControllerGetMyConversationHistory200ResponseData? data,
  ) => call(data: data);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `ConversationControllerGetMyConversationHistory200Response(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// ConversationControllerGetMyConversationHistory200Response(...).copyWith(id: 12, name: "My name")
  /// ```
  ConversationControllerGetMyConversationHistory200Response call({
    Object? success = const $CopyWithPlaceholder(),
    Object? error = const $CopyWithPlaceholder(),
    Object? details = const $CopyWithPlaceholder(),
    Object? data = const $CopyWithPlaceholder(),
  }) {
    return ConversationControllerGetMyConversationHistory200Response(
      success: success == const $CopyWithPlaceholder()
          ? _value.success
          // ignore: cast_nullable_to_non_nullable
          : success as bool?,
      error: error == const $CopyWithPlaceholder()
          ? _value.error
          // ignore: cast_nullable_to_non_nullable
          : error as String?,
      details: details == const $CopyWithPlaceholder()
          ? _value.details
          // ignore: cast_nullable_to_non_nullable
          : details as String?,
      data: data == const $CopyWithPlaceholder()
          ? _value.data
          // ignore: cast_nullable_to_non_nullable
          : data
                as ConversationControllerGetMyConversationHistory200ResponseData?,
    );
  }
}

extension $ConversationControllerGetMyConversationHistory200ResponseCopyWith
    on ConversationControllerGetMyConversationHistory200Response {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfConversationControllerGetMyConversationHistory200Response.copyWith(...)` or `instanceOfConversationControllerGetMyConversationHistory200Response.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$ConversationControllerGetMyConversationHistory200ResponseCWProxy
  get copyWith =>
      _$ConversationControllerGetMyConversationHistory200ResponseCWProxyImpl(
        this,
      );
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ConversationControllerGetMyConversationHistory200Response
_$ConversationControllerGetMyConversationHistory200ResponseFromJson(
  Map<String, dynamic> json,
) => $checkedCreate(
  'ConversationControllerGetMyConversationHistory200Response',
  json,
  ($checkedConvert) {
    final val = ConversationControllerGetMyConversationHistory200Response(
      success: $checkedConvert('success', (v) => v as bool?),
      error: $checkedConvert('error', (v) => v as String?),
      details: $checkedConvert('details', (v) => v as String?),
      data: $checkedConvert(
        'data',
        (v) => v == null
            ? null
            : ConversationControllerGetMyConversationHistory200ResponseData.fromJson(
                v as Map<String, dynamic>,
              ),
      ),
    );
    return val;
  },
);

Map<String, dynamic>
_$ConversationControllerGetMyConversationHistory200ResponseToJson(
  ConversationControllerGetMyConversationHistory200Response instance,
) => <String, dynamic>{
  'success': ?instance.success,
  'error': ?instance.error,
  'details': ?instance.details,
  'data': ?instance.data?.toJson(),
};
