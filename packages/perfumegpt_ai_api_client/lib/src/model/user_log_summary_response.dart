//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'user_log_summary_response.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class UserLogSummaryResponse {
  /// Returns a new [UserLogSummaryResponse] instance.
  UserLogSummaryResponse({

    required  this.id,

    required  this.createdAt,

    required  this.updatedAt,

    required  this.isActive,

    required  this.userId,

    required  this.logSummary,

     this.featureSnapshot,

     this.dailyLogSummary,

     this.dailyFeatureSnapshot,

     this.totalEvents = 0,
  });

      /// ID bản ghi
  @JsonKey(
    
    name: r'id',
    required: true,
    includeIfNull: false,
  )


  final String id;



      /// Ngày tạo
  @JsonKey(
    
    name: r'createdAt',
    required: true,
    includeIfNull: false,
  )


  final DateTime createdAt;



      /// Ngày cập nhật gần nhất
  @JsonKey(
    
    name: r'updatedAt',
    required: true,
    includeIfNull: false,
  )


  final DateTime updatedAt;



      /// Trạng thái hoạt động
  @JsonKey(
    
    name: r'isActive',
    required: true,
    includeIfNull: false,
  )


  final bool isActive;



      /// ID người dùng
  @JsonKey(
    
    name: r'userId',
    required: true,
    includeIfNull: false,
  )


  final String userId;



      /// Nội dung tóm tắt log
  @JsonKey(
    
    name: r'logSummary',
    required: true,
    includeIfNull: false,
  )


  final String logSummary;



      /// Feature snapshot dạng JSON
  @JsonKey(
    
    name: r'featureSnapshot',
    required: false,
    includeIfNull: false,
  )


  final Object? featureSnapshot;



      /// Bản tóm tắt log theo ngày
  @JsonKey(
    
    name: r'dailyLogSummary',
    required: false,
    includeIfNull: false,
  )


  final Object? dailyLogSummary;



      /// Feature snapshot theo ngày
  @JsonKey(
    
    name: r'dailyFeatureSnapshot',
    required: false,
    includeIfNull: false,
  )


  final Object? dailyFeatureSnapshot;



      /// Tổng số event đã xử lý
  @JsonKey(
    defaultValue: 0,
    name: r'totalEvents',
    required: true,
    includeIfNull: false,
  )


  final num totalEvents;





    @override
    bool operator ==(Object other) => identical(this, other) || other is UserLogSummaryResponse &&
      other.id == id &&
      other.createdAt == createdAt &&
      other.updatedAt == updatedAt &&
      other.isActive == isActive &&
      other.userId == userId &&
      other.logSummary == logSummary &&
      other.featureSnapshot == featureSnapshot &&
      other.dailyLogSummary == dailyLogSummary &&
      other.dailyFeatureSnapshot == dailyFeatureSnapshot &&
      other.totalEvents == totalEvents;

    @override
    int get hashCode =>
        id.hashCode +
        createdAt.hashCode +
        updatedAt.hashCode +
        isActive.hashCode +
        userId.hashCode +
        logSummary.hashCode +
        featureSnapshot.hashCode +
        dailyLogSummary.hashCode +
        dailyFeatureSnapshot.hashCode +
        totalEvents.hashCode;

  factory UserLogSummaryResponse.fromJson(Map<String, dynamic> json) => _$UserLogSummaryResponseFromJson(json);

  Map<String, dynamic> toJson() => _$UserLogSummaryResponseToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

