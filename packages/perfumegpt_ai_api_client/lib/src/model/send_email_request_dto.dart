//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'send_email_request_dto.g.dart';

@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class SendEmailRequestDto {
  /// Returns a new [SendEmailRequestDto] instance.
  SendEmailRequestDto({
    required this.to,

    required this.subject,

    required this.text,
  });

  /// Email người nhận
  @JsonKey(name: r'to', required: true, includeIfNull: false)
  final String to;

  /// Tiêu đề email
  @JsonKey(name: r'subject', required: true, includeIfNull: false)
  final String subject;

  /// Nội dung email dạng text
  @JsonKey(name: r'text', required: true, includeIfNull: false)
  final String text;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SendEmailRequestDto &&
          other.to == to &&
          other.subject == subject &&
          other.text == text;

  @override
  int get hashCode => to.hashCode + subject.hashCode + text.hashCode;

  factory SendEmailRequestDto.fromJson(Map<String, dynamic> json) =>
      _$SendEmailRequestDtoFromJson(json);

  Map<String, dynamic> toJson() => _$SendEmailRequestDtoToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}
