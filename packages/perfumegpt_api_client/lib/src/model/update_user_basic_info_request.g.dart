// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_user_basic_info_request.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$UpdateUserBasicInfoRequestCWProxy {
  UpdateUserBasicInfoRequest fullName(String fullName);

  UpdateUserBasicInfoRequest phoneNumber(String phoneNumber);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `UpdateUserBasicInfoRequest(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// UpdateUserBasicInfoRequest(...).copyWith(id: 12, name: "My name")
  /// ```
  UpdateUserBasicInfoRequest call({String fullName, String phoneNumber});
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfUpdateUserBasicInfoRequest.copyWith(...)` or call `instanceOfUpdateUserBasicInfoRequest.copyWith.fieldName(value)` for a single field.
class _$UpdateUserBasicInfoRequestCWProxyImpl
    implements _$UpdateUserBasicInfoRequestCWProxy {
  const _$UpdateUserBasicInfoRequestCWProxyImpl(this._value);

  final UpdateUserBasicInfoRequest _value;

  @override
  UpdateUserBasicInfoRequest fullName(String fullName) =>
      call(fullName: fullName);

  @override
  UpdateUserBasicInfoRequest phoneNumber(String phoneNumber) =>
      call(phoneNumber: phoneNumber);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `UpdateUserBasicInfoRequest(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// UpdateUserBasicInfoRequest(...).copyWith(id: 12, name: "My name")
  /// ```
  UpdateUserBasicInfoRequest call({
    Object? fullName = const $CopyWithPlaceholder(),
    Object? phoneNumber = const $CopyWithPlaceholder(),
  }) {
    return UpdateUserBasicInfoRequest(
      fullName: fullName == const $CopyWithPlaceholder() || fullName == null
          ? _value.fullName
          // ignore: cast_nullable_to_non_nullable
          : fullName as String,
      phoneNumber:
          phoneNumber == const $CopyWithPlaceholder() || phoneNumber == null
          ? _value.phoneNumber
          // ignore: cast_nullable_to_non_nullable
          : phoneNumber as String,
    );
  }
}

extension $UpdateUserBasicInfoRequestCopyWith on UpdateUserBasicInfoRequest {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfUpdateUserBasicInfoRequest.copyWith(...)` or `instanceOfUpdateUserBasicInfoRequest.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$UpdateUserBasicInfoRequestCWProxy get copyWith =>
      _$UpdateUserBasicInfoRequestCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UpdateUserBasicInfoRequest _$UpdateUserBasicInfoRequestFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('UpdateUserBasicInfoRequest', json, ($checkedConvert) {
  $checkKeys(json, requiredKeys: const ['fullName', 'phoneNumber']);
  final val = UpdateUserBasicInfoRequest(
    fullName: $checkedConvert('fullName', (v) => v as String),
    phoneNumber: $checkedConvert('phoneNumber', (v) => v as String),
  );
  return val;
});

Map<String, dynamic> _$UpdateUserBasicInfoRequestToJson(
  UpdateUserBasicInfoRequest instance,
) => <String, dynamic>{
  'fullName': instance.fullName,
  'phoneNumber': instance.phoneNumber,
};
