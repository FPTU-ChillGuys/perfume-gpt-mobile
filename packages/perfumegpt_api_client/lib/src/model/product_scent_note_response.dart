//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:perfumegpt_api_client/src/model/note_type.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'product_scent_note_response.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class ProductScentNoteResponse {
  /// Returns a new [ProductScentNoteResponse] instance.
  ProductScentNoteResponse({

     this.noteId,

     this.name,

     this.type,
  });

  @JsonKey(
    
    name: r'noteId',
    required: false,
    includeIfNull: false,
  )


  final int? noteId;



  @JsonKey(
    
    name: r'name',
    required: false,
    includeIfNull: false,
  )


  final String? name;



  @JsonKey(
    
    name: r'type',
    required: false,
    includeIfNull: false,
  )


  final NoteType? type;





    @override
    bool operator ==(Object other) => identical(this, other) || other is ProductScentNoteResponse &&
      other.noteId == noteId &&
      other.name == name &&
      other.type == type;

    @override
    int get hashCode =>
        noteId.hashCode +
        name.hashCode +
        type.hashCode;

  factory ProductScentNoteResponse.fromJson(Map<String, dynamic> json) => _$ProductScentNoteResponseFromJson(json);

  Map<String, dynamic> toJson() => _$ProductScentNoteResponseToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

