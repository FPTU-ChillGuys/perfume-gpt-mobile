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

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `StaffLookupItem(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// StaffLookupItem(...).copyWith(id: 12, name: "My name")
  /// ```
  StaffLookupItem call({
    String? id,
    String? userName,
    String? fullName,
    String? email,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfStaffLookupItem.copyWith(...)` or call `instanceOfStaffLookupItem.copyWith.fieldName(value)` for a single field.
class _$StaffLookupItemCWProxyImpl implements _$StaffLookupItemCWProxy {
  const _$StaffLookupItemCWProxyImpl(this._value);

  final StaffLookupItem _value;

  @override
  StaffLookupItem id(String? id) => call(id: id);

  @override
  StaffLookupItem userName(String? userName) => call(userName: userName);

  @override
  StaffLookupItem fullName(String? fullName) => call(fullName: fullName);

  @override
  StaffLookupItem email(String? email) => call(email: email);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `StaffLookupItem(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// StaffLookupItem(...).copyWith(id: 12, name: "My name")
  /// ```
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
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfStaffLookupItem.copyWith(...)` or `instanceOfStaffLookupItem.copyWith.fieldName(...)`.
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
