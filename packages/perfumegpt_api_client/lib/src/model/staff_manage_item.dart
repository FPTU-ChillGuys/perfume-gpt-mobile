//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'staff_manage_item.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class StaffManageItem {
  /// Returns a new [StaffManageItem] instance.
  StaffManageItem({

     this.id,

    required  this.userName,

    required  this.fullName,

    required  this.email,

    required  this.phoneNumber,

     this.isActive,

     this.profileImageUrl,
  });

  @JsonKey(
    
    name: r'id',
    required: false,
    includeIfNull: false,
  )


  final String? id;



  @JsonKey(
    
    name: r'userName',
    required: true,
    includeIfNull: false,
  )


  final String userName;



  @JsonKey(
    
    name: r'fullName',
    required: true,
    includeIfNull: false,
  )


  final String fullName;



  @JsonKey(
    
    name: r'email',
    required: true,
    includeIfNull: false,
  )


  final String email;



  @JsonKey(
    
    name: r'phoneNumber',
    required: true,
    includeIfNull: false,
  )


  final String phoneNumber;



  @JsonKey(
    
    name: r'isActive',
    required: false,
    includeIfNull: false,
  )


  final bool? isActive;



  @JsonKey(
    
    name: r'profileImageUrl',
    required: false,
    includeIfNull: false,
  )


  final String? profileImageUrl;





    @override
    bool operator ==(Object other) => identical(this, other) || other is StaffManageItem &&
      other.id == id &&
      other.userName == userName &&
      other.fullName == fullName &&
      other.email == email &&
      other.phoneNumber == phoneNumber &&
      other.isActive == isActive &&
      other.profileImageUrl == profileImageUrl;

    @override
    int get hashCode =>
        id.hashCode +
        userName.hashCode +
        fullName.hashCode +
        email.hashCode +
        phoneNumber.hashCode +
        isActive.hashCode +
        (profileImageUrl == null ? 0 : profileImageUrl.hashCode);

  factory StaffManageItem.fromJson(Map<String, dynamic> json) => _$StaffManageItemFromJson(json);

  Map<String, dynamic> toJson() => _$StaffManageItemToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

