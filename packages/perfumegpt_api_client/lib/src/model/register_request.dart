//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'register_request.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class RegisterRequest {
  /// Returns a new [RegisterRequest] instance.
  RegisterRequest({

     this.fullName,

    required  this.phoneNumber,

    required  this.email,

     this.password,

     this.clientUri,
  });

  @JsonKey(
    
    name: r'fullName',
    required: false,
    includeIfNull: false,
  )


  final String? fullName;



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
    
    name: r'password',
    required: false,
    includeIfNull: false,
  )


  final String? password;



  @JsonKey(
    
    name: r'clientUri',
    required: false,
    includeIfNull: false,
  )


  final String? clientUri;





    @override
    bool operator ==(Object other) => identical(this, other) || other is RegisterRequest &&
      other.fullName == fullName &&
      other.phoneNumber == phoneNumber &&
      other.email == email &&
      other.password == password &&
      other.clientUri == clientUri;

    @override
    int get hashCode =>
        fullName.hashCode +
        phoneNumber.hashCode +
        email.hashCode +
        password.hashCode +
        clientUri.hashCode;

  factory RegisterRequest.fromJson(Map<String, dynamic> json) => _$RegisterRequestFromJson(json);

  Map<String, dynamic> toJson() => _$RegisterRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

