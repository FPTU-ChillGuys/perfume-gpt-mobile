//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'update_review_request.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class UpdateReviewRequest {
  /// Returns a new [UpdateReviewRequest] instance.
  UpdateReviewRequest({

     this.rating,

     this.comment,

     this.temporaryMediaIdsToAdd,

     this.mediaIdsToDelete,
  });

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
    
    name: r'temporaryMediaIdsToAdd',
    required: false,
    includeIfNull: false,
  )


  final List<String>? temporaryMediaIdsToAdd;



  @JsonKey(
    
    name: r'mediaIdsToDelete',
    required: false,
    includeIfNull: false,
  )


  final List<String>? mediaIdsToDelete;





    @override
    bool operator ==(Object other) => identical(this, other) || other is UpdateReviewRequest &&
      other.rating == rating &&
      other.comment == comment &&
      other.temporaryMediaIdsToAdd == temporaryMediaIdsToAdd &&
      other.mediaIdsToDelete == mediaIdsToDelete;

    @override
    int get hashCode =>
        rating.hashCode +
        comment.hashCode +
        (temporaryMediaIdsToAdd == null ? 0 : temporaryMediaIdsToAdd.hashCode) +
        (mediaIdsToDelete == null ? 0 : mediaIdsToDelete.hashCode);

  factory UpdateReviewRequest.fromJson(Map<String, dynamic> json) => _$UpdateReviewRequestFromJson(json);

  Map<String, dynamic> toJson() => _$UpdateReviewRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

