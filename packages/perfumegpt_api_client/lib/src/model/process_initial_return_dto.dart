//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'process_initial_return_dto.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class ProcessInitialReturnDto {
  /// Returns a new [ProcessInitialReturnDto] instance.
  ProcessInitialReturnDto({

     this.isApproved,

     this.staffNote,
  });

  @JsonKey(
    
    name: r'isApproved',
    required: false,
    includeIfNull: false,
  )


  final bool? isApproved;



  @JsonKey(
    
    name: r'staffNote',
    required: false,
    includeIfNull: false,
  )


  final String? staffNote;





    @override
    bool operator ==(Object other) => identical(this, other) || other is ProcessInitialReturnDto &&
      other.isApproved == isApproved &&
      other.staffNote == staffNote;

    @override
    int get hashCode =>
        isApproved.hashCode +
        (staffNote == null ? 0 : staffNote.hashCode);

  factory ProcessInitialReturnDto.fromJson(Map<String, dynamic> json) => _$ProcessInitialReturnDtoFromJson(json);

  Map<String, dynamic> toJson() => _$ProcessInitialReturnDtoToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

