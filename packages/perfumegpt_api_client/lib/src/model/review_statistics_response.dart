//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'review_statistics_response.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class ReviewStatisticsResponse {
  /// Returns a new [ReviewStatisticsResponse] instance.
  ReviewStatisticsResponse({

     this.variantId,

     this.totalReviews,

     this.averageRating,

     this.fiveStarCount,

     this.fourStarCount,

     this.threeStarCount,

     this.twoStarCount,

     this.oneStarCount,
  });

  @JsonKey(
    
    name: r'variantId',
    required: false,
    includeIfNull: false,
  )


  final String? variantId;



  @JsonKey(
    
    name: r'totalReviews',
    required: false,
    includeIfNull: false,
  )


  final int? totalReviews;



  @JsonKey(
    
    name: r'averageRating',
    required: false,
    includeIfNull: false,
  )


  final double? averageRating;



  @JsonKey(
    
    name: r'fiveStarCount',
    required: false,
    includeIfNull: false,
  )


  final int? fiveStarCount;



  @JsonKey(
    
    name: r'fourStarCount',
    required: false,
    includeIfNull: false,
  )


  final int? fourStarCount;



  @JsonKey(
    
    name: r'threeStarCount',
    required: false,
    includeIfNull: false,
  )


  final int? threeStarCount;



  @JsonKey(
    
    name: r'twoStarCount',
    required: false,
    includeIfNull: false,
  )


  final int? twoStarCount;



  @JsonKey(
    
    name: r'oneStarCount',
    required: false,
    includeIfNull: false,
  )


  final int? oneStarCount;





    @override
    bool operator ==(Object other) => identical(this, other) || other is ReviewStatisticsResponse &&
      other.variantId == variantId &&
      other.totalReviews == totalReviews &&
      other.averageRating == averageRating &&
      other.fiveStarCount == fiveStarCount &&
      other.fourStarCount == fourStarCount &&
      other.threeStarCount == threeStarCount &&
      other.twoStarCount == twoStarCount &&
      other.oneStarCount == oneStarCount;

    @override
    int get hashCode =>
        variantId.hashCode +
        totalReviews.hashCode +
        averageRating.hashCode +
        fiveStarCount.hashCode +
        fourStarCount.hashCode +
        threeStarCount.hashCode +
        twoStarCount.hashCode +
        oneStarCount.hashCode;

  factory ReviewStatisticsResponse.fromJson(Map<String, dynamic> json) => _$ReviewStatisticsResponseFromJson(json);

  Map<String, dynamic> toJson() => _$ReviewStatisticsResponseToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

