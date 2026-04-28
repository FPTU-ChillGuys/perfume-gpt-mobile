//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:perfumegpt_ai_api_client/src/model/event_log_time_series_point_response.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'event_log_time_series_response.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class EventLogTimeSeriesResponse {
  /// Returns a new [EventLogTimeSeriesResponse] instance.
  EventLogTimeSeriesResponse({

     this.userId,

     this.startDate,

     this.endDate,

    required  this.granularity,

    required  this.points,
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



      /// Mức gộp dữ liệu
  @JsonKey(
    
    name: r'granularity',
    required: true,
    includeIfNull: false,
  )


  final EventLogTimeSeriesResponseGranularityEnum granularity;



      /// Các điểm dữ liệu time-series
  @JsonKey(
    
    name: r'points',
    required: true,
    includeIfNull: false,
  )


  final List<EventLogTimeSeriesPointResponse> points;





    @override
    bool operator ==(Object other) => identical(this, other) || other is EventLogTimeSeriesResponse &&
      other.userId == userId &&
      other.startDate == startDate &&
      other.endDate == endDate &&
      other.granularity == granularity &&
      other.points == points;

    @override
    int get hashCode =>
        (userId == null ? 0 : userId.hashCode) +
        (startDate == null ? 0 : startDate.hashCode) +
        (endDate == null ? 0 : endDate.hashCode) +
        granularity.hashCode +
        points.hashCode;

  factory EventLogTimeSeriesResponse.fromJson(Map<String, dynamic> json) => _$EventLogTimeSeriesResponseFromJson(json);

  Map<String, dynamic> toJson() => _$EventLogTimeSeriesResponseToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

/// Mức gộp dữ liệu
enum EventLogTimeSeriesResponseGranularityEnum {
    /// Mức gộp dữ liệu
@JsonValue(r'day')
day(r'day'),
    /// Mức gộp dữ liệu
@JsonValue(r'week')
week(r'week');

const EventLogTimeSeriesResponseGranularityEnum(this.value);

final String value;

@override
String toString() => value;
}


