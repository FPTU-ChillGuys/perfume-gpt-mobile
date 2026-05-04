// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_lookup_item.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$UserLookupItemCWProxy {
  UserLookupItem id(String? id);

  UserLookupItem fullName(String fullName);

  UserLookupItem email(String email);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `UserLookupItem(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// UserLookupItem(...).copyWith(id: 12, name: "My name")
  /// ```
  UserLookupItem call({String? id, String fullName, String email});
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfUserLookupItem.copyWith(...)` or call `instanceOfUserLookupItem.copyWith.fieldName(value)` for a single field.
class _$UserLookupItemCWProxyImpl implements _$UserLookupItemCWProxy {
  const _$UserLookupItemCWProxyImpl(this._value);

  final UserLookupItem _value;

  @override
  UserLookupItem id(String? id) => call(id: id);

  @override
  UserLookupItem fullName(String fullName) => call(fullName: fullName);

  @override
  UserLookupItem email(String email) => call(email: email);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `UserLookupItem(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// UserLookupItem(...).copyWith(id: 12, name: "My name")
  /// ```
  UserLookupItem call({
    Object? id = const $CopyWithPlaceholder(),
    Object? fullName = const $CopyWithPlaceholder(),
    Object? email = const $CopyWithPlaceholder(),
  }) {
    return UserLookupItem(
      id: id == const $CopyWithPlaceholder()
          ? _value.id
          // ignore: cast_nullable_to_non_nullable
          : id as String?,
      fullName: fullName == const $CopyWithPlaceholder() || fullName == null
          ? _value.fullName
          // ignore: cast_nullable_to_non_nullable
          : fullName as String,
      email: email == const $CopyWithPlaceholder() || email == null
          ? _value.email
          // ignore: cast_nullable_to_non_nullable
          : email as String,
    );
  }
}

extension $UserLookupItemCopyWith on UserLookupItem {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfUserLookupItem.copyWith(...)` or `instanceOfUserLookupItem.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$UserLookupItemCWProxy get copyWith => _$UserLookupItemCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserLookupItem _$UserLookupItemFromJson(Map<String, dynamic> json) =>
    $checkedCreate('UserLookupItem', json, ($checkedConvert) {
      $checkKeys(json, requiredKeys: const ['fullName', 'email']);
      final val = UserLookupItem(
        id: $checkedConvert('id', (v) => v as String?),
        fullName: $checkedConvert('fullName', (v) => v as String),
        email: $checkedConvert('email', (v) => v as String),
      );
      return val;
    });

Map<String, dynamic> _$UserLookupItemToJson(UserLookupItem instance) =>
    <String, dynamic>{
      'id': ?instance.id,
      'fullName': instance.fullName,
      'email': instance.email,
    };
