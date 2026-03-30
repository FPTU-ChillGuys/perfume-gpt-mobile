// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'customer_family_preference_respone.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$CustomerFamilyPreferenceResponeCWProxy {
  CustomerFamilyPreferenceRespone familyId(int? familyId);

  CustomerFamilyPreferenceRespone familyName(String? familyName);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `CustomerFamilyPreferenceRespone(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// CustomerFamilyPreferenceRespone(...).copyWith(id: 12, name: "My name")
  /// ```
  CustomerFamilyPreferenceRespone call({int? familyId, String? familyName});
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfCustomerFamilyPreferenceRespone.copyWith(...)` or call `instanceOfCustomerFamilyPreferenceRespone.copyWith.fieldName(value)` for a single field.
class _$CustomerFamilyPreferenceResponeCWProxyImpl
    implements _$CustomerFamilyPreferenceResponeCWProxy {
  const _$CustomerFamilyPreferenceResponeCWProxyImpl(this._value);

  final CustomerFamilyPreferenceRespone _value;

  @override
  CustomerFamilyPreferenceRespone familyId(int? familyId) =>
      call(familyId: familyId);

  @override
  CustomerFamilyPreferenceRespone familyName(String? familyName) =>
      call(familyName: familyName);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `CustomerFamilyPreferenceRespone(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// CustomerFamilyPreferenceRespone(...).copyWith(id: 12, name: "My name")
  /// ```
  CustomerFamilyPreferenceRespone call({
    Object? familyId = const $CopyWithPlaceholder(),
    Object? familyName = const $CopyWithPlaceholder(),
  }) {
    return CustomerFamilyPreferenceRespone(
      familyId: familyId == const $CopyWithPlaceholder()
          ? _value.familyId
          // ignore: cast_nullable_to_non_nullable
          : familyId as int?,
      familyName: familyName == const $CopyWithPlaceholder()
          ? _value.familyName
          // ignore: cast_nullable_to_non_nullable
          : familyName as String?,
    );
  }
}

extension $CustomerFamilyPreferenceResponeCopyWith
    on CustomerFamilyPreferenceRespone {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfCustomerFamilyPreferenceRespone.copyWith(...)` or `instanceOfCustomerFamilyPreferenceRespone.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$CustomerFamilyPreferenceResponeCWProxy get copyWith =>
      _$CustomerFamilyPreferenceResponeCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CustomerFamilyPreferenceRespone _$CustomerFamilyPreferenceResponeFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('CustomerFamilyPreferenceRespone', json, ($checkedConvert) {
  final val = CustomerFamilyPreferenceRespone(
    familyId: $checkedConvert('familyId', (v) => (v as num?)?.toInt()),
    familyName: $checkedConvert('familyName', (v) => v as String?),
  );
  return val;
});

Map<String, dynamic> _$CustomerFamilyPreferenceResponeToJson(
  CustomerFamilyPreferenceRespone instance,
) => <String, dynamic>{
  'familyId': ?instance.familyId,
  'familyName': ?instance.familyName,
};
