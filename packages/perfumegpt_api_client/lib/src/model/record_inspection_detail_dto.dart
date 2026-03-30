//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'record_inspection_detail_dto.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class RecordInspectionDetailDto {
  /// Returns a new [RecordInspectionDetailDto] instance.
  RecordInspectionDetailDto({

    required  this.detailId,

     this.isRestocked,

     this.note,
  });

  @JsonKey(
    
    name: r'detailId',
    required: true,
    includeIfNull: false,
  )


  final String detailId;



  @JsonKey(
    
    name: r'isRestocked',
    required: false,
    includeIfNull: false,
  )


  final bool? isRestocked;



  @JsonKey(
    
    name: r'note',
    required: false,
    includeIfNull: false,
  )


  final String? note;





    @override
    bool operator ==(Object other) => identical(this, other) || other is RecordInspectionDetailDto &&
      other.detailId == detailId &&
      other.isRestocked == isRestocked &&
      other.note == note;

    @override
    int get hashCode =>
        detailId.hashCode +
        isRestocked.hashCode +
        (note == null ? 0 : note.hashCode);

  factory RecordInspectionDetailDto.fromJson(Map<String, dynamic> json) => _$RecordInspectionDetailDtoFromJson(json);

  Map<String, dynamic> toJson() => _$RecordInspectionDetailDtoToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

