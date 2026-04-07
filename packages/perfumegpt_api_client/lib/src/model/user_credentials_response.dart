//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'user_credentials_response.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class UserCredentialsResponse {
  /// Returns a new [UserCredentialsResponse] instance.
  UserCredentialsResponse({

     this.id,

     this.loyaltyPoint,

    required  this.fullName,

    required  this.phoneNumber,

    required  this.email,

     this.profilePictureUrl,
  });

  @JsonKey(
    
    name: r'id',
    required: false,
    includeIfNull: false,
  )


  final String? id;



  @JsonKey(
    
    name: r'loyaltyPoint',
    required: false,
    includeIfNull: false,
  )


  final int? loyaltyPoint;



  @JsonKey(
    
    name: r'fullName',
    required: true,
    includeIfNull: false,
  )


  final String fullName;



  @JsonKey(
    
    name: r'phoneNumber',
    required: true,
    includeIfNull: false,
  )


  final String phoneNumber;



  @JsonKey(
    
    name: r'email',
    required: true,
    includeIfNull: false,
  )


  final String email;



  @JsonKey(
    
    name: r'profilePictureUrl',
    required: false,
    includeIfNull: false,
  )


  final String? profilePictureUrl;





    @override
    bool operator ==(Object other) => identical(this, other) || other is UserCredentialsResponse &&
      other.id == id &&
      other.loyaltyPoint == loyaltyPoint &&
      other.fullName == fullName &&
      other.phoneNumber == phoneNumber &&
      other.email == email &&
      other.profilePictureUrl == profilePictureUrl;

    @override
    int get hashCode =>
        id.hashCode +
        loyaltyPoint.hashCode +
        fullName.hashCode +
        phoneNumber.hashCode +
        email.hashCode +
        (profilePictureUrl == null ? 0 : profilePictureUrl.hashCode);

  factory UserCredentialsResponse.fromJson(Map<String, dynamic> json) => _$UserCredentialsResponseFromJson(json);

  Map<String, dynamic> toJson() => _$UserCredentialsResponseToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

