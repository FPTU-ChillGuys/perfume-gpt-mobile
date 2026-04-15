// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ai_inventory_report_structured_response.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$AIInventoryReportStructuredResponseCWProxy {
  AIInventoryReportStructuredResponse report(String report);

  AIInventoryReportStructuredResponse generatedAt(DateTime generatedAt);

  AIInventoryReportStructuredResponse metadata(AIResponseMetadata? metadata);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `AIInventoryReportStructuredResponse(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// AIInventoryReportStructuredResponse(...).copyWith(id: 12, name: "My name")
  /// ```
  AIInventoryReportStructuredResponse call({
    String report,
    DateTime generatedAt,
    AIResponseMetadata? metadata,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfAIInventoryReportStructuredResponse.copyWith(...)` or call `instanceOfAIInventoryReportStructuredResponse.copyWith.fieldName(value)` for a single field.
class _$AIInventoryReportStructuredResponseCWProxyImpl
    implements _$AIInventoryReportStructuredResponseCWProxy {
  const _$AIInventoryReportStructuredResponseCWProxyImpl(this._value);

  final AIInventoryReportStructuredResponse _value;

  @override
  AIInventoryReportStructuredResponse report(String report) =>
      call(report: report);

  @override
  AIInventoryReportStructuredResponse generatedAt(DateTime generatedAt) =>
      call(generatedAt: generatedAt);

  @override
  AIInventoryReportStructuredResponse metadata(AIResponseMetadata? metadata) =>
      call(metadata: metadata);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `AIInventoryReportStructuredResponse(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// AIInventoryReportStructuredResponse(...).copyWith(id: 12, name: "My name")
  /// ```
  AIInventoryReportStructuredResponse call({
    Object? report = const $CopyWithPlaceholder(),
    Object? generatedAt = const $CopyWithPlaceholder(),
    Object? metadata = const $CopyWithPlaceholder(),
  }) {
    return AIInventoryReportStructuredResponse(
      report: report == const $CopyWithPlaceholder() || report == null
          ? _value.report
          // ignore: cast_nullable_to_non_nullable
          : report as String,
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

extension $AIInventoryReportStructuredResponseCopyWith
    on AIInventoryReportStructuredResponse {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfAIInventoryReportStructuredResponse.copyWith(...)` or `instanceOfAIInventoryReportStructuredResponse.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$AIInventoryReportStructuredResponseCWProxy get copyWith =>
      _$AIInventoryReportStructuredResponseCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AIInventoryReportStructuredResponse
_$AIInventoryReportStructuredResponseFromJson(Map<String, dynamic> json) =>
    $checkedCreate('AIInventoryReportStructuredResponse', json, (
      $checkedConvert,
    ) {
      $checkKeys(json, requiredKeys: const ['report', 'generatedAt']);
      final val = AIInventoryReportStructuredResponse(
        report: $checkedConvert('report', (v) => v as String),
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

Map<String, dynamic> _$AIInventoryReportStructuredResponseToJson(
  AIInventoryReportStructuredResponse instance,
) => <String, dynamic>{
  'report': instance.report,
  'generatedAt': instance.generatedAt.toIso8601String(),
  'metadata': ?instance.metadata?.toJson(),
};
