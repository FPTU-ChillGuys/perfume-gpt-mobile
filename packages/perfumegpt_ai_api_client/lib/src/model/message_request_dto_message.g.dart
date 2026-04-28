// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'message_request_dto_message.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$MessageRequestDtoMessageCWProxy {
  MessageRequestDtoMessage message(String message);

  MessageRequestDtoMessage products(List<ProductCardOutputItemDto>? products);

  MessageRequestDtoMessage productTemp(List<ProductTempItemDto>? productTemp);

  MessageRequestDtoMessage suggestedQuestions(List<String> suggestedQuestions);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `MessageRequestDtoMessage(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// MessageRequestDtoMessage(...).copyWith(id: 12, name: "My name")
  /// ```
  MessageRequestDtoMessage call({
    String message,
    List<ProductCardOutputItemDto>? products,
    List<ProductTempItemDto>? productTemp,
    List<String> suggestedQuestions,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfMessageRequestDtoMessage.copyWith(...)` or call `instanceOfMessageRequestDtoMessage.copyWith.fieldName(value)` for a single field.
class _$MessageRequestDtoMessageCWProxyImpl
    implements _$MessageRequestDtoMessageCWProxy {
  const _$MessageRequestDtoMessageCWProxyImpl(this._value);

  final MessageRequestDtoMessage _value;

  @override
  MessageRequestDtoMessage message(String message) => call(message: message);

  @override
  MessageRequestDtoMessage products(List<ProductCardOutputItemDto>? products) =>
      call(products: products);

  @override
  MessageRequestDtoMessage productTemp(List<ProductTempItemDto>? productTemp) =>
      call(productTemp: productTemp);

  @override
  MessageRequestDtoMessage suggestedQuestions(
    List<String> suggestedQuestions,
  ) => call(suggestedQuestions: suggestedQuestions);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `MessageRequestDtoMessage(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// MessageRequestDtoMessage(...).copyWith(id: 12, name: "My name")
  /// ```
  MessageRequestDtoMessage call({
    Object? message = const $CopyWithPlaceholder(),
    Object? products = const $CopyWithPlaceholder(),
    Object? productTemp = const $CopyWithPlaceholder(),
    Object? suggestedQuestions = const $CopyWithPlaceholder(),
  }) {
    return MessageRequestDtoMessage(
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

extension $MessageRequestDtoMessageCopyWith on MessageRequestDtoMessage {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfMessageRequestDtoMessage.copyWith(...)` or `instanceOfMessageRequestDtoMessage.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$MessageRequestDtoMessageCWProxy get copyWith =>
      _$MessageRequestDtoMessageCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MessageRequestDtoMessage _$MessageRequestDtoMessageFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('MessageRequestDtoMessage', json, ($checkedConvert) {
  $checkKeys(json, requiredKeys: const ['message', 'suggestedQuestions']);
  final val = MessageRequestDtoMessage(
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

Map<String, dynamic> _$MessageRequestDtoMessageToJson(
  MessageRequestDtoMessage instance,
) => <String, dynamic>{
  'message': instance.message,
  'products': ?instance.products?.map((e) => e.toJson()).toList(),
  'productTemp': ?instance.productTemp?.map((e) => e.toJson()).toList(),
  'suggestedQuestions': instance.suggestedQuestions,
};
