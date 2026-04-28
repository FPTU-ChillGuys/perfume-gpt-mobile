//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'review_log.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class ReviewLog {
  /// Returns a new [ReviewLog] instance.
  ReviewLog({

    required  this.id,

    required  this.createdAt,

    required  this.updatedAt,

    required  this.isActive,

    required  this.typeReview,

    required  this.variantId,

    required  this.reviewLog,
  });

      /// ID duy nhất (UUID)
  @JsonKey(
    
    name: r'id',
    required: true,
    includeIfNull: false,
  )


  final String id;



      /// Ngày tạo bản ghi
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



      /// Nội dung log đánh giá
  @JsonKey(
    
    name: r'typeReview',
    required: true,
    includeIfNull: false,
  )


  final String typeReview;



      /// ID của variant (nếu type là ID)
  @JsonKey(
    
    name: r'variantId',
    required: true,
    includeIfNull: false,
  )


  final String variantId;



      /// Nội dung log đánh giá
  @JsonKey(
    
    name: r'reviewLog',
    required: true,
    includeIfNull: false,
  )


  final String reviewLog;





    @override
    bool operator ==(Object other) => identical(this, other) || other is ReviewLog &&
      other.id == id &&
      other.createdAt == createdAt &&
      other.updatedAt == updatedAt &&
      other.isActive == isActive &&
      other.typeReview == typeReview &&
      other.variantId == variantId &&
      other.reviewLog == reviewLog;

    @override
    int get hashCode =>
        id.hashCode +
        createdAt.hashCode +
        updatedAt.hashCode +
        isActive.hashCode +
        typeReview.hashCode +
        variantId.hashCode +
        reviewLog.hashCode;

  factory ReviewLog.fromJson(Map<String, dynamic> json) => _$ReviewLogFromJson(json);

  Map<String, dynamic> toJson() => _$ReviewLogToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

