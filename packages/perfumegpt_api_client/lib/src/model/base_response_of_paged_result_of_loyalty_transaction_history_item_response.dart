//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:perfumegpt_api_client/src/model/paged_result_of_loyalty_transaction_history_item_response.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'base_response_of_paged_result_of_loyalty_transaction_history_item_response.g.dart';

@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class BaseResponseOfPagedResultOfLoyaltyTransactionHistoryItemResponse {
  /// Returns a new [BaseResponseOfPagedResultOfLoyaltyTransactionHistoryItemResponse] instance.
  BaseResponseOfPagedResultOfLoyaltyTransactionHistoryItemResponse({
    this.payload,

    this.success,

    this.message,

    this.errors,

    this.errorType,
  });

  @JsonKey(name: r'payload', required: false, includeIfNull: false)
  final PagedResultOfLoyaltyTransactionHistoryItemResponse? payload;

  @JsonKey(name: r'success', required: false, includeIfNull: false)
  final bool? success;

  @JsonKey(name: r'message', required: false, includeIfNull: false)
  final String? message;

  @JsonKey(name: r'errors', required: false, includeIfNull: false)
  final List<String>? errors;

  @JsonKey(name: r'errorType', required: false, includeIfNull: false)
  final int? errorType;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is BaseResponseOfPagedResultOfLoyaltyTransactionHistoryItemResponse &&
          other.payload == payload &&
          other.success == success &&
          other.message == message &&
          other.errors == errors &&
          other.errorType == errorType;

  @override
  int get hashCode =>
      (payload == null ? 0 : payload.hashCode) +
      success.hashCode +
      message.hashCode +
      (errors == null ? 0 : errors.hashCode) +
      (errorType == null ? 0 : errorType.hashCode);

  factory BaseResponseOfPagedResultOfLoyaltyTransactionHistoryItemResponse.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$BaseResponseOfPagedResultOfLoyaltyTransactionHistoryItemResponseFromJson(
        json,
      );

  Map<String, dynamic> toJson() =>
      _$BaseResponseOfPagedResultOfLoyaltyTransactionHistoryItemResponseToJson(
        this,
      );

  @override
  String toString() {
    return toJson().toString();
  }
}
