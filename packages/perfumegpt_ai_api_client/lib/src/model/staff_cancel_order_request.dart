//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:perfumegpt_ai_api_client/src/model/cancel_order_reason.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'staff_cancel_order_request.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class StaffCancelOrderRequest {
  /// Returns a new [StaffCancelOrderRequest] instance.
  StaffCancelOrderRequest({

     this.reason,

     this.note,
  });

  @JsonKey(
    
    name: r'reason',
    required: false,
    includeIfNull: false,
  )


  final CancelOrderReason? reason;



  @JsonKey(
    
    name: r'note',
    required: false,
    includeIfNull: false,
  )


  final String? note;





    @override
    bool operator ==(Object other) => identical(this, other) || other is StaffCancelOrderRequest &&
      other.reason == reason &&
      other.note == note;

    @override
    int get hashCode =>
        reason.hashCode +
        (note == null ? 0 : note.hashCode);

  factory StaffCancelOrderRequest.fromJson(Map<String, dynamic> json) => _$StaffCancelOrderRequestFromJson(json);

  Map<String, dynamic> toJson() => _$StaffCancelOrderRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

