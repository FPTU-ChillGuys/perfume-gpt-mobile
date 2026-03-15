//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:perfumegpt_api_client/src/model/media_response.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'review_response.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class ReviewResponse {
  /// Returns a new [ReviewResponse] instance.
  ReviewResponse({

     this.id,

     this.userId,

     this.userFullName,

     this.userProfilePictureUrl,

     this.orderDetailId,

     this.variantId,

     this.variantName,

     this.rating,

     this.comment,

     this.images,

     this.createdAt,

     this.updatedAt,
  });

  @JsonKey(
    
    name: r'id',
    required: false,
    includeIfNull: false,
  )


  final String? id;



  @JsonKey(
    
    name: r'userId',
    required: false,
    includeIfNull: false,
  )


  final String? userId;



  @JsonKey(
    
    name: r'userFullName',
    required: false,
    includeIfNull: false,
  )


  final String? userFullName;



  @JsonKey(
    
    name: r'userProfilePictureUrl',
    required: false,
    includeIfNull: false,
  )


  final String? userProfilePictureUrl;



  @JsonKey(
    
    name: r'orderDetailId',
    required: false,
    includeIfNull: false,
  )


  final String? orderDetailId;



  @JsonKey(
    
    name: r'variantId',
    required: false,
    includeIfNull: false,
  )


  final String? variantId;



  @JsonKey(
    
    name: r'variantName',
    required: false,
    includeIfNull: false,
  )


  final String? variantName;



  @JsonKey(
    
    name: r'rating',
    required: false,
    includeIfNull: false,
  )


  final int? rating;



  @JsonKey(
    
    name: r'comment',
    required: false,
    includeIfNull: false,
  )


  final String? comment;



  @JsonKey(
    
    name: r'images',
    required: false,
    includeIfNull: false,
  )


  final List<MediaResponse>? images;



  @JsonKey(
    
    name: r'createdAt',
    required: false,
    includeIfNull: false,
  )


  final DateTime? createdAt;



  @JsonKey(
    
    name: r'updatedAt',
    required: false,
    includeIfNull: false,
  )


  final DateTime? updatedAt;





    @override
    bool operator ==(Object other) => identical(this, other) || other is ReviewResponse &&
      other.id == id &&
      other.userId == userId &&
      other.userFullName == userFullName &&
      other.userProfilePictureUrl == userProfilePictureUrl &&
      other.orderDetailId == orderDetailId &&
      other.variantId == variantId &&
      other.variantName == variantName &&
      other.rating == rating &&
      other.comment == comment &&
      other.images == images &&
      other.createdAt == createdAt &&
      other.updatedAt == updatedAt;

    @override
    int get hashCode =>
        id.hashCode +
        userId.hashCode +
        userFullName.hashCode +
        (userProfilePictureUrl == null ? 0 : userProfilePictureUrl.hashCode) +
        orderDetailId.hashCode +
        variantId.hashCode +
        variantName.hashCode +
        rating.hashCode +
        comment.hashCode +
        images.hashCode +
        createdAt.hashCode +
        (updatedAt == null ? 0 : updatedAt.hashCode);

  factory ReviewResponse.fromJson(Map<String, dynamic> json) => _$ReviewResponseFromJson(json);

  Map<String, dynamic> toJson() => _$ReviewResponseToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

