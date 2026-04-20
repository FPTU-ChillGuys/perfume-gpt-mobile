// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ai_review_summary_structured_response.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$AIReviewSummaryStructuredResponseCWProxy {
  AIReviewSummaryStructuredResponse summary(String summary);

  AIReviewSummaryStructuredResponse variantId(String variantId);

  AIReviewSummaryStructuredResponse reviewCount(num reviewCount);

  AIReviewSummaryStructuredResponse generatedAt(DateTime generatedAt);

  AIReviewSummaryStructuredResponse metadata(AIResponseMetadata? metadata);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `AIReviewSummaryStructuredResponse(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// AIReviewSummaryStructuredResponse(...).copyWith(id: 12, name: "My name")
  /// ```
  AIReviewSummaryStructuredResponse call({
    String summary,
    String variantId,
    num reviewCount,
    DateTime generatedAt,
    AIResponseMetadata? metadata,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfAIReviewSummaryStructuredResponse.copyWith(...)` or call `instanceOfAIReviewSummaryStructuredResponse.copyWith.fieldName(value)` for a single field.
class _$AIReviewSummaryStructuredResponseCWProxyImpl
    implements _$AIReviewSummaryStructuredResponseCWProxy {
  const _$AIReviewSummaryStructuredResponseCWProxyImpl(this._value);

  final AIReviewSummaryStructuredResponse _value;

  @override
  AIReviewSummaryStructuredResponse summary(String summary) =>
      call(summary: summary);

  @override
  AIReviewSummaryStructuredResponse variantId(String variantId) =>
      call(variantId: variantId);

  @override
  AIReviewSummaryStructuredResponse reviewCount(num reviewCount) =>
      call(reviewCount: reviewCount);

  @override
  AIReviewSummaryStructuredResponse generatedAt(DateTime generatedAt) =>
      call(generatedAt: generatedAt);

  @override
  AIReviewSummaryStructuredResponse metadata(AIResponseMetadata? metadata) =>
      call(metadata: metadata);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `AIReviewSummaryStructuredResponse(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// AIReviewSummaryStructuredResponse(...).copyWith(id: 12, name: "My name")
  /// ```
  AIReviewSummaryStructuredResponse call({
    Object? summary = const $CopyWithPlaceholder(),
    Object? variantId = const $CopyWithPlaceholder(),
    Object? reviewCount = const $CopyWithPlaceholder(),
    Object? generatedAt = const $CopyWithPlaceholder(),
    Object? metadata = const $CopyWithPlaceholder(),
  }) {
    return AIReviewSummaryStructuredResponse(
      summary: summary == const $CopyWithPlaceholder() || summary == null
          ? _value.summary
          // ignore: cast_nullable_to_non_nullable
          : summary as String,
      variantId: variantId == const $CopyWithPlaceholder() || variantId == null
          ? _value.variantId
          // ignore: cast_nullable_to_non_nullable
          : variantId as String,
      reviewCount:
          reviewCount == const $CopyWithPlaceholder() || reviewCount == null
          ? _value.reviewCount
          // ignore: cast_nullable_to_non_nullable
          : reviewCount as num,
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

extension $AIReviewSummaryStructuredResponseCopyWith
    on AIReviewSummaryStructuredResponse {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfAIReviewSummaryStructuredResponse.copyWith(...)` or `instanceOfAIReviewSummaryStructuredResponse.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$AIReviewSummaryStructuredResponseCWProxy get copyWith =>
      _$AIReviewSummaryStructuredResponseCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AIReviewSummaryStructuredResponse _$AIReviewSummaryStructuredResponseFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('AIReviewSummaryStructuredResponse', json, (
  $checkedConvert,
) {
  $checkKeys(
    json,
    requiredKeys: const ['summary', 'variantId', 'reviewCount', 'generatedAt'],
  );
  final val = AIReviewSummaryStructuredResponse(
    summary: $checkedConvert('summary', (v) => v as String),
    variantId: $checkedConvert('variantId', (v) => v as String),
    reviewCount: $checkedConvert('reviewCount', (v) => v as num),
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

Map<String, dynamic> _$AIReviewSummaryStructuredResponseToJson(
  AIReviewSummaryStructuredResponse instance,
) => <String, dynamic>{
  'summary': instance.summary,
  'variantId': instance.variantId,
  'reviewCount': instance.reviewCount,
  'generatedAt': instance.generatedAt.toIso8601String(),
  'metadata': ?instance.metadata?.toJson(),
};
