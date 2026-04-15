//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:perfumegpt_api_client/src/model/user_log_summary_response.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'log_controller_get_aggregated_user_summary_report200_response.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class LogControllerGetAggregatedUserSummaryReport200Response {
  /// Returns a new [LogControllerGetAggregatedUserSummaryReport200Response] instance.
  LogControllerGetAggregatedUserSummaryReport200Response({

    required  this.success,

     this.error,

     this.details,

     this.data,
  });

      /// Kết quả xử lý
  @JsonKey(
    
    name: r'success',
    required: true,
    includeIfNull: false,
  )


  final bool success;



      /// Thông báo lỗi
  @JsonKey(
    
    name: r'error',
    required: false,
    includeIfNull: false,
  )


  final Object? error;



      /// Chi tiết lỗi
  @JsonKey(
    
    name: r'details',
    required: false,
    includeIfNull: false,
  )


  final Object? details;



  @JsonKey(
    
    name: r'data',
    required: false,
    includeIfNull: false,
  )


  final UserLogSummaryResponse? data;





    @override
    bool operator ==(Object other) => identical(this, other) || other is LogControllerGetAggregatedUserSummaryReport200Response &&
      other.success == success &&
      other.error == error &&
      other.details == details &&
      other.data == data;

    @override
    int get hashCode =>
        success.hashCode +
        (error == null ? 0 : error.hashCode) +
        (details == null ? 0 : details.hashCode) +
        data.hashCode;

  factory LogControllerGetAggregatedUserSummaryReport200Response.fromJson(Map<String, dynamic> json) => _$LogControllerGetAggregatedUserSummaryReport200ResponseFromJson(json);

  Map<String, dynamic> toJson() => _$LogControllerGetAggregatedUserSummaryReport200ResponseToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

