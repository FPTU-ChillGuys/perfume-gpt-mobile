//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'loyalty_point_response.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class LoyaltyPointResponse {
  /// Returns a new [LoyaltyPointResponse] instance.
  LoyaltyPointResponse({

     this.id,

     this.points,

     this.updatedAt,
  });

  @JsonKey(
    
    name: r'id',
    required: false,
    includeIfNull: false,
  )


  final String? id;



  @JsonKey(
    
    name: r'points',
    required: false,
    includeIfNull: false,
  )


  final int? points;



  @JsonKey(
    
    name: r'updatedAt',
    required: false,
    includeIfNull: false,
  )


  final DateTime? updatedAt;





    @override
    bool operator ==(Object other) => identical(this, other) || other is LoyaltyPointResponse &&
      other.id == id &&
      other.points == points &&
      other.updatedAt == updatedAt;

    @override
    int get hashCode =>
        id.hashCode +
        points.hashCode +
        updatedAt.hashCode;

  factory LoyaltyPointResponse.fromJson(Map<String, dynamic> json) => _$LoyaltyPointResponseFromJson(json);

  Map<String, dynamic> toJson() => _$LoyaltyPointResponseToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

