// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mobile_survey_response_data.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$MobileSurveyResponseDataCWProxy {
  MobileSurveyResponseData messages(List<MobileSurveyMessage> messages);

  MobileSurveyResponseData products(List<MobileSurveyProduct> products);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `MobileSurveyResponseData(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// MobileSurveyResponseData(...).copyWith(id: 12, name: "My name")
  /// ```
  MobileSurveyResponseData call({
    List<MobileSurveyMessage> messages,
    List<MobileSurveyProduct> products,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfMobileSurveyResponseData.copyWith(...)` or call `instanceOfMobileSurveyResponseData.copyWith.fieldName(value)` for a single field.
class _$MobileSurveyResponseDataCWProxyImpl
    implements _$MobileSurveyResponseDataCWProxy {
  const _$MobileSurveyResponseDataCWProxyImpl(this._value);

  final MobileSurveyResponseData _value;

  @override
  MobileSurveyResponseData messages(List<MobileSurveyMessage> messages) =>
      call(messages: messages);

  @override
  MobileSurveyResponseData products(List<MobileSurveyProduct> products) =>
      call(products: products);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `MobileSurveyResponseData(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// MobileSurveyResponseData(...).copyWith(id: 12, name: "My name")
  /// ```
  MobileSurveyResponseData call({
    Object? messages = const $CopyWithPlaceholder(),
    Object? products = const $CopyWithPlaceholder(),
  }) {
    return MobileSurveyResponseData(
      messages: messages == const $CopyWithPlaceholder() || messages == null
          ? _value.messages
          // ignore: cast_nullable_to_non_nullable
          : messages as List<MobileSurveyMessage>,
      products: products == const $CopyWithPlaceholder() || products == null
          ? _value.products
          // ignore: cast_nullable_to_non_nullable
          : products as List<MobileSurveyProduct>,
    );
  }
}

extension $MobileSurveyResponseDataCopyWith on MobileSurveyResponseData {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfMobileSurveyResponseData.copyWith(...)` or `instanceOfMobileSurveyResponseData.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$MobileSurveyResponseDataCWProxy get copyWith =>
      _$MobileSurveyResponseDataCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MobileSurveyResponseData _$MobileSurveyResponseDataFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('MobileSurveyResponseData', json, ($checkedConvert) {
  $checkKeys(json, requiredKeys: const ['messages', 'products']);
  final val = MobileSurveyResponseData(
    messages: $checkedConvert(
      'messages',
      (v) => (v as List<dynamic>)
          .map((e) => MobileSurveyMessage.fromJson(e as Map<String, dynamic>))
          .toList(),
    ),
    products: $checkedConvert(
      'products',
      (v) => (v as List<dynamic>)
          .map((e) => MobileSurveyProduct.fromJson(e as Map<String, dynamic>))
          .toList(),
    ),
  );
  return val;
});

Map<String, dynamic> _$MobileSurveyResponseDataToJson(
  MobileSurveyResponseData instance,
) => <String, dynamic>{
  'messages': instance.messages.map((e) => e.toJson()).toList(),
  'products': instance.products.map((e) => e.toJson()).toList(),
};
