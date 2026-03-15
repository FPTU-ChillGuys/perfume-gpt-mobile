//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'points_request.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class PointsRequest {
  /// Returns a new [PointsRequest] instance.
  PointsRequest({

     this.points,
  });

  @JsonKey(
    
    name: r'points',
    required: false,
    includeIfNull: false,
  )


  final int? points;





    @override
    bool operator ==(Object other) => identical(this, other) || other is PointsRequest &&
      other.points == points;

    @override
    int get hashCode =>
        points.hashCode;

  factory PointsRequest.fromJson(Map<String, dynamic> json) => _$PointsRequestFromJson(json);

  Map<String, dynamic> toJson() => _$PointsRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

