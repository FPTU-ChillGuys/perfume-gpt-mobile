// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'staff_manage_item.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$StaffManageItemCWProxy {
  StaffManageItem id(String? id);

  StaffManageItem userName(String userName);

  StaffManageItem fullName(String fullName);

  StaffManageItem email(String email);

  StaffManageItem phoneNumber(String phoneNumber);

  StaffManageItem isActive(bool? isActive);

  StaffManageItem profileImageUrl(String? profileImageUrl);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `StaffManageItem(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// StaffManageItem(...).copyWith(id: 12, name: "My name")
  /// ```
  StaffManageItem call({
    String? id,
    String userName,
    String fullName,
    String email,
    String phoneNumber,
    bool? isActive,
    String? profileImageUrl,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfStaffManageItem.copyWith(...)` or call `instanceOfStaffManageItem.copyWith.fieldName(value)` for a single field.
class _$StaffManageItemCWProxyImpl implements _$StaffManageItemCWProxy {
  const _$StaffManageItemCWProxyImpl(this._value);

  final StaffManageItem _value;

  @override
  StaffManageItem id(String? id) => call(id: id);

  @override
  StaffManageItem userName(String userName) => call(userName: userName);

  @override
  StaffManageItem fullName(String fullName) => call(fullName: fullName);

  @override
  StaffManageItem email(String email) => call(email: email);

  @override
  StaffManageItem phoneNumber(String phoneNumber) =>
      call(phoneNumber: phoneNumber);

  @override
  StaffManageItem isActive(bool? isActive) => call(isActive: isActive);

  @override
  StaffManageItem profileImageUrl(String? profileImageUrl) =>
      call(profileImageUrl: profileImageUrl);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `StaffManageItem(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// StaffManageItem(...).copyWith(id: 12, name: "My name")
  /// ```
  StaffManageItem call({
    Object? id = const $CopyWithPlaceholder(),
    Object? userName = const $CopyWithPlaceholder(),
    Object? fullName = const $CopyWithPlaceholder(),
    Object? email = const $CopyWithPlaceholder(),
    Object? phoneNumber = const $CopyWithPlaceholder(),
    Object? isActive = const $CopyWithPlaceholder(),
    Object? profileImageUrl = const $CopyWithPlaceholder(),
  }) {
    return StaffManageItem(
      id: id == const $CopyWithPlaceholder()
          ? _value.id
          // ignore: cast_nullable_to_non_nullable
          : id as String?,
      userName: userName == const $CopyWithPlaceholder() || userName == null
          ? _value.userName
          // ignore: cast_nullable_to_non_nullable
          : userName as String,
      fullName: fullName == const $CopyWithPlaceholder() || fullName == null
          ? _value.fullName
          // ignore: cast_nullable_to_non_nullable
          : fullName as String,
      email: email == const $CopyWithPlaceholder() || email == null
          ? _value.email
          // ignore: cast_nullable_to_non_nullable
          : email as String,
      phoneNumber:
          phoneNumber == const $CopyWithPlaceholder() || phoneNumber == null
          ? _value.phoneNumber
          // ignore: cast_nullable_to_non_nullable
          : phoneNumber as String,
      isActive: isActive == const $CopyWithPlaceholder()
          ? _value.isActive
          // ignore: cast_nullable_to_non_nullable
          : isActive as bool?,
      profileImageUrl: profileImageUrl == const $CopyWithPlaceholder()
          ? _value.profileImageUrl
          // ignore: cast_nullable_to_non_nullable
          : profileImageUrl as String?,
    );
  }
}

extension $StaffManageItemCopyWith on StaffManageItem {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfStaffManageItem.copyWith(...)` or `instanceOfStaffManageItem.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$StaffManageItemCWProxy get copyWith => _$StaffManageItemCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StaffManageItem _$StaffManageItemFromJson(Map<String, dynamic> json) =>
    $checkedCreate('StaffManageItem', json, ($checkedConvert) {
      $checkKeys(
        json,
        requiredKeys: const ['userName', 'fullName', 'email', 'phoneNumber'],
      );
      final val = StaffManageItem(
        id: $checkedConvert('id', (v) => v as String?),
        userName: $checkedConvert('userName', (v) => v as String),
        fullName: $checkedConvert('fullName', (v) => v as String),
        email: $checkedConvert('email', (v) => v as String),
        phoneNumber: $checkedConvert('phoneNumber', (v) => v as String),
        isActive: $checkedConvert('isActive', (v) => v as bool?),
        profileImageUrl: $checkedConvert(
          'profileImageUrl',
          (v) => v as String?,
        ),
      );
      return val;
    });

Map<String, dynamic> _$StaffManageItemToJson(StaffManageItem instance) =>
    <String, dynamic>{
      'id': ?instance.id,
      'userName': instance.userName,
      'fullName': instance.fullName,
      'email': instance.email,
      'phoneNumber': instance.phoneNumber,
      'isActive': ?instance.isActive,
      'profileImageUrl': ?instance.profileImageUrl,
    };
