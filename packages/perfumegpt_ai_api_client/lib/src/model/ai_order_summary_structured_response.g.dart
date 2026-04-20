// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ai_order_summary_structured_response.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$AIOrderSummaryStructuredResponseCWProxy {
  AIOrderSummaryStructuredResponse summary(String summary);

  AIOrderSummaryStructuredResponse userId(String userId);

  AIOrderSummaryStructuredResponse generatedAt(DateTime generatedAt);

  AIOrderSummaryStructuredResponse metadata(AIResponseMetadata? metadata);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `AIOrderSummaryStructuredResponse(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// AIOrderSummaryStructuredResponse(...).copyWith(id: 12, name: "My name")
  /// ```
  AIOrderSummaryStructuredResponse call({
    String summary,
    String userId,
    DateTime generatedAt,
    AIResponseMetadata? metadata,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfAIOrderSummaryStructuredResponse.copyWith(...)` or call `instanceOfAIOrderSummaryStructuredResponse.copyWith.fieldName(value)` for a single field.
class _$AIOrderSummaryStructuredResponseCWProxyImpl
    implements _$AIOrderSummaryStructuredResponseCWProxy {
  const _$AIOrderSummaryStructuredResponseCWProxyImpl(this._value);

  final AIOrderSummaryStructuredResponse _value;

  @override
  AIOrderSummaryStructuredResponse summary(String summary) =>
      call(summary: summary);

  @override
  AIOrderSummaryStructuredResponse userId(String userId) =>
      call(userId: userId);

  @override
  AIOrderSummaryStructuredResponse generatedAt(DateTime generatedAt) =>
      call(generatedAt: generatedAt);

  @override
  AIOrderSummaryStructuredResponse metadata(AIResponseMetadata? metadata) =>
      call(metadata: metadata);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `AIOrderSummaryStructuredResponse(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// AIOrderSummaryStructuredResponse(...).copyWith(id: 12, name: "My name")
  /// ```
  AIOrderSummaryStructuredResponse call({
    Object? summary = const $CopyWithPlaceholder(),
    Object? userId = const $CopyWithPlaceholder(),
    Object? generatedAt = const $CopyWithPlaceholder(),
    Object? metadata = const $CopyWithPlaceholder(),
  }) {
    return AIOrderSummaryStructuredResponse(
      summary: summary == const $CopyWithPlaceholder() || summary == null
          ? _value.summary
          // ignore: cast_nullable_to_non_nullable
          : summary as String,
      userId: userId == const $CopyWithPlaceholder() || userId == null
          ? _value.userId
          // ignore: cast_nullable_to_non_nullable
          : userId as String,
      generatedAt:
          generatedAt == const $CopyWithPlaceholder() || generatedAt == null
          ? _value.generatedAt
          // ignore: cast_nullable_to_non_nullable
          : generatedAt as DateTime,
      metadata: metadata == const $CopyWithPlaceholder()
          ? _value.metadata
          // ignore: cast_nullable_to_non_nullable
          : metadata as AIResponseMetadata?,
    );
  }
}

extension $AIOrderSummaryStructuredResponseCopyWith
    on AIOrderSummaryStructuredResponse {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfAIOrderSummaryStructuredResponse.copyWith(...)` or `instanceOfAIOrderSummaryStructuredResponse.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$AIOrderSummaryStructuredResponseCWProxy get copyWith =>
      _$AIOrderSummaryStructuredResponseCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AIOrderSummaryStructuredResponse _$AIOrderSummaryStructuredResponseFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('AIOrderSummaryStructuredResponse', json, (
  $checkedConvert,
) {
  $checkKeys(json, requiredKeys: const ['summary', 'userId', 'generatedAt']);
  final val = AIOrderSummaryStructuredResponse(
    summary: $checkedConvert('summary', (v) => v as String),
    userId: $checkedConvert('userId', (v) => v as String),
    generatedAt: $checkedConvert(
      'generatedAt',
      (v) => DateTime.parse(v as String),
    ),
    metadata: $checkedConvert(
      'metadata',
      (v) => v == null
          ? null
          : AIResponseMetadata.fromJson(v as Map<String, dynamic>),
    ),
  );
  return val;
});

Map<String, dynamic> _$AIOrderSummaryStructuredResponseToJson(
  AIOrderSummaryStructuredResponse instance,
) => <String, dynamic>{
  'summary': instance.summary,
  'userId': instance.userId,
  'generatedAt': instance.generatedAt.toIso8601String(),
  'metadata': ?instance.metadata?.toJson(),
};
