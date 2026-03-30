//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'create_review_request.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class CreateReviewRequest {
  /// Returns a new [CreateReviewRequest] instance.
  CreateReviewRequest({

    required  this.orderDetailId,

     this.rating,

    required  this.comment,

     this.temporaryMediaIds,
  });

  @JsonKey(
    
    name: r'orderDetailId',
    required: true,
    includeIfNull: false,
  )


  final String orderDetailId;



          // minimum: 1
          // maximum: 5
  @JsonKey(
    
    name: r'rating',
    required: false,
    includeIfNull: false,
  )


  final int? rating;



  @JsonKey(
    
    name: r'comment',
    required: true,
    includeIfNull: false,
  )


  final String comment;



  @JsonKey(
    
    name: r'temporaryMediaIds',
    required: false,
    includeIfNull: false,
  )


  final List<String>? temporaryMediaIds;





    @override
    bool operator ==(Object other) => identical(this, other) || other is CreateReviewRequest &&
      other.orderDetailId == orderDetailId &&
      other.rating == rating &&
      other.comment == comment &&
      other.temporaryMediaIds == temporaryMediaIds;

    @override
    int get hashCode =>
        orderDetailId.hashCode +
        rating.hashCode +
        comment.hashCode +
        (temporaryMediaIds == null ? 0 : temporaryMediaIds.hashCode);

  factory CreateReviewRequest.fromJson(Map<String, dynamic> json) => _$CreateReviewRequestFromJson(json);

  Map<String, dynamic> toJson() => _$CreateReviewRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

