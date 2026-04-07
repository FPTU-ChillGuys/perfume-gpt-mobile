//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:perfumegpt_api_client/src/model/note_type.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'update_note_preference_request.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class UpdateNotePreferenceRequest {
  /// Returns a new [UpdateNotePreferenceRequest] instance.
  UpdateNotePreferenceRequest({

     this.noteId,

     this.noteType,
  });

  @JsonKey(
    
    name: r'noteId',
    required: false,
    includeIfNull: false,
  )


  final int? noteId;



  @JsonKey(
    
    name: r'noteType',
    required: false,
    includeIfNull: false,
  )


  final NoteType? noteType;





    @override
    bool operator ==(Object other) => identical(this, other) || other is UpdateNotePreferenceRequest &&
      other.noteId == noteId &&
      other.noteType == noteType;

    @override
    int get hashCode =>
        noteId.hashCode +
        noteType.hashCode;

  factory UpdateNotePreferenceRequest.fromJson(Map<String, dynamic> json) => _$UpdateNotePreferenceRequestFromJson(json);

  Map<String, dynamic> toJson() => _$UpdateNotePreferenceRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

