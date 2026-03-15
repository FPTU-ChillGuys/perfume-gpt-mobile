// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'staff_lookup_item.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$StaffLookupItemCWProxy {
  StaffLookupItem id(String? id);

  StaffLookupItem userName(String? userName);

  StaffLookupItem fullName(String? fullName);

  StaffLookupItem email(String? email);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `StaffLookupItem(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// StaffLookupItem(...).copyWith(id: 12, name: "My name")
  /// ````
  StaffLookupItem call({
    String? id,
    String? userName,
    String? fullName,
    String? email,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfStaffLookupItem.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfStaffLookupItem.copyWith.fieldName(...)`
class _$StaffLookupItemCWProxyImpl implements _$StaffLookupItemCWProxy {
  const _$StaffLookupItemCWProxyImpl(this._value);

  final StaffLookupItem _value;

  @override
  StaffLookupItem id(String? id) => this(id: id);

  @override
  StaffLookupItem userName(String? userName) => this(userName: userName);

  @override
  StaffLookupItem fullName(String? fullName) => this(fullName: fullName);

  @override
  StaffLookupItem email(String? email) => this(email: email);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `StaffLookupItem(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// StaffLookupItem(...).copyWith(id: 12, name: "My name")
  /// ````
  StaffLookupItem call({
    Object? id = const $CopyWithPlaceholder(),
    Object? userName = const $CopyWithPlaceholder(),
    Object? fullName = const $CopyWithPlaceholder(),
    Object? email = const $CopyWithPlaceholder(),
  }) {
    return StaffLookupItem(
      id: id == const $CopyWithPlaceholder()
          ? _value.id
          // ignore: cast_nullable_to_non_nullable
          : id as String?,
      userName: userName == const $CopyWithPlaceholder()
          ? _value.userName
          // ignore: cast_nullable_to_non_nullable
          : userName as String?,
      fullName: fullName == const $CopyWithPlaceholder()
          ? _value.fullName
          // ignore: cast_nullable_to_non_nullable
          : fullName as String?,
      email: email == const $CopyWithPlaceholder()
          ? _value.email
          // ignore: cast_nullable_to_non_nullable
          : email as String?,
    );
  }
}

extension $StaffLookupItemCopyWith on StaffLookupItem {
  /// Returns a callable class that can be used as follows: `instanceOfStaffLookupItem.copyWith(...)` or like so:`instanceOfStaffLookupItem.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$StaffLookupItemCWProxy get copyWith => _$StaffLookupItemCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StaffLookupItem _$StaffLookupItemFromJson(Map<String, dynamic> json) =>
    $checkedCreate('StaffLookupItem', json, ($checkedConvert) {
      final val = StaffLookupItem(
        id: $checkedConvert('id', (v) => v as String?),
        userName: $checkedConvert('userName', (v) => v as String?),
        fullName: $checkedConvert('fullName', (v) => v as String?),
        email: $checkedConvert('email', (v) => v as String?),
      );
      return val;
    });

Map<String, dynamic> _$StaffLookupItemToJson(StaffLookupItem instance) =>
    <String, dynamic>{
      'id': ?instance.id,
      'userName': ?instance.userName,
      'fullName': ?instance.fullName,
      'email': ?instance.email,
    };
