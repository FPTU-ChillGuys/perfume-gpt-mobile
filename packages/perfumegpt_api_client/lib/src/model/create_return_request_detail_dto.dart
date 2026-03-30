//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'create_return_request_detail_dto.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class CreateReturnRequestDetailDto {
  /// Returns a new [CreateReturnRequestDetailDto] instance.
  CreateReturnRequestDetailDto({

    required  this.orderDetailId,

     this.returnedQuantity,
  });

  @JsonKey(
    
    name: r'orderDetailId',
    required: true,
    includeIfNull: false,
  )


  final String orderDetailId;



          // minimum: 0
  @JsonKey(
    
    name: r'returnedQuantity',
    required: false,
    includeIfNull: false,
  )


  final int? returnedQuantity;





    @override
    bool operator ==(Object other) => identical(this, other) || other is CreateReturnRequestDetailDto &&
      other.orderDetailId == orderDetailId &&
      other.returnedQuantity == returnedQuantity;

    @override
    int get hashCode =>
        orderDetailId.hashCode +
        returnedQuantity.hashCode;

  factory CreateReturnRequestDetailDto.fromJson(Map<String, dynamic> json) => _$CreateReturnRequestDetailDtoFromJson(json);

  Map<String, dynamic> toJson() => _$CreateReturnRequestDetailDtoToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

