//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:perfumegpt_ai_api_client/src/model/note_type.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'scent_note_dto.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class ScentNoteDto {
  /// Returns a new [ScentNoteDto] instance.
  ScentNoteDto({

     this.noteId,

     this.type,
  });

  @JsonKey(
    
    name: r'noteId',
    required: false,
    includeIfNull: false,
  )


  final int? noteId;



  @JsonKey(
    
    name: r'type',
    required: false,
    includeIfNull: false,
  )


  final NoteType? type;





    @override
    bool operator ==(Object other) => identical(this, other) || other is ScentNoteDto &&
      other.noteId == noteId &&
      other.type == type;

    @override
    int get hashCode =>
        noteId.hashCode +
        type.hashCode;

  factory ScentNoteDto.fromJson(Map<String, dynamic> json) => _$ScentNoteDtoFromJson(json);

  Map<String, dynamic> toJson() => _$ScentNoteDtoToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

