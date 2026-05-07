//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:perfumegpt_api_client/src/model/note_type.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'customer_note_preference_response.g.dart';

@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class CustomerNotePreferenceResponse {
  /// Returns a new [CustomerNotePreferenceResponse] instance.
  CustomerNotePreferenceResponse({
    this.noteId,

    required this.noteName,

    this.noteType,
  });

  @JsonKey(name: r'noteId', required: false, includeIfNull: false)
  final int? noteId;

  @JsonKey(name: r'noteName', required: true, includeIfNull: false)
  final String noteName;

  @JsonKey(name: r'noteType', required: false, includeIfNull: false)
  final NoteType? noteType;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CustomerNotePreferenceResponse &&
          other.noteId == noteId &&
          other.noteName == noteName &&
          other.noteType == noteType;

  @override
  int get hashCode => noteId.hashCode + noteName.hashCode + noteType.hashCode;

  factory CustomerNotePreferenceResponse.fromJson(Map<String, dynamic> json) =>
      _$CustomerNotePreferenceResponseFromJson(json);

  Map<String, dynamic> toJson() => _$CustomerNotePreferenceResponseToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}
