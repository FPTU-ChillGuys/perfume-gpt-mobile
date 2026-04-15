//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'create_admin_instruction_request.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class CreateAdminInstructionRequest {
  /// Returns a new [CreateAdminInstructionRequest] instance.
  CreateAdminInstructionRequest({

    required  this.instruction,

    required  this.instructionType,
  });

      /// Nội dung chỉ thị của admin
  @JsonKey(
    
    name: r'instruction',
    required: true,
    includeIfNull: false,
  )


  final String instruction;



      /// Loại chỉ thị
  @JsonKey(
    
    name: r'instructionType',
    required: true,
    includeIfNull: false,
  )


  final CreateAdminInstructionRequestInstructionTypeEnum instructionType;





    @override
    bool operator ==(Object other) => identical(this, other) || other is CreateAdminInstructionRequest &&
      other.instruction == instruction &&
      other.instructionType == instructionType;

    @override
    int get hashCode =>
        instruction.hashCode +
        instructionType.hashCode;

  factory CreateAdminInstructionRequest.fromJson(Map<String, dynamic> json) => _$CreateAdminInstructionRequestFromJson(json);

  Map<String, dynamic> toJson() => _$CreateAdminInstructionRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

/// Loại chỉ thị
enum CreateAdminInstructionRequestInstructionTypeEnum {
    /// Loại chỉ thị
@JsonValue(r'review')
review(r'review'),
    /// Loại chỉ thị
@JsonValue(r'order')
order(r'order'),
    /// Loại chỉ thị
@JsonValue(r'inventory')
inventory(r'inventory'),
    /// Loại chỉ thị
@JsonValue(r'trend')
trend(r'trend'),
    /// Loại chỉ thị
@JsonValue(r'recommendation')
recommendation(r'recommendation'),
    /// Loại chỉ thị
@JsonValue(r'repurchase')
repurchase(r'repurchase'),
    /// Loại chỉ thị
@JsonValue(r'log')
log(r'log'),
    /// Loại chỉ thị
@JsonValue(r'conversation')
conversation(r'conversation'),
    /// Loại chỉ thị
@JsonValue(r'survey')
survey(r'survey'),
    /// Loại chỉ thị
@JsonValue(r'restock')
restock(r'restock'),
    /// Loại chỉ thị
@JsonValue(r'search_extraction')
searchExtraction(r'search_extraction');

const CreateAdminInstructionRequestInstructionTypeEnum(this.value);

final String value;

@override
String toString() => value;
}


