// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mobile_survey_message.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$MobileSurveyMessageCWProxy {
  MobileSurveyMessage message(String message);

  MobileSurveyMessage products(List<MobileSurveyProduct> products);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `MobileSurveyMessage(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// MobileSurveyMessage(...).copyWith(id: 12, name: "My name")
  /// ```
  MobileSurveyMessage call({
    String message,
    List<MobileSurveyProduct> products,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfMobileSurveyMessage.copyWith(...)` or call `instanceOfMobileSurveyMessage.copyWith.fieldName(value)` for a single field.
class _$MobileSurveyMessageCWProxyImpl implements _$MobileSurveyMessageCWProxy {
  const _$MobileSurveyMessageCWProxyImpl(this._value);

  final MobileSurveyMessage _value;

  @override
  MobileSurveyMessage message(String message) => call(message: message);

  @override
  MobileSurveyMessage products(List<MobileSurveyProduct> products) =>
      call(products: products);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `MobileSurveyMessage(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// MobileSurveyMessage(...).copyWith(id: 12, name: "My name")
  /// ```
  MobileSurveyMessage call({
    Object? message = const $CopyWithPlaceholder(),
    Object? products = const $CopyWithPlaceholder(),
  }) {
    return MobileSurveyMessage(
      message: message == const $CopyWithPlaceholder() || message == null
          ? _value.message
          // ignore: cast_nullable_to_non_nullable
          : message as String,
      products: products == const $CopyWithPlaceholder() || products == null
          ? _value.products
          // ignore: cast_nullable_to_non_nullable
          : products as List<MobileSurveyProduct>,
    );
  }
}

extension $MobileSurveyMessageCopyWith on MobileSurveyMessage {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfMobileSurveyMessage.copyWith(...)` or `instanceOfMobileSurveyMessage.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$MobileSurveyMessageCWProxy get copyWith =>
      _$MobileSurveyMessageCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MobileSurveyMessage _$MobileSurveyMessageFromJson(Map<String, dynamic> json) =>
    $checkedCreate('MobileSurveyMessage', json, ($checkedConvert) {
      $checkKeys(json, requiredKeys: const ['message', 'products']);
      final val = MobileSurveyMessage(
        message: $checkedConvert('message', (v) => v as String),
        products: $checkedConvert(
          'products',
          (v) => (v as List<dynamic>)
              .map(
                (e) => MobileSurveyProduct.fromJson(e as Map<String, dynamic>),
              )
              .toList(),
        ),
      );
      return val;
    });

Map<String, dynamic> _$MobileSurveyMessageToJson(
  MobileSurveyMessage instance,
) => <String, dynamic>{
  'message': instance.message,
  'products': instance.products.map((e) => e.toJson()).toList(),
};
