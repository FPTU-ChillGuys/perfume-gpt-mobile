//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'admin_instruction_response.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class AdminInstructionResponse {
  /// Returns a new [AdminInstructionResponse] instance.
  AdminInstructionResponse({

    required  this.id,

    required  this.instruction,

    required  this.instructionType,

    required  this.createdAt,

    required  this.updatedAt,
  });

      /// ID bản ghi
  @JsonKey(
    
    name: r'id',
    required: true,
    includeIfNull: false,
  )


  final String id;



      /// Nội dung chỉ thị
  @JsonKey(
    
    name: r'instruction',
    required: true,
    includeIfNull: false,
  )


  final String instruction;



      /// Loại chỉ thị (system | prompt | rule)
  @JsonKey(
    
    name: r'instructionType',
    required: true,
    includeIfNull: false,
  )


  final String instructionType;



      /// Ngày tạo
  @JsonKey(
    
    name: r'createdAt',
    required: true,
    includeIfNull: false,
  )


  final DateTime createdAt;



      /// Ngày cập nhật
  @JsonKey(
    
    name: r'updatedAt',
    required: true,
    includeIfNull: false,
  )


  final DateTime updatedAt;





    @override
    bool operator ==(Object other) => identical(this, other) || other is AdminInstructionResponse &&
      other.id == id &&
      other.instruction == instruction &&
      other.instructionType == instructionType &&
      other.createdAt == createdAt &&
      other.updatedAt == updatedAt;

    @override
    int get hashCode =>
        id.hashCode +
        instruction.hashCode +
        instructionType.hashCode +
        createdAt.hashCode +
        updatedAt.hashCode;

  factory AdminInstructionResponse.fromJson(Map<String, dynamic> json) => _$AdminInstructionResponseFromJson(json);

  Map<String, dynamic> toJson() => _$AdminInstructionResponseToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

