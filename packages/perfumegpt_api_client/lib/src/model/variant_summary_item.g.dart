// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'variant_summary_item.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$VariantSummaryItemCWProxy {
  VariantSummaryItem id(String? id);

  VariantSummaryItem displayName(String? displayName);

  VariantSummaryItem concentrationName(String? concentrationName);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `VariantSummaryItem(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// VariantSummaryItem(...).copyWith(id: 12, name: "My name")
  /// ````
  VariantSummaryItem call({
    String? id,
    String? displayName,
    String? concentrationName,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfVariantSummaryItem.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfVariantSummaryItem.copyWith.fieldName(...)`
class _$VariantSummaryItemCWProxyImpl implements _$VariantSummaryItemCWProxy {
  const _$VariantSummaryItemCWProxyImpl(this._value);

  final VariantSummaryItem _value;

  @override
  VariantSummaryItem id(String? id) => this(id: id);

  @override
  VariantSummaryItem displayName(String? displayName) =>
      this(displayName: displayName);

  @override
  VariantSummaryItem concentrationName(String? concentrationName) =>
      this(concentrationName: concentrationName);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `VariantSummaryItem(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// VariantSummaryItem(...).copyWith(id: 12, name: "My name")
  /// ````
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
  /// Returns a callable class that can be used as follows: `instanceOfVariantSummaryItem.copyWith(...)` or like so:`instanceOfVariantSummaryItem.copyWith.fieldName(...)`.
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
