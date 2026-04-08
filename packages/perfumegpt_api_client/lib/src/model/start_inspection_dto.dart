//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'start_inspection_dto.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class StartInspectionDto {
  /// Returns a new [StartInspectionDto] instance.
  StartInspectionDto({

     this.inspectionNote,
  });

  @JsonKey(
    
    name: r'inspectionNote',
    required: false,
    includeIfNull: false,
  )


  final String? inspectionNote;





    @override
    bool operator ==(Object other) => identical(this, other) || other is StartInspectionDto &&
      other.inspectionNote == inspectionNote;

    @override
    int get hashCode =>
        (inspectionNote == null ? 0 : inspectionNote.hashCode);

  factory StartInspectionDto.fromJson(Map<String, dynamic> json) => _$StartInspectionDtoFromJson(json);

  Map<String, dynamic> toJson() => _$StartInspectionDtoToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

