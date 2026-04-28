//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:perfumegpt_ai_api_client/src/model/inventory_controller_get_inventory_report_logs200_response_payload.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'inventory_controller_get_inventory_report_logs200_response.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class InventoryControllerGetInventoryReportLogs200Response {
  /// Returns a new [InventoryControllerGetInventoryReportLogs200Response] instance.
  InventoryControllerGetInventoryReportLogs200Response({

     this.success,

     this.error,

     this.payload,
  });

      /// Kết quả xử lý
  @JsonKey(
    
    name: r'success',
    required: false,
    includeIfNull: false,
  )


  final bool? success;



      /// Thông báo lỗi
  @JsonKey(
    
    name: r'error',
    required: false,
    includeIfNull: false,
  )


  final String? error;



  @JsonKey(
    
    name: r'payload',
    required: false,
    includeIfNull: false,
  )


  final InventoryControllerGetInventoryReportLogs200ResponsePayload? payload;





    @override
    bool operator ==(Object other) => identical(this, other) || other is InventoryControllerGetInventoryReportLogs200Response &&
      other.success == success &&
      other.error == error &&
      other.payload == payload;

    @override
    int get hashCode =>
        success.hashCode +
        (error == null ? 0 : error.hashCode) +
        payload.hashCode;

  factory InventoryControllerGetInventoryReportLogs200Response.fromJson(Map<String, dynamic> json) => _$InventoryControllerGetInventoryReportLogs200ResponseFromJson(json);

  Map<String, dynamic> toJson() => _$InventoryControllerGetInventoryReportLogs200ResponseToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

