//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'user_cancel_order_request.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class UserCancelOrderRequest {
  /// Returns a new [UserCancelOrderRequest] instance.
  UserCancelOrderRequest({

     this.reason,
  });

  @JsonKey(
    
    name: r'reason',
    required: false,
    includeIfNull: false,
  )


  final String? reason;





    @override
    bool operator ==(Object other) => identical(this, other) || other is UserCancelOrderRequest &&
      other.reason == reason;

    @override
    int get hashCode =>
        (reason == null ? 0 : reason.hashCode);

  factory UserCancelOrderRequest.fromJson(Map<String, dynamic> json) => _$UserCancelOrderRequestFromJson(json);

  Map<String, dynamic> toJson() => _$UserCancelOrderRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

