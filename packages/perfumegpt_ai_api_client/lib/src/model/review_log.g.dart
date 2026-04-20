// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'review_log.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$ReviewLogCWProxy {
  ReviewLog id(String id);

  ReviewLog createdAt(DateTime createdAt);

  ReviewLog updatedAt(DateTime updatedAt);

  ReviewLog isActive(bool isActive);

  ReviewLog typeReview(String typeReview);

  ReviewLog variantId(String variantId);

  ReviewLog reviewLog(String reviewLog);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `ReviewLog(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// ReviewLog(...).copyWith(id: 12, name: "My name")
  /// ```
  ReviewLog call({
    String id,
    DateTime createdAt,
    DateTime updatedAt,
    bool isActive,
    String typeReview,
    String variantId,
    String reviewLog,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfReviewLog.copyWith(...)` or call `instanceOfReviewLog.copyWith.fieldName(value)` for a single field.
class _$ReviewLogCWProxyImpl implements _$ReviewLogCWProxy {
  const _$ReviewLogCWProxyImpl(this._value);

  final ReviewLog _value;

  @override
  ReviewLog id(String id) => call(id: id);

  @override
  ReviewLog createdAt(DateTime createdAt) => call(createdAt: createdAt);

  @override
  ReviewLog updatedAt(DateTime updatedAt) => call(updatedAt: updatedAt);

  @override
  ReviewLog isActive(bool isActive) => call(isActive: isActive);

  @override
  ReviewLog typeReview(String typeReview) => call(typeReview: typeReview);

  @override
  ReviewLog variantId(String variantId) => call(variantId: variantId);

  @override
  ReviewLog reviewLog(String reviewLog) => call(reviewLog: reviewLog);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `ReviewLog(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// ReviewLog(...).copyWith(id: 12, name: "My name")
  /// ```
  ReviewLog call({
    Object? id = const $CopyWithPlaceholder(),
    Object? createdAt = const $CopyWithPlaceholder(),
    Object? updatedAt = const $CopyWithPlaceholder(),
    Object? isActive = const $CopyWithPlaceholder(),
    Object? typeReview = const $CopyWithPlaceholder(),
    Object? variantId = const $CopyWithPlaceholder(),
    Object? reviewLog = const $CopyWithPlaceholder(),
  }) {
    return ReviewLog(
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
      typeReview:
          typeReview == const $CopyWithPlaceholder() || typeReview == null
          ? _value.typeReview
          // ignore: cast_nullable_to_non_nullable
          : typeReview as String,
      variantId: variantId == const $CopyWithPlaceholder() || variantId == null
          ? _value.variantId
          // ignore: cast_nullable_to_non_nullable
          : variantId as String,
      reviewLog: reviewLog == const $CopyWithPlaceholder() || reviewLog == null
          ? _value.reviewLog
          // ignore: cast_nullable_to_non_nullable
          : reviewLog as String,
    );
  }
}

extension $ReviewLogCopyWith on ReviewLog {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfReviewLog.copyWith(...)` or `instanceOfReviewLog.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$ReviewLogCWProxy get copyWith => _$ReviewLogCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ReviewLog _$ReviewLogFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('ReviewLog', json, ($checkedConvert) {
  $checkKeys(
    json,
    requiredKeys: const [
      'id',
      'createdAt',
      'updatedAt',
      'isActive',
      'typeReview',
      'variantId',
      'reviewLog',
    ],
  );
  final val = ReviewLog(
    id: $checkedConvert('id', (v) => v as String),
    createdAt: $checkedConvert('createdAt', (v) => DateTime.parse(v as String)),
    updatedAt: $checkedConvert('updatedAt', (v) => DateTime.parse(v as String)),
    isActive: $checkedConvert('isActive', (v) => v as bool),
    typeReview: $checkedConvert('typeReview', (v) => v as String),
    variantId: $checkedConvert('variantId', (v) => v as String),
    reviewLog: $checkedConvert('reviewLog', (v) => v as String),
  );
  return val;
});

Map<String, dynamic> _$ReviewLogToJson(ReviewLog instance) => <String, dynamic>{
  'id': instance.id,
  'createdAt': instance.createdAt.toIso8601String(),
  'updatedAt': instance.updatedAt.toIso8601String(),
  'isActive': instance.isActive,
  'typeReview': instance.typeReview,
  'variantId': instance.variantId,
  'reviewLog': instance.reviewLog,
};
