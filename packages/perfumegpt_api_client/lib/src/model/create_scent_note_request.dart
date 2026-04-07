//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'create_scent_note_request.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class CreateScentNoteRequest {
  /// Returns a new [CreateScentNoteRequest] instance.
  CreateScentNoteRequest({

    required  this.name,
  });

  @JsonKey(
    
    name: r'name',
    required: true,
    includeIfNull: false,
  )


  final String name;





    @override
    bool operator ==(Object other) => identical(this, other) || other is CreateScentNoteRequest &&
      other.name == name;

    @override
    int get hashCode =>
        name.hashCode;

  factory CreateScentNoteRequest.fromJson(Map<String, dynamic> json) => _$CreateScentNoteRequestFromJson(json);

  Map<String, dynamic> toJson() => _$CreateScentNoteRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

