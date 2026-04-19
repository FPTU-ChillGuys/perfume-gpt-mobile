// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ai_acceptance.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$AIAcceptanceCWProxy {
  AIAcceptance id(String id);

  AIAcceptance createdAt(DateTime createdAt);

  AIAcceptance updatedAt(DateTime updatedAt);

  AIAcceptance isActive(bool isActive);

  AIAcceptance responseId(Object? responseId);

  AIAcceptance contextType(Object? contextType);

  AIAcceptance sourceRefId(Object? sourceRefId);

  AIAcceptance productIdsJson(Object? productIdsJson);

  AIAcceptance metadataJson(Object? metadataJson);

  AIAcceptance visibleAfterAt(Object? visibleAfterAt);

  AIAcceptance clickedAt(Object? clickedAt);

  AIAcceptance isAccepted(bool isAccepted);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `AIAcceptance(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// AIAcceptance(...).copyWith(id: 12, name: "My name")
  /// ```
  AIAcceptance call({
    String id,
    DateTime createdAt,
    DateTime updatedAt,
    bool isActive,
    Object? responseId,
    Object? contextType,
    Object? sourceRefId,
    Object? productIdsJson,
    Object? metadataJson,
    Object? visibleAfterAt,
    Object? clickedAt,
    bool isAccepted,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfAIAcceptance.copyWith(...)` or call `instanceOfAIAcceptance.copyWith.fieldName(value)` for a single field.
class _$AIAcceptanceCWProxyImpl implements _$AIAcceptanceCWProxy {
  const _$AIAcceptanceCWProxyImpl(this._value);

  final AIAcceptance _value;

  @override
  AIAcceptance id(String id) => call(id: id);

  @override
  AIAcceptance createdAt(DateTime createdAt) => call(createdAt: createdAt);

  @override
  AIAcceptance updatedAt(DateTime updatedAt) => call(updatedAt: updatedAt);

  @override
  AIAcceptance isActive(bool isActive) => call(isActive: isActive);

  @override
  AIAcceptance responseId(Object? responseId) => call(responseId: responseId);

  @override
  AIAcceptance contextType(Object? contextType) =>
      call(contextType: contextType);

  @override
  AIAcceptance sourceRefId(Object? sourceRefId) =>
      call(sourceRefId: sourceRefId);

  @override
  AIAcceptance productIdsJson(Object? productIdsJson) =>
      call(productIdsJson: productIdsJson);

  @override
  AIAcceptance metadataJson(Object? metadataJson) =>
      call(metadataJson: metadataJson);

  @override
  AIAcceptance visibleAfterAt(Object? visibleAfterAt) =>
      call(visibleAfterAt: visibleAfterAt);

  @override
  AIAcceptance clickedAt(Object? clickedAt) => call(clickedAt: clickedAt);

  @override
  AIAcceptance isAccepted(bool isAccepted) => call(isAccepted: isAccepted);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `AIAcceptance(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// AIAcceptance(...).copyWith(id: 12, name: "My name")
  /// ```
  AIAcceptance call({
    Object? id = const $CopyWithPlaceholder(),
    Object? createdAt = const $CopyWithPlaceholder(),
    Object? updatedAt = const $CopyWithPlaceholder(),
    Object? isActive = const $CopyWithPlaceholder(),
    Object? responseId = const $CopyWithPlaceholder(),
    Object? contextType = const $CopyWithPlaceholder(),
    Object? sourceRefId = const $CopyWithPlaceholder(),
    Object? productIdsJson = const $CopyWithPlaceholder(),
    Object? metadataJson = const $CopyWithPlaceholder(),
    Object? visibleAfterAt = const $CopyWithPlaceholder(),
    Object? clickedAt = const $CopyWithPlaceholder(),
    Object? isAccepted = const $CopyWithPlaceholder(),
  }) {
    return AIAcceptance(
      id: id == const $CopyWithPlaceholder() || id == null
          ? _value.id
          // ignore: cast_nullable_to_non_nullable
          : id as String,
      createdAt: createdAt == const $CopyWithPlaceholder() || createdAt == null
          ? _value.createdAt
          // ignore: cast_nullable_to_non_nullable
          : createdAt as DateTime,
      updatedAt: updatedAt == const $CopyWithPlaceholder() || updatedAt == null
          ? _value.updatedAt
          // ignore: cast_nullable_to_non_nullable
          : updatedAt as DateTime,
      isActive: isActive == const $CopyWithPlaceholder() || isActive == null
          ? _value.isActive
          // ignore: cast_nullable_to_non_nullable
          : isActive as bool,
      responseId: responseId == const $CopyWithPlaceholder()
          ? _value.responseId
          // ignore: cast_nullable_to_non_nullable
          : responseId as Object?,
      contextType: contextType == const $CopyWithPlaceholder()
          ? _value.contextType
          // ignore: cast_nullable_to_non_nullable
          : contextType as Object?,
      sourceRefId: sourceRefId == const $CopyWithPlaceholder()
          ? _value.sourceRefId
          // ignore: cast_nullable_to_non_nullable
          : sourceRefId as Object?,
      productIdsJson: productIdsJson == const $CopyWithPlaceholder()
          ? _value.productIdsJson
          // ignore: cast_nullable_to_non_nullable
          : productIdsJson as Object?,
      metadataJson: metadataJson == const $CopyWithPlaceholder()
          ? _value.metadataJson
          // ignore: cast_nullable_to_non_nullable
          : metadataJson as Object?,
      visibleAfterAt: visibleAfterAt == const $CopyWithPlaceholder()
          ? _value.visibleAfterAt
          // ignore: cast_nullable_to_non_nullable
          : visibleAfterAt as Object?,
      clickedAt: clickedAt == const $CopyWithPlaceholder()
          ? _value.clickedAt
          // ignore: cast_nullable_to_non_nullable
          : clickedAt as Object?,
      isAccepted:
          isAccepted == const $CopyWithPlaceholder() || isAccepted == null
          ? _value.isAccepted
          // ignore: cast_nullable_to_non_nullable
          : isAccepted as bool,
    );
  }
}

extension $AIAcceptanceCopyWith on AIAcceptance {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfAIAcceptance.copyWith(...)` or `instanceOfAIAcceptance.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$AIAcceptanceCWProxy get copyWith => _$AIAcceptanceCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AIAcceptance _$AIAcceptanceFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('AIAcceptance', json, ($checkedConvert) {
  $checkKeys(
    json,
    requiredKeys: const [
      'id',
      'createdAt',
      'updatedAt',
      'isActive',
      'responseId',
      'contextType',
      'sourceRefId',
      'productIdsJson',
      'metadataJson',
      'visibleAfterAt',
      'clickedAt',
      'isAccepted',
    ],
  );
  final val = AIAcceptance(
    id: $checkedConvert('id', (v) => v as String),
    createdAt: $checkedConvert('createdAt', (v) => DateTime.parse(v as String)),
    updatedAt: $checkedConvert('updatedAt', (v) => DateTime.parse(v as String)),
    isActive: $checkedConvert('isActive', (v) => v as bool),
    responseId: $checkedConvert('responseId', (v) => v),
    contextType: $checkedConvert('contextType', (v) => v),
    sourceRefId: $checkedConvert('sourceRefId', (v) => v),
    productIdsJson: $checkedConvert('productIdsJson', (v) => v),
    metadataJson: $checkedConvert('metadataJson', (v) => v),
    visibleAfterAt: $checkedConvert('visibleAfterAt', (v) => v),
    clickedAt: $checkedConvert('clickedAt', (v) => v),
    isAccepted: $checkedConvert('isAccepted', (v) => v as bool),
  );
  return val;
});

Map<String, dynamic> _$AIAcceptanceToJson(AIAcceptance instance) =>
    <String, dynamic>{
      'id': instance.id,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
      'isActive': instance.isActive,
      'responseId': instance.responseId,
      'contextType': instance.contextType,
      'sourceRefId': instance.sourceRefId,
      'productIdsJson': instance.productIdsJson,
      'metadataJson': instance.metadataJson,
      'visibleAfterAt': instance.visibleAfterAt,
      'clickedAt': instance.clickedAt,
      'isAccepted': instance.isAccepted,
    };
