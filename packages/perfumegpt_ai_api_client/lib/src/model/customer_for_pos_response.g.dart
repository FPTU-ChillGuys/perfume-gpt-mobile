// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'customer_for_pos_response.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$CustomerForPosResponseCWProxy {
  CustomerForPosResponse id(String? id);

  CustomerForPosResponse fullName(String fullName);

  CustomerForPosResponse phoneNumber(String phoneNumber);

  CustomerForPosResponse email(String email);

  CustomerForPosResponse loyaltyPoint(int? loyaltyPoint);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `CustomerForPosResponse(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// CustomerForPosResponse(...).copyWith(id: 12, name: "My name")
  /// ```
  CustomerForPosResponse call({
    String? id,
    String fullName,
    String phoneNumber,
    String email,
    int? loyaltyPoint,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfCustomerForPosResponse.copyWith(...)` or call `instanceOfCustomerForPosResponse.copyWith.fieldName(value)` for a single field.
class _$CustomerForPosResponseCWProxyImpl
    implements _$CustomerForPosResponseCWProxy {
  const _$CustomerForPosResponseCWProxyImpl(this._value);

  final CustomerForPosResponse _value;

  @override
  CustomerForPosResponse id(String? id) => call(id: id);

  @override
  CustomerForPosResponse fullName(String fullName) => call(fullName: fullName);

  @override
  CustomerForPosResponse phoneNumber(String phoneNumber) =>
      call(phoneNumber: phoneNumber);

  @override
  CustomerForPosResponse email(String email) => call(email: email);

  @override
  CustomerForPosResponse loyaltyPoint(int? loyaltyPoint) =>
      call(loyaltyPoint: loyaltyPoint);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `CustomerForPosResponse(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// CustomerForPosResponse(...).copyWith(id: 12, name: "My name")
  /// ```
  CustomerForPosResponse call({
    Object? id = const $CopyWithPlaceholder(),
    Object? fullName = const $CopyWithPlaceholder(),
    Object? phoneNumber = const $CopyWithPlaceholder(),
    Object? email = const $CopyWithPlaceholder(),
    Object? loyaltyPoint = const $CopyWithPlaceholder(),
  }) {
    return CustomerForPosResponse(
      id: id == const $CopyWithPlaceholder()
          ? _value.id
          // ignore: cast_nullable_to_non_nullable
          : id as String?,
      fullName: fullName == const $CopyWithPlaceholder() || fullName == null
          ? _value.fullName
          // ignore: cast_nullable_to_non_nullable
          : fullName as String,
      phoneNumber:
          phoneNumber == const $CopyWithPlaceholder() || phoneNumber == null
          ? _value.phoneNumber
          // ignore: cast_nullable_to_non_nullable
          : phoneNumber as String,
      email: email == const $CopyWithPlaceholder() || email == null
          ? _value.email
          // ignore: cast_nullable_to_non_nullable
          : email as String,
      loyaltyPoint: loyaltyPoint == const $CopyWithPlaceholder()
          ? _value.loyaltyPoint
          // ignore: cast_nullable_to_non_nullable
          : loyaltyPoint as int?,
    );
  }
}

extension $CustomerForPosResponseCopyWith on CustomerForPosResponse {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfCustomerForPosResponse.copyWith(...)` or `instanceOfCustomerForPosResponse.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$CustomerForPosResponseCWProxy get copyWith =>
      _$CustomerForPosResponseCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CustomerForPosResponse _$CustomerForPosResponseFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('CustomerForPosResponse', json, ($checkedConvert) {
  $checkKeys(json, requiredKeys: const ['fullName', 'phoneNumber', 'email']);
  final val = CustomerForPosResponse(
    id: $checkedConvert('id', (v) => v as String?),
    fullName: $checkedConvert('fullName', (v) => v as String),
    phoneNumber: $checkedConvert('phoneNumber', (v) => v as String),
    email: $checkedConvert('email', (v) => v as String),
    loyaltyPoint: $checkedConvert('loyaltyPoint', (v) => (v as num?)?.toInt()),
  );
  return val;
});

Map<String, dynamic> _$CustomerForPosResponseToJson(
  CustomerForPosResponse instance,
) => <String, dynamic>{
  'id': ?instance.id,
  'fullName': instance.fullName,
  'phoneNumber': instance.phoneNumber,
  'email': instance.email,
  'loyaltyPoint': ?instance.loyaltyPoint,
};
