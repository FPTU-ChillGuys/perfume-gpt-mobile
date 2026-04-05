// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'customer_attribute_preference_response.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$CustomerAttributePreferenceResponseCWProxy {
  CustomerAttributePreferenceResponse attributeValueId(int? attributeValueId);

  CustomerAttributePreferenceResponse attributeValueName(
    String attributeValueName,
  );

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `CustomerAttributePreferenceResponse(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// CustomerAttributePreferenceResponse(...).copyWith(id: 12, name: "My name")
  /// ```
  CustomerAttributePreferenceResponse call({
    int? attributeValueId,
    String attributeValueName,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfCustomerAttributePreferenceResponse.copyWith(...)` or call `instanceOfCustomerAttributePreferenceResponse.copyWith.fieldName(value)` for a single field.
class _$CustomerAttributePreferenceResponseCWProxyImpl
    implements _$CustomerAttributePreferenceResponseCWProxy {
  const _$CustomerAttributePreferenceResponseCWProxyImpl(this._value);

  final CustomerAttributePreferenceResponse _value;

  @override
  CustomerAttributePreferenceResponse attributeValueId(int? attributeValueId) =>
      call(attributeValueId: attributeValueId);

  @override
  CustomerAttributePreferenceResponse attributeValueName(
    String attributeValueName,
  ) => call(attributeValueName: attributeValueName);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `CustomerAttributePreferenceResponse(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// CustomerAttributePreferenceResponse(...).copyWith(id: 12, name: "My name")
  /// ```
  CustomerAttributePreferenceResponse call({
    Object? attributeValueId = const $CopyWithPlaceholder(),
    Object? attributeValueName = const $CopyWithPlaceholder(),
  }) {
    return CustomerAttributePreferenceResponse(
      attributeValueId: attributeValueId == const $CopyWithPlaceholder()
          ? _value.attributeValueId
          // ignore: cast_nullable_to_non_nullable
          : attributeValueId as int?,
      attributeValueName:
          attributeValueName == const $CopyWithPlaceholder() ||
              attributeValueName == null
          ? _value.attributeValueName
          // ignore: cast_nullable_to_non_nullable
          : attributeValueName as String,
    );
  }
}

extension $CustomerAttributePreferenceResponseCopyWith
    on CustomerAttributePreferenceResponse {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfCustomerAttributePreferenceResponse.copyWith(...)` or `instanceOfCustomerAttributePreferenceResponse.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$CustomerAttributePreferenceResponseCWProxy get copyWith =>
      _$CustomerAttributePreferenceResponseCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CustomerAttributePreferenceResponse
_$CustomerAttributePreferenceResponseFromJson(Map<String, dynamic> json) =>
    $checkedCreate('CustomerAttributePreferenceResponse', json, (
      $checkedConvert,
    ) {
      $checkKeys(json, requiredKeys: const ['attributeValueName']);
      final val = CustomerAttributePreferenceResponse(
        attributeValueId: $checkedConvert(
          'attributeValueId',
          (v) => (v as num?)?.toInt(),
        ),
        attributeValueName: $checkedConvert(
          'attributeValueName',
          (v) => v as String,
        ),
      );
      return val;
    });

Map<String, dynamic> _$CustomerAttributePreferenceResponseToJson(
  CustomerAttributePreferenceResponse instance,
) => <String, dynamic>{
  'attributeValueId': ?instance.attributeValueId,
  'attributeValueName': instance.attributeValueName,
};
