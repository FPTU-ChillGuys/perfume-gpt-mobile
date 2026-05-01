// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'message_response_message.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$MessageResponseMessageCWProxy {
  MessageResponseMessage message(String message);

  MessageResponseMessage products(List<ProductCardOutputItemDto>? products);

  MessageResponseMessage productTemp(List<ProductTempItemDto>? productTemp);

  MessageResponseMessage suggestedQuestions(List<String> suggestedQuestions);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `MessageResponseMessage(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// MessageResponseMessage(...).copyWith(id: 12, name: "My name")
  /// ```
  MessageResponseMessage call({
    String message,
    List<ProductCardOutputItemDto>? products,
    List<ProductTempItemDto>? productTemp,
    List<String> suggestedQuestions,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfMessageResponseMessage.copyWith(...)` or call `instanceOfMessageResponseMessage.copyWith.fieldName(value)` for a single field.
class _$MessageResponseMessageCWProxyImpl
    implements _$MessageResponseMessageCWProxy {
  const _$MessageResponseMessageCWProxyImpl(this._value);

  final MessageResponseMessage _value;

  @override
  MessageResponseMessage message(String message) => call(message: message);

  @override
  MessageResponseMessage products(List<ProductCardOutputItemDto>? products) =>
      call(products: products);

  @override
  MessageResponseMessage productTemp(List<ProductTempItemDto>? productTemp) =>
      call(productTemp: productTemp);

  @override
  MessageResponseMessage suggestedQuestions(List<String> suggestedQuestions) =>
      call(suggestedQuestions: suggestedQuestions);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `MessageResponseMessage(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// MessageResponseMessage(...).copyWith(id: 12, name: "My name")
  /// ```
  MessageResponseMessage call({
    Object? message = const $CopyWithPlaceholder(),
    Object? products = const $CopyWithPlaceholder(),
    Object? productTemp = const $CopyWithPlaceholder(),
    Object? suggestedQuestions = const $CopyWithPlaceholder(),
  }) {
    return MessageResponseMessage(
      message: message == const $CopyWithPlaceholder() || message == null
          ? _value.message
          // ignore: cast_nullable_to_non_nullable
          : message as String,
      products: products == const $CopyWithPlaceholder()
          ? _value.products
          // ignore: cast_nullable_to_non_nullable
          : products as List<ProductCardOutputItemDto>?,
      productTemp: productTemp == const $CopyWithPlaceholder()
          ? _value.productTemp
          // ignore: cast_nullable_to_non_nullable
          : productTemp as List<ProductTempItemDto>?,
      suggestedQuestions:
          suggestedQuestions == const $CopyWithPlaceholder() ||
              suggestedQuestions == null
          ? _value.suggestedQuestions
          // ignore: cast_nullable_to_non_nullable
          : suggestedQuestions as List<String>,
    );
  }
}

extension $MessageResponseMessageCopyWith on MessageResponseMessage {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfMessageResponseMessage.copyWith(...)` or `instanceOfMessageResponseMessage.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$MessageResponseMessageCWProxy get copyWith =>
      _$MessageResponseMessageCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MessageResponseMessage _$MessageResponseMessageFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('MessageResponseMessage', json, ($checkedConvert) {
  $checkKeys(json, requiredKeys: const ['message', 'suggestedQuestions']);
  final val = MessageResponseMessage(
    message: $checkedConvert('message', (v) => v as String),
    products: $checkedConvert(
      'products',
      (v) => (v as List<dynamic>?)
          ?.map(
            (e) => ProductCardOutputItemDto.fromJson(e as Map<String, dynamic>),
          )
          .toList(),
    ),
    productTemp: $checkedConvert(
      'productTemp',
      (v) => (v as List<dynamic>?)
          ?.map((e) => ProductTempItemDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    ),
    suggestedQuestions: $checkedConvert(
      'suggestedQuestions',
      (v) => (v as List<dynamic>).map((e) => e as String).toList(),
    ),
  );
  return val;
});

Map<String, dynamic> _$MessageResponseMessageToJson(
  MessageResponseMessage instance,
) => <String, dynamic>{
  'message': instance.message,
  'products': ?instance.products?.map((e) => e.toJson()).toList(),
  'productTemp': ?instance.productTemp?.map((e) => e.toJson()).toList(),
  'suggestedQuestions': instance.suggestedQuestions,
};
