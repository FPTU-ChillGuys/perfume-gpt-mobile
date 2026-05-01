// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_message_request_message.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$ChatMessageRequestMessageCWProxy {
  ChatMessageRequestMessage message(String message);

  ChatMessageRequestMessage products(List<ProductCardOutputItemDto>? products);

  ChatMessageRequestMessage productTemp(List<ProductTempItemDto>? productTemp);

  ChatMessageRequestMessage suggestedQuestions(List<String> suggestedQuestions);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `ChatMessageRequestMessage(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// ChatMessageRequestMessage(...).copyWith(id: 12, name: "My name")
  /// ```
  ChatMessageRequestMessage call({
    String message,
    List<ProductCardOutputItemDto>? products,
    List<ProductTempItemDto>? productTemp,
    List<String> suggestedQuestions,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfChatMessageRequestMessage.copyWith(...)` or call `instanceOfChatMessageRequestMessage.copyWith.fieldName(value)` for a single field.
class _$ChatMessageRequestMessageCWProxyImpl
    implements _$ChatMessageRequestMessageCWProxy {
  const _$ChatMessageRequestMessageCWProxyImpl(this._value);

  final ChatMessageRequestMessage _value;

  @override
  ChatMessageRequestMessage message(String message) => call(message: message);

  @override
  ChatMessageRequestMessage products(
    List<ProductCardOutputItemDto>? products,
  ) => call(products: products);

  @override
  ChatMessageRequestMessage productTemp(
    List<ProductTempItemDto>? productTemp,
  ) => call(productTemp: productTemp);

  @override
  ChatMessageRequestMessage suggestedQuestions(
    List<String> suggestedQuestions,
  ) => call(suggestedQuestions: suggestedQuestions);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `ChatMessageRequestMessage(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// ChatMessageRequestMessage(...).copyWith(id: 12, name: "My name")
  /// ```
  ChatMessageRequestMessage call({
    Object? message = const $CopyWithPlaceholder(),
    Object? products = const $CopyWithPlaceholder(),
    Object? productTemp = const $CopyWithPlaceholder(),
    Object? suggestedQuestions = const $CopyWithPlaceholder(),
  }) {
    return ChatMessageRequestMessage(
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

extension $ChatMessageRequestMessageCopyWith on ChatMessageRequestMessage {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfChatMessageRequestMessage.copyWith(...)` or `instanceOfChatMessageRequestMessage.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$ChatMessageRequestMessageCWProxy get copyWith =>
      _$ChatMessageRequestMessageCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ChatMessageRequestMessage _$ChatMessageRequestMessageFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('ChatMessageRequestMessage', json, ($checkedConvert) {
  $checkKeys(json, requiredKeys: const ['message', 'suggestedQuestions']);
  final val = ChatMessageRequestMessage(
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

Map<String, dynamic> _$ChatMessageRequestMessageToJson(
  ChatMessageRequestMessage instance,
) => <String, dynamic>{
  'message': instance.message,
  'products': ?instance.products?.map((e) => e.toJson()).toList(),
  'productTemp': ?instance.productTemp?.map((e) => e.toJson()).toList(),
  'suggestedQuestions': instance.suggestedQuestions,
};
