// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'campaign_lookup_item.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$CampaignLookupItemCWProxy {
  CampaignLookupItem id(String? id);

  CampaignLookupItem name(String name);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `CampaignLookupItem(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// CampaignLookupItem(...).copyWith(id: 12, name: "My name")
  /// ```
  CampaignLookupItem call({String? id, String name});
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfCampaignLookupItem.copyWith(...)` or call `instanceOfCampaignLookupItem.copyWith.fieldName(value)` for a single field.
class _$CampaignLookupItemCWProxyImpl implements _$CampaignLookupItemCWProxy {
  const _$CampaignLookupItemCWProxyImpl(this._value);

  final CampaignLookupItem _value;

  @override
  CampaignLookupItem id(String? id) => call(id: id);

  @override
  CampaignLookupItem name(String name) => call(name: name);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `CampaignLookupItem(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// CampaignLookupItem(...).copyWith(id: 12, name: "My name")
  /// ```
  CampaignLookupItem call({
    Object? id = const $CopyWithPlaceholder(),
    Object? name = const $CopyWithPlaceholder(),
  }) {
    return CampaignLookupItem(
      id: id == const $CopyWithPlaceholder()
          ? _value.id
          // ignore: cast_nullable_to_non_nullable
          : id as String?,
      name: name == const $CopyWithPlaceholder() || name == null
          ? _value.name
          // ignore: cast_nullable_to_non_nullable
          : name as String,
    );
  }
}

extension $CampaignLookupItemCopyWith on CampaignLookupItem {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfCampaignLookupItem.copyWith(...)` or `instanceOfCampaignLookupItem.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$CampaignLookupItemCWProxy get copyWith =>
      _$CampaignLookupItemCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CampaignLookupItem _$CampaignLookupItemFromJson(Map<String, dynamic> json) =>
    $checkedCreate('CampaignLookupItem', json, ($checkedConvert) {
      $checkKeys(json, requiredKeys: const ['name']);
      final val = CampaignLookupItem(
        id: $checkedConvert('id', (v) => v as String?),
        name: $checkedConvert('name', (v) => v as String),
      );
      return val;
    });

Map<String, dynamic> _$CampaignLookupItemToJson(CampaignLookupItem instance) =>
    <String, dynamic>{'id': ?instance.id, 'name': instance.name};
