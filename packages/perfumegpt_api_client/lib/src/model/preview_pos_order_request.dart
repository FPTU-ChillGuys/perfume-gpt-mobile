//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:perfumegpt_api_client/src/model/pos_scan_item_request.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'preview_pos_order_request.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class PreviewPosOrderRequest {
  /// Returns a new [PreviewPosOrderRequest] instance.
  PreviewPosOrderRequest({

    required  this.scannedItems,

     this.voucherCode,

     this.customerId,

     this.sessionId,
  });

  @JsonKey(
    
    name: r'scannedItems',
    required: true,
    includeIfNull: false,
  )


  final List<PosScanItemRequest> scannedItems;



  @JsonKey(
    
    name: r'voucherCode',
    required: false,
    includeIfNull: false,
  )


  final String? voucherCode;



  @JsonKey(
    
    name: r'customerId',
    required: false,
    includeIfNull: false,
  )


  final String? customerId;



  @JsonKey(
    
    name: r'sessionId',
    required: false,
    includeIfNull: false,
  )


  final String? sessionId;





    @override
    bool operator ==(Object other) => identical(this, other) || other is PreviewPosOrderRequest &&
      other.scannedItems == scannedItems &&
      other.voucherCode == voucherCode &&
      other.customerId == customerId &&
      other.sessionId == sessionId;

    @override
    int get hashCode =>
        scannedItems.hashCode +
        (voucherCode == null ? 0 : voucherCode.hashCode) +
        (customerId == null ? 0 : customerId.hashCode) +
        (sessionId == null ? 0 : sessionId.hashCode);

  factory PreviewPosOrderRequest.fromJson(Map<String, dynamic> json) => _$PreviewPosOrderRequestFromJson(json);

  Map<String, dynamic> toJson() => _$PreviewPosOrderRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

