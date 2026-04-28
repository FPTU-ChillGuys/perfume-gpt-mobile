// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'message_dto_message.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$MessageDtoMessageCWProxy {
  MessageDtoMessage message(String message);

  MessageDtoMessage products(List<ProductCardOutputItemDto>? products);

  MessageDtoMessage productTemp(List<ProductTempItemDto>? productTemp);

  MessageDtoMessage suggestedQuestions(List<String> suggestedQuestions);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `MessageDtoMessage(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// MessageDtoMessage(...).copyWith(id: 12, name: "My name")
  /// ```
  MessageDtoMessage call({
    String message,
    List<ProductCardOutputItemDto>? products,
    List<ProductTempItemDto>? productTemp,
    List<String> suggestedQuestions,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfMessageDtoMessage.copyWith(...)` or call `instanceOfMessageDtoMessage.copyWith.fieldName(value)` for a single field.
class _$MessageDtoMessageCWProxyImpl implements _$MessageDtoMessageCWProxy {
  const _$MessageDtoMessageCWProxyImpl(this._value);

  final MessageDtoMessage _value;

  @override
  MessageDtoMessage message(String message) => call(message: message);

  @override
  MessageDtoMessage products(List<ProductCardOutputItemDto>? products) =>
      call(products: products);

  @override
  MessageDtoMessage productTemp(List<ProductTempItemDto>? productTemp) =>
      call(productTemp: productTemp);

  @override
  MessageDtoMessage suggestedQuestions(List<String> suggestedQuestions) =>
      call(suggestedQuestions: suggestedQuestions);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `MessageDtoMessage(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// MessageDtoMessage(...).copyWith(id: 12, name: "My name")
  /// ```
  MessageDtoMessage call({
    Object? message = const $CopyWithPlaceholder(),
    Object? products = const $CopyWithPlaceholder(),
    Object? productTemp = const $CopyWithPlaceholder(),
    Object? suggestedQuestions = const $CopyWithPlaceholder(),
  }) {
    return MessageDtoMessage(
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

extension $MessageDtoMessageCopyWith on MessageDtoMessage {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfMessageDtoMessage.copyWith(...)` or `instanceOfMessageDtoMessage.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$MessageDtoMessageCWProxy get copyWith =>
      _$MessageDtoMessageCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MessageDtoMessage _$MessageDtoMessageFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('MessageDtoMessage', json, ($checkedConvert) {
  $checkKeys(json, requiredKeys: const ['message', 'suggestedQuestions']);
  final val = MessageDtoMessage(
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

Map<String, dynamic> _$MessageDtoMessageToJson(MessageDtoMessage instance) =>
    <String, dynamic>{
      'message': instance.message,
      'products': ?instance.products?.map((e) => e.toJson()).toList(),
      'productTemp': ?instance.productTemp?.map((e) => e.toJson()).toList(),
      'suggestedQuestions': instance.suggestedQuestions,
    };
