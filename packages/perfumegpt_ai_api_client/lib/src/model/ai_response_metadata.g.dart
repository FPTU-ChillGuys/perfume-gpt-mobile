// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ai_response_metadata.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$AIResponseMetadataCWProxy {
  AIResponseMetadata processingTimeMs(num processingTimeMs);

  AIResponseMetadata inputTokenEstimate(num? inputTokenEstimate);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `AIResponseMetadata(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// AIResponseMetadata(...).copyWith(id: 12, name: "My name")
  /// ```
  AIResponseMetadata call({num processingTimeMs, num? inputTokenEstimate});
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfAIResponseMetadata.copyWith(...)` or call `instanceOfAIResponseMetadata.copyWith.fieldName(value)` for a single field.
class _$AIResponseMetadataCWProxyImpl implements _$AIResponseMetadataCWProxy {
  const _$AIResponseMetadataCWProxyImpl(this._value);

  final AIResponseMetadata _value;

  @override
  AIResponseMetadata processingTimeMs(num processingTimeMs) =>
      call(processingTimeMs: processingTimeMs);

  @override
  AIResponseMetadata inputTokenEstimate(num? inputTokenEstimate) =>
      call(inputTokenEstimate: inputTokenEstimate);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `AIResponseMetadata(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// AIResponseMetadata(...).copyWith(id: 12, name: "My name")
  /// ```
  AIResponseMetadata call({
    Object? processingTimeMs = const $CopyWithPlaceholder(),
    Object? inputTokenEstimate = const $CopyWithPlaceholder(),
  }) {
    return AIResponseMetadata(
      processingTimeMs:
          processingTimeMs == const $CopyWithPlaceholder() ||
              processingTimeMs == null
          ? _value.processingTimeMs
          // ignore: cast_nullable_to_non_nullable
          : processingTimeMs as num,
      inputTokenEstimate: inputTokenEstimate == const $CopyWithPlaceholder()
          ? _value.inputTokenEstimate
          // ignore: cast_nullable_to_non_nullable
          : inputTokenEstimate as num?,
    );
  }
}

extension $AIResponseMetadataCopyWith on AIResponseMetadata {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfAIResponseMetadata.copyWith(...)` or `instanceOfAIResponseMetadata.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$AIResponseMetadataCWProxy get copyWith =>
      _$AIResponseMetadataCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AIResponseMetadata _$AIResponseMetadataFromJson(Map<String, dynamic> json) =>
    $checkedCreate('AIResponseMetadata', json, ($checkedConvert) {
      $checkKeys(json, requiredKeys: const ['processingTimeMs']);
      final val = AIResponseMetadata(
        processingTimeMs: $checkedConvert('processingTimeMs', (v) => v as num),
        inputTokenEstimate: $checkedConvert(
          'inputTokenEstimate',
          (v) => v as num?,
        ),
      );
      return val;
    });

Map<String, dynamic> _$AIResponseMetadataToJson(AIResponseMetadata instance) =>
    <String, dynamic>{
      'processingTimeMs': instance.processingTimeMs,
      'inputTokenEstimate': ?instance.inputTokenEstimate,
    };
