//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:perfumegpt_api_client/src/model/loyalty_transaction_type.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'manual_change_request.g.dart';

@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class ManualChangeRequest {
  /// Returns a new [ManualChangeRequest] instance.
  ManualChangeRequest({
    this.userId,

    this.transactionType,

    this.points,

    required this.reason,
  });

  @JsonKey(name: r'userId', required: false, includeIfNull: false)
  final String? userId;

  @JsonKey(name: r'transactionType', required: false, includeIfNull: false)
  final LoyaltyTransactionType? transactionType;

  // minimum: 0
  @JsonKey(name: r'points', required: false, includeIfNull: false)
  final int? points;

  @JsonKey(name: r'reason', required: true, includeIfNull: false)
  final String reason;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ManualChangeRequest &&
          other.userId == userId &&
          other.transactionType == transactionType &&
          other.points == points &&
          other.reason == reason;

  @override
  int get hashCode =>
      userId.hashCode +
      transactionType.hashCode +
      points.hashCode +
      reason.hashCode;

  factory ManualChangeRequest.fromJson(Map<String, dynamic> json) =>
      _$ManualChangeRequestFromJson(json);

  Map<String, dynamic> toJson() => _$ManualChangeRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}
