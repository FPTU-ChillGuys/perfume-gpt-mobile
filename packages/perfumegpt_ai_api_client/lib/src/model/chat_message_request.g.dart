// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_message_request.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$ChatMessageRequestCWProxy {
  ChatMessageRequest sender(ChatMessageRequestSenderEnum sender);

  ChatMessageRequest message(String message);

  ChatMessageRequest products(List<ProductCardOutputItemDto>? products);

  ChatMessageRequest productTemp(List<ProductTempItemDto>? productTemp);

  ChatMessageRequest suggestedQuestions(List<String>? suggestedQuestions);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `ChatMessageRequest(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// ChatMessageRequest(...).copyWith(id: 12, name: "My name")
  /// ```
  ChatMessageRequest call({
    ChatMessageRequestSenderEnum sender,
    String message,
    List<ProductCardOutputItemDto>? products,
    List<ProductTempItemDto>? productTemp,
    List<String>? suggestedQuestions,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfChatMessageRequest.copyWith(...)` or call `instanceOfChatMessageRequest.copyWith.fieldName(value)` for a single field.
class _$ChatMessageRequestCWProxyImpl implements _$ChatMessageRequestCWProxy {
  const _$ChatMessageRequestCWProxyImpl(this._value);

  final ChatMessageRequest _value;

  @override
  ChatMessageRequest sender(ChatMessageRequestSenderEnum sender) =>
      call(sender: sender);

  @override
  ChatMessageRequest message(String message) => call(message: message);

  @override
  ChatMessageRequest products(List<ProductCardOutputItemDto>? products) =>
      call(products: products);

  @override
  ChatMessageRequest productTemp(List<ProductTempItemDto>? productTemp) =>
      call(productTemp: productTemp);

  @override
  ChatMessageRequest suggestedQuestions(List<String>? suggestedQuestions) =>
      call(suggestedQuestions: suggestedQuestions);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `ChatMessageRequest(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// ChatMessageRequest(...).copyWith(id: 12, name: "My name")
  /// ```
  ChatMessageRequest call({
    Object? sender = const $CopyWithPlaceholder(),
    Object? message = const $CopyWithPlaceholder(),
    Object? products = const $CopyWithPlaceholder(),
    Object? productTemp = const $CopyWithPlaceholder(),
    Object? suggestedQuestions = const $CopyWithPlaceholder(),
  }) {
    return ChatMessageRequest(
      sender: sender == const $CopyWithPlaceholder() || sender == null
          ? _value.sender
          // ignore: cast_nullable_to_non_nullable
          : sender as ChatMessageRequestSenderEnum,
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
      suggestedQuestions: suggestedQuestions == const $CopyWithPlaceholder()
          ? _value.suggestedQuestions
          // ignore: cast_nullable_to_non_nullable
          : suggestedQuestions as List<String>?,
    );
  }
}

extension $ChatMessageRequestCopyWith on ChatMessageRequest {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfChatMessageRequest.copyWith(...)` or `instanceOfChatMessageRequest.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$ChatMessageRequestCWProxy get copyWith =>
      _$ChatMessageRequestCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ChatMessageRequest _$ChatMessageRequestFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('ChatMessageRequest', json, ($checkedConvert) {
  $checkKeys(json, requiredKeys: const ['sender', 'message']);
  final val = ChatMessageRequest(
    sender: $checkedConvert(
      'sender',
      (v) => $enumDecode(_$ChatMessageRequestSenderEnumEnumMap, v),
    ),
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
      (v) => (v as List<dynamic>?)?.map((e) => e as String).toList(),
    ),
  );
  return val;
});

Map<String, dynamic> _$ChatMessageRequestToJson(ChatMessageRequest instance) =>
    <String, dynamic>{
      'sender': _$ChatMessageRequestSenderEnumEnumMap[instance.sender]!,
      'message': instance.message,
      'products': ?instance.products?.map((e) => e.toJson()).toList(),
      'productTemp': ?instance.productTemp?.map((e) => e.toJson()).toList(),
      'suggestedQuestions': ?instance.suggestedQuestions,
    };

const _$ChatMessageRequestSenderEnumEnumMap = {
  ChatMessageRequestSenderEnum.user: 'user',
  ChatMessageRequestSenderEnum.assistant: 'assistant',
};
