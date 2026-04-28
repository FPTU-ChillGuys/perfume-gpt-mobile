// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'conversation_output_dto.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$ConversationOutputDtoCWProxy {
  ConversationOutputDto message(String message);

  ConversationOutputDto products(List<ProductCardOutputItemDto>? products);

  ConversationOutputDto productTemp(List<ProductTempItemDto>? productTemp);

  ConversationOutputDto suggestedQuestions(List<String> suggestedQuestions);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `ConversationOutputDto(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// ConversationOutputDto(...).copyWith(id: 12, name: "My name")
  /// ```
  ConversationOutputDto call({
    String message,
    List<ProductCardOutputItemDto>? products,
    List<ProductTempItemDto>? productTemp,
    List<String> suggestedQuestions,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfConversationOutputDto.copyWith(...)` or call `instanceOfConversationOutputDto.copyWith.fieldName(value)` for a single field.
class _$ConversationOutputDtoCWProxyImpl
    implements _$ConversationOutputDtoCWProxy {
  const _$ConversationOutputDtoCWProxyImpl(this._value);

  final ConversationOutputDto _value;

  @override
  ConversationOutputDto message(String message) => call(message: message);

  @override
  ConversationOutputDto products(List<ProductCardOutputItemDto>? products) =>
      call(products: products);

  @override
  ConversationOutputDto productTemp(List<ProductTempItemDto>? productTemp) =>
      call(productTemp: productTemp);

  @override
  ConversationOutputDto suggestedQuestions(List<String> suggestedQuestions) =>
      call(suggestedQuestions: suggestedQuestions);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `ConversationOutputDto(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// ConversationOutputDto(...).copyWith(id: 12, name: "My name")
  /// ```
  ConversationOutputDto call({
    Object? message = const $CopyWithPlaceholder(),
    Object? products = const $CopyWithPlaceholder(),
    Object? productTemp = const $CopyWithPlaceholder(),
    Object? suggestedQuestions = const $CopyWithPlaceholder(),
  }) {
    return ConversationOutputDto(
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

extension $ConversationOutputDtoCopyWith on ConversationOutputDto {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfConversationOutputDto.copyWith(...)` or `instanceOfConversationOutputDto.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$ConversationOutputDtoCWProxy get copyWith =>
      _$ConversationOutputDtoCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ConversationOutputDto _$ConversationOutputDtoFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('ConversationOutputDto', json, ($checkedConvert) {
  $checkKeys(json, requiredKeys: const ['message', 'suggestedQuestions']);
  final val = ConversationOutputDto(
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

Map<String, dynamic> _$ConversationOutputDtoToJson(
  ConversationOutputDto instance,
) => <String, dynamic>{
  'message': instance.message,
  'products': ?instance.products?.map((e) => e.toJson()).toList(),
  'productTemp': ?instance.productTemp?.map((e) => e.toJson()).toList(),
  'suggestedQuestions': instance.suggestedQuestions,
};
