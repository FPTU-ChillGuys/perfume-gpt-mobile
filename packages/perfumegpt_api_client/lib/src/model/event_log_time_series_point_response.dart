//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'event_log_time_series_point_response.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class EventLogTimeSeriesPointResponse {
  /// Returns a new [EventLogTimeSeriesPointResponse] instance.
  EventLogTimeSeriesPointResponse({

    required  this.bucketStart,

    required  this.totalCount,

    required  this.messageCount,

    required  this.searchCount,

    required  this.surveyCount,

    required  this.productCount,
  });

      /// Mốc thời gian của bucket
  @JsonKey(
    
    name: r'bucketStart',
    required: true,
    includeIfNull: false,
  )


  final DateTime bucketStart;



      /// Tổng số event trong bucket
  @JsonKey(
    
    name: r'totalCount',
    required: true,
    includeIfNull: false,
  )


  final num totalCount;



      /// Số event message trong bucket
  @JsonKey(
    
    name: r'messageCount',
    required: true,
    includeIfNull: false,
  )


  final num messageCount;



      /// Số event search trong bucket
  @JsonKey(
    
    name: r'searchCount',
    required: true,
    includeIfNull: false,
  )


  final num searchCount;



      /// Số event survey trong bucket
  @JsonKey(
    
    name: r'surveyCount',
    required: true,
    includeIfNull: false,
  )


  final num surveyCount;



      /// Số event product trong bucket
  @JsonKey(
    
    name: r'productCount',
    required: true,
    includeIfNull: false,
  )


  final num productCount;





    @override
    bool operator ==(Object other) => identical(this, other) || other is EventLogTimeSeriesPointResponse &&
      other.bucketStart == bucketStart &&
      other.totalCount == totalCount &&
      other.messageCount == messageCount &&
      other.searchCount == searchCount &&
      other.surveyCount == surveyCount &&
      other.productCount == productCount;

    @override
    int get hashCode =>
        bucketStart.hashCode +
        totalCount.hashCode +
        messageCount.hashCode +
        searchCount.hashCode +
        surveyCount.hashCode +
        productCount.hashCode;

  factory EventLogTimeSeriesPointResponse.fromJson(Map<String, dynamic> json) => _$EventLogTimeSeriesPointResponseFromJson(json);

  Map<String, dynamic> toJson() => _$EventLogTimeSeriesPointResponseToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

