// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_manage_item.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$UserManageItemCWProxy {
  UserManageItem id(String? id);

  UserManageItem userName(String userName);

  UserManageItem fullName(String fullName);

  UserManageItem email(String email);

  UserManageItem phoneNumber(String phoneNumber);

  UserManageItem isActive(bool? isActive);

  UserManageItem profileImageUrl(String? profileImageUrl);

  UserManageItem deliveryRefusalCount(int? deliveryRefusalCount);

  UserManageItem codBlockedUntil(DateTime? codBlockedUntil);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `UserManageItem(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// UserManageItem(...).copyWith(id: 12, name: "My name")
  /// ```
  UserManageItem call({
    String? id,
    String userName,
    String fullName,
    String email,
    String phoneNumber,
    bool? isActive,
    String? profileImageUrl,
    int? deliveryRefusalCount,
    DateTime? codBlockedUntil,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfUserManageItem.copyWith(...)` or call `instanceOfUserManageItem.copyWith.fieldName(value)` for a single field.
class _$UserManageItemCWProxyImpl implements _$UserManageItemCWProxy {
  const _$UserManageItemCWProxyImpl(this._value);

  final UserManageItem _value;

  @override
  UserManageItem id(String? id) => call(id: id);

  @override
  UserManageItem userName(String userName) => call(userName: userName);

  @override
  UserManageItem fullName(String fullName) => call(fullName: fullName);

  @override
  UserManageItem email(String email) => call(email: email);

  @override
  UserManageItem phoneNumber(String phoneNumber) =>
      call(phoneNumber: phoneNumber);

  @override
  UserManageItem isActive(bool? isActive) => call(isActive: isActive);

  @override
  UserManageItem profileImageUrl(String? profileImageUrl) =>
      call(profileImageUrl: profileImageUrl);

  @override
  UserManageItem deliveryRefusalCount(int? deliveryRefusalCount) =>
      call(deliveryRefusalCount: deliveryRefusalCount);

  @override
  UserManageItem codBlockedUntil(DateTime? codBlockedUntil) =>
      call(codBlockedUntil: codBlockedUntil);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `UserManageItem(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// UserManageItem(...).copyWith(id: 12, name: "My name")
  /// ```
  UserManageItem call({
    Object? id = const $CopyWithPlaceholder(),
    Object? userName = const $CopyWithPlaceholder(),
    Object? fullName = const $CopyWithPlaceholder(),
    Object? email = const $CopyWithPlaceholder(),
    Object? phoneNumber = const $CopyWithPlaceholder(),
    Object? isActive = const $CopyWithPlaceholder(),
    Object? profileImageUrl = const $CopyWithPlaceholder(),
    Object? deliveryRefusalCount = const $CopyWithPlaceholder(),
    Object? codBlockedUntil = const $CopyWithPlaceholder(),
  }) {
    return UserManageItem(
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
      deliveryRefusalCount: deliveryRefusalCount == const $CopyWithPlaceholder()
          ? _value.deliveryRefusalCount
          // ignore: cast_nullable_to_non_nullable
          : deliveryRefusalCount as int?,
      codBlockedUntil: codBlockedUntil == const $CopyWithPlaceholder()
          ? _value.codBlockedUntil
          // ignore: cast_nullable_to_non_nullable
          : codBlockedUntil as DateTime?,
    );
  }
}

extension $UserManageItemCopyWith on UserManageItem {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfUserManageItem.copyWith(...)` or `instanceOfUserManageItem.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$UserManageItemCWProxy get copyWith => _$UserManageItemCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserManageItem _$UserManageItemFromJson(Map<String, dynamic> json) =>
    $checkedCreate('UserManageItem', json, ($checkedConvert) {
      $checkKeys(
        json,
        requiredKeys: const ['userName', 'fullName', 'email', 'phoneNumber'],
      );
      final val = UserManageItem(
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
        deliveryRefusalCount: $checkedConvert(
          'deliveryRefusalCount',
          (v) => (v as num?)?.toInt(),
        ),
        codBlockedUntil: $checkedConvert(
          'codBlockedUntil',
          (v) => v == null ? null : DateTime.parse(v as String),
        ),
      );
      return val;
    });

Map<String, dynamic> _$UserManageItemToJson(UserManageItem instance) =>
    <String, dynamic>{
      'id': ?instance.id,
      'userName': instance.userName,
      'fullName': instance.fullName,
      'email': instance.email,
      'phoneNumber': instance.phoneNumber,
      'isActive': ?instance.isActive,
      'profileImageUrl': ?instance.profileImageUrl,
      'deliveryRefusalCount': ?instance.deliveryRefusalCount,
      'codBlockedUntil': ?instance.codBlockedUntil?.toIso8601String(),
    };
