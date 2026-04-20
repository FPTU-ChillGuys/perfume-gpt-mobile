// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'send_email_request_dto.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$SendEmailRequestDtoCWProxy {
  SendEmailRequestDto to(String to);

  SendEmailRequestDto subject(String subject);

  SendEmailRequestDto text(String text);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `SendEmailRequestDto(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// SendEmailRequestDto(...).copyWith(id: 12, name: "My name")
  /// ```
  SendEmailRequestDto call({String to, String subject, String text});
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfSendEmailRequestDto.copyWith(...)` or call `instanceOfSendEmailRequestDto.copyWith.fieldName(value)` for a single field.
class _$SendEmailRequestDtoCWProxyImpl implements _$SendEmailRequestDtoCWProxy {
  const _$SendEmailRequestDtoCWProxyImpl(this._value);

  final SendEmailRequestDto _value;

  @override
  SendEmailRequestDto to(String to) => call(to: to);

  @override
  SendEmailRequestDto subject(String subject) => call(subject: subject);

  @override
  SendEmailRequestDto text(String text) => call(text: text);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `SendEmailRequestDto(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// SendEmailRequestDto(...).copyWith(id: 12, name: "My name")
  /// ```
  SendEmailRequestDto call({
    Object? to = const $CopyWithPlaceholder(),
    Object? subject = const $CopyWithPlaceholder(),
    Object? text = const $CopyWithPlaceholder(),
  }) {
    return SendEmailRequestDto(
      to: to == const $CopyWithPlaceholder() || to == null
          ? _value.to
          // ignore: cast_nullable_to_non_nullable
          : to as String,
      subject: subject == const $CopyWithPlaceholder() || subject == null
          ? _value.subject
          // ignore: cast_nullable_to_non_nullable
          : subject as String,
      text: text == const $CopyWithPlaceholder() || text == null
          ? _value.text
          // ignore: cast_nullable_to_non_nullable
          : text as String,
    );
  }
}

extension $SendEmailRequestDtoCopyWith on SendEmailRequestDto {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfSendEmailRequestDto.copyWith(...)` or `instanceOfSendEmailRequestDto.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$SendEmailRequestDtoCWProxy get copyWith =>
      _$SendEmailRequestDtoCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SendEmailRequestDto _$SendEmailRequestDtoFromJson(Map<String, dynamic> json) =>
    $checkedCreate('SendEmailRequestDto', json, ($checkedConvert) {
      $checkKeys(json, requiredKeys: const ['to', 'subject', 'text']);
      final val = SendEmailRequestDto(
        to: $checkedConvert('to', (v) => v as String),
        subject: $checkedConvert('subject', (v) => v as String),
        text: $checkedConvert('text', (v) => v as String),
      );
      return val;
    });

Map<String, dynamic> _$SendEmailRequestDtoToJson(
  SendEmailRequestDto instance,
) => <String, dynamic>{
  'to': instance.to,
  'subject': instance.subject,
  'text': instance.text,
};
