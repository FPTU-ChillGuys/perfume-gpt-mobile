//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:perfumegpt_api_client/src/model/media_response.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'review_detail_response.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class ReviewDetailResponse {
  /// Returns a new [ReviewDetailResponse] instance.
  ReviewDetailResponse({

     this.id,

     this.userId,

     this.userFullName,

     this.userProfilePictureUrl,

     this.orderDetailId,

     this.orderId,

     this.quantity,

     this.unitPrice,

     this.variantId,

     this.variantName,

     this.productName,

     this.volumeMl,

     this.concentrationName,

     this.rating,

     this.comment,

     this.images,

     this.staffFeedbackComment,

     this.staffFeedbackByStaffId,

     this.staffFeedbackAt,

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
    
    name: r'orderId',
    required: false,
    includeIfNull: false,
  )


  final String? orderId;



  @JsonKey(
    
    name: r'quantity',
    required: false,
    includeIfNull: false,
  )


  final int? quantity;



  @JsonKey(
    
    name: r'unitPrice',
    required: false,
    includeIfNull: false,
  )


  final num? unitPrice;



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
    
    name: r'productName',
    required: false,
    includeIfNull: false,
  )


  final String? productName;



  @JsonKey(
    
    name: r'volumeMl',
    required: false,
    includeIfNull: false,
  )


  final int? volumeMl;



  @JsonKey(
    
    name: r'concentrationName',
    required: false,
    includeIfNull: false,
  )


  final String? concentrationName;



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
    
    name: r'staffFeedbackComment',
    required: false,
    includeIfNull: false,
  )


  final String? staffFeedbackComment;



  @JsonKey(
    
    name: r'staffFeedbackByStaffId',
    required: false,
    includeIfNull: false,
  )


  final String? staffFeedbackByStaffId;



  @JsonKey(
    
    name: r'staffFeedbackAt',
    required: false,
    includeIfNull: false,
  )


  final DateTime? staffFeedbackAt;



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
    bool operator ==(Object other) => identical(this, other) || other is ReviewDetailResponse &&
      other.id == id &&
      other.userId == userId &&
      other.userFullName == userFullName &&
      other.userProfilePictureUrl == userProfilePictureUrl &&
      other.orderDetailId == orderDetailId &&
      other.orderId == orderId &&
      other.quantity == quantity &&
      other.unitPrice == unitPrice &&
      other.variantId == variantId &&
      other.variantName == variantName &&
      other.productName == productName &&
      other.volumeMl == volumeMl &&
      other.concentrationName == concentrationName &&
      other.rating == rating &&
      other.comment == comment &&
      other.images == images &&
      other.staffFeedbackComment == staffFeedbackComment &&
      other.staffFeedbackByStaffId == staffFeedbackByStaffId &&
      other.staffFeedbackAt == staffFeedbackAt &&
      other.createdAt == createdAt &&
      other.updatedAt == updatedAt;

    @override
    int get hashCode =>
        id.hashCode +
        userId.hashCode +
        userFullName.hashCode +
        (userProfilePictureUrl == null ? 0 : userProfilePictureUrl.hashCode) +
        orderDetailId.hashCode +
        orderId.hashCode +
        quantity.hashCode +
        unitPrice.hashCode +
        variantId.hashCode +
        variantName.hashCode +
        productName.hashCode +
        volumeMl.hashCode +
        concentrationName.hashCode +
        rating.hashCode +
        comment.hashCode +
        images.hashCode +
        (staffFeedbackComment == null ? 0 : staffFeedbackComment.hashCode) +
        (staffFeedbackByStaffId == null ? 0 : staffFeedbackByStaffId.hashCode) +
        (staffFeedbackAt == null ? 0 : staffFeedbackAt.hashCode) +
        createdAt.hashCode +
        (updatedAt == null ? 0 : updatedAt.hashCode);

  factory ReviewDetailResponse.fromJson(Map<String, dynamic> json) => _$ReviewDetailResponseFromJson(json);

  Map<String, dynamic> toJson() => _$ReviewDetailResponseToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

