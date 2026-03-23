// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'variant_summary_item.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$VariantSummaryItemCWProxy {
  VariantSummaryItem id(String? id);

  VariantSummaryItem displayName(String? displayName);

  VariantSummaryItem concentrationName(String? concentrationName);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `VariantSummaryItem(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// VariantSummaryItem(...).copyWith(id: 12, name: "My name")
  /// ```
  VariantSummaryItem call({
    String? id,
    String? displayName,
    String? concentrationName,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfVariantSummaryItem.copyWith(...)` or call `instanceOfVariantSummaryItem.copyWith.fieldName(value)` for a single field.
class _$VariantSummaryItemCWProxyImpl implements _$VariantSummaryItemCWProxy {
  const _$VariantSummaryItemCWProxyImpl(this._value);

  final VariantSummaryItem _value;

  @override
  VariantSummaryItem id(String? id) => call(id: id);

  @override
  VariantSummaryItem displayName(String? displayName) =>
      call(displayName: displayName);

  @override
  VariantSummaryItem concentrationName(String? concentrationName) =>
      call(concentrationName: concentrationName);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `VariantSummaryItem(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// VariantSummaryItem(...).copyWith(id: 12, name: "My name")
  /// ```
  VariantSummaryItem call({
    Object? id = const $CopyWithPlaceholder(),
    Object? displayName = const $CopyWithPlaceholder(),
    Object? concentrationName = const $CopyWithPlaceholder(),
  }) {
    return VariantSummaryItem(
      id: id == const $CopyWithPlaceholder()
          ? _value.id
          // ignore: cast_nullable_to_non_nullable
          : id as String?,
      displayName: displayName == const $CopyWithPlaceholder()
          ? _value.displayName
          // ignore: cast_nullable_to_non_nullable
          : displayName as String?,
      concentrationName: concentrationName == const $CopyWithPlaceholder()
          ? _value.concentrationName
          // ignore: cast_nullable_to_non_nullable
          : concentrationName as String?,
    );
  }
}

extension $VariantSummaryItemCopyWith on VariantSummaryItem {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfVariantSummaryItem.copyWith(...)` or `instanceOfVariantSummaryItem.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$VariantSummaryItemCWProxy get copyWith =>
      _$VariantSummaryItemCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VariantSummaryItem _$VariantSummaryItemFromJson(Map<String, dynamic> json) =>
    $checkedCreate('VariantSummaryItem', json, ($checkedConvert) {
      final val = VariantSummaryItem(
        id: $checkedConvert('id', (v) => v as String?),
        displayName: $checkedConvert('displayName', (v) => v as String?),
        concentrationName: $checkedConvert(
          'concentrationName',
          (v) => v as String?,
        ),
      );
      return val;
    });

Map<String, dynamic> _$VariantSummaryItemToJson(VariantSummaryItem instance) =>
    <String, dynamic>{
      'id': ?instance.id,
      'displayName': ?instance.displayName,
      'concentrationName': ?instance.concentrationName,
    };
