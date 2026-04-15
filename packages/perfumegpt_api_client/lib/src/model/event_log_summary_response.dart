//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'event_log_summary_response.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class EventLogSummaryResponse {
  /// Returns a new [EventLogSummaryResponse] instance.
  EventLogSummaryResponse({

     this.userId,

     this.startDate,

     this.endDate,

    required  this.totalCount,

    required  this.messageCount,

    required  this.searchCount,

    required  this.surveyCount,

    required  this.productCount,
  });

      /// ID người dùng
  @JsonKey(
    
    name: r'userId',
    required: false,
    includeIfNull: false,
  )


  final String? userId;



      /// Ngày bắt đầu thống kê
  @JsonKey(
    
    name: r'startDate',
    required: false,
    includeIfNull: false,
  )


  final DateTime? startDate;



      /// Ngày kết thúc thống kê
  @JsonKey(
    
    name: r'endDate',
    required: false,
    includeIfNull: false,
  )


  final DateTime? endDate;



      /// Tổng số event
  @JsonKey(
    
    name: r'totalCount',
    required: true,
    includeIfNull: false,
  )


  final num totalCount;



      /// Số event message
  @JsonKey(
    
    name: r'messageCount',
    required: true,
    includeIfNull: false,
  )


  final num messageCount;



      /// Số event search
  @JsonKey(
    
    name: r'searchCount',
    required: true,
    includeIfNull: false,
  )


  final num searchCount;



      /// Số event survey
  @JsonKey(
    
    name: r'surveyCount',
    required: true,
    includeIfNull: false,
  )


  final num surveyCount;



      /// Số event product
  @JsonKey(
    
    name: r'productCount',
    required: true,
    includeIfNull: false,
  )


  final num productCount;





    @override
    bool operator ==(Object other) => identical(this, other) || other is EventLogSummaryResponse &&
      other.userId == userId &&
      other.startDate == startDate &&
      other.endDate == endDate &&
      other.totalCount == totalCount &&
      other.messageCount == messageCount &&
      other.searchCount == searchCount &&
      other.surveyCount == surveyCount &&
      other.productCount == productCount;

    @override
    int get hashCode =>
        (userId == null ? 0 : userId.hashCode) +
        (startDate == null ? 0 : startDate.hashCode) +
        (endDate == null ? 0 : endDate.hashCode) +
        totalCount.hashCode +
        messageCount.hashCode +
        searchCount.hashCode +
        surveyCount.hashCode +
        productCount.hashCode;

  factory EventLogSummaryResponse.fromJson(Map<String, dynamic> json) => _$EventLogSummaryResponseFromJson(json);

  Map<String, dynamic> toJson() => _$EventLogSummaryResponseToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

