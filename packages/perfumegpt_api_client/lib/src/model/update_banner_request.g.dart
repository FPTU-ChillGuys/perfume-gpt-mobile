// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_banner_request.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$UpdateBannerRequestCWProxy {
  UpdateBannerRequest title(String title);

  UpdateBannerRequest temporaryImageId(String? temporaryImageId);

  UpdateBannerRequest temporaryMobileImageId(String? temporaryMobileImageId);

  UpdateBannerRequest altText(String? altText);

  UpdateBannerRequest position(BannerPosition position);

  UpdateBannerRequest displayOrder(int displayOrder);

  UpdateBannerRequest isActive(bool isActive);

  UpdateBannerRequest startDate(DateTime? startDate);

  UpdateBannerRequest endDate(DateTime? endDate);

  UpdateBannerRequest linkType(BannerLinkType linkType);

  UpdateBannerRequest linkTarget(String linkTarget);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `UpdateBannerRequest(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// UpdateBannerRequest(...).copyWith(id: 12, name: "My name")
  /// ```
  UpdateBannerRequest call({
    String title,
    String? temporaryImageId,
    String? temporaryMobileImageId,
    String? altText,
    BannerPosition position,
    int displayOrder,
    bool isActive,
    DateTime? startDate,
    DateTime? endDate,
    BannerLinkType linkType,
    String linkTarget,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfUpdateBannerRequest.copyWith(...)` or call `instanceOfUpdateBannerRequest.copyWith.fieldName(value)` for a single field.
class _$UpdateBannerRequestCWProxyImpl implements _$UpdateBannerRequestCWProxy {
  const _$UpdateBannerRequestCWProxyImpl(this._value);

  final UpdateBannerRequest _value;

  @override
  UpdateBannerRequest title(String title) => call(title: title);

  @override
  UpdateBannerRequest temporaryImageId(String? temporaryImageId) =>
      call(temporaryImageId: temporaryImageId);

  @override
  UpdateBannerRequest temporaryMobileImageId(String? temporaryMobileImageId) =>
      call(temporaryMobileImageId: temporaryMobileImageId);

  @override
  UpdateBannerRequest altText(String? altText) => call(altText: altText);

  @override
  UpdateBannerRequest position(BannerPosition position) =>
      call(position: position);

  @override
  UpdateBannerRequest displayOrder(int displayOrder) =>
      call(displayOrder: displayOrder);

  @override
  UpdateBannerRequest isActive(bool isActive) => call(isActive: isActive);

  @override
  UpdateBannerRequest startDate(DateTime? startDate) =>
      call(startDate: startDate);

  @override
  UpdateBannerRequest endDate(DateTime? endDate) => call(endDate: endDate);

  @override
  UpdateBannerRequest linkType(BannerLinkType linkType) =>
      call(linkType: linkType);

  @override
  UpdateBannerRequest linkTarget(String linkTarget) =>
      call(linkTarget: linkTarget);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `UpdateBannerRequest(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// UpdateBannerRequest(...).copyWith(id: 12, name: "My name")
  /// ```
  UpdateBannerRequest call({
    Object? title = const $CopyWithPlaceholder(),
    Object? temporaryImageId = const $CopyWithPlaceholder(),
    Object? temporaryMobileImageId = const $CopyWithPlaceholder(),
    Object? altText = const $CopyWithPlaceholder(),
    Object? position = const $CopyWithPlaceholder(),
    Object? displayOrder = const $CopyWithPlaceholder(),
    Object? isActive = const $CopyWithPlaceholder(),
    Object? startDate = const $CopyWithPlaceholder(),
    Object? endDate = const $CopyWithPlaceholder(),
    Object? linkType = const $CopyWithPlaceholder(),
    Object? linkTarget = const $CopyWithPlaceholder(),
  }) {
    return UpdateBannerRequest(
      title: title == const $CopyWithPlaceholder() || title == null
          ? _value.title
          // ignore: cast_nullable_to_non_nullable
          : title as String,
      temporaryImageId: temporaryImageId == const $CopyWithPlaceholder()
          ? _value.temporaryImageId
          // ignore: cast_nullable_to_non_nullable
          : temporaryImageId as String?,
      temporaryMobileImageId:
          temporaryMobileImageId == const $CopyWithPlaceholder()
          ? _value.temporaryMobileImageId
          // ignore: cast_nullable_to_non_nullable
          : temporaryMobileImageId as String?,
      altText: altText == const $CopyWithPlaceholder()
          ? _value.altText
          // ignore: cast_nullable_to_non_nullable
          : altText as String?,
      position: position == const $CopyWithPlaceholder() || position == null
          ? _value.position
          // ignore: cast_nullable_to_non_nullable
          : position as BannerPosition,
      displayOrder:
          displayOrder == const $CopyWithPlaceholder() || displayOrder == null
          ? _value.displayOrder
          // ignore: cast_nullable_to_non_nullable
          : displayOrder as int,
      isActive: isActive == const $CopyWithPlaceholder() || isActive == null
          ? _value.isActive
          // ignore: cast_nullable_to_non_nullable
          : isActive as bool,
      startDate: startDate == const $CopyWithPlaceholder()
          ? _value.startDate
          // ignore: cast_nullable_to_non_nullable
          : startDate as DateTime?,
      endDate: endDate == const $CopyWithPlaceholder()
          ? _value.endDate
          // ignore: cast_nullable_to_non_nullable
          : endDate as DateTime?,
      linkType: linkType == const $CopyWithPlaceholder() || linkType == null
          ? _value.linkType
          // ignore: cast_nullable_to_non_nullable
          : linkType as BannerLinkType,
      linkTarget:
          linkTarget == const $CopyWithPlaceholder() || linkTarget == null
          ? _value.linkTarget
          // ignore: cast_nullable_to_non_nullable
          : linkTarget as String,
    );
  }
}

extension $UpdateBannerRequestCopyWith on UpdateBannerRequest {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfUpdateBannerRequest.copyWith(...)` or `instanceOfUpdateBannerRequest.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$UpdateBannerRequestCWProxy get copyWith =>
      _$UpdateBannerRequestCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UpdateBannerRequest _$UpdateBannerRequestFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('UpdateBannerRequest', json, ($checkedConvert) {
  $checkKeys(
    json,
    requiredKeys: const [
      'title',
      'position',
      'displayOrder',
      'isActive',
      'linkType',
      'linkTarget',
    ],
  );
  final val = UpdateBannerRequest(
    title: $checkedConvert('title', (v) => v as String),
    temporaryImageId: $checkedConvert('temporaryImageId', (v) => v as String?),
    temporaryMobileImageId: $checkedConvert(
      'temporaryMobileImageId',
      (v) => v as String?,
    ),
    altText: $checkedConvert('altText', (v) => v as String?),
    position: $checkedConvert(
      'position',
      (v) => $enumDecode(_$BannerPositionEnumMap, v),
    ),
    displayOrder: $checkedConvert('displayOrder', (v) => (v as num).toInt()),
    isActive: $checkedConvert('isActive', (v) => v as bool),
    startDate: $checkedConvert(
      'startDate',
      (v) => v == null ? null : DateTime.parse(v as String),
    ),
    endDate: $checkedConvert(
      'endDate',
      (v) => v == null ? null : DateTime.parse(v as String),
    ),
    linkType: $checkedConvert(
      'linkType',
      (v) => $enumDecode(_$BannerLinkTypeEnumMap, v),
    ),
    linkTarget: $checkedConvert('linkTarget', (v) => v as String),
  );
  return val;
});

Map<String, dynamic> _$UpdateBannerRequestToJson(
  UpdateBannerRequest instance,
) => <String, dynamic>{
  'title': instance.title,
  'temporaryImageId': ?instance.temporaryImageId,
  'temporaryMobileImageId': ?instance.temporaryMobileImageId,
  'altText': ?instance.altText,
  'position': _$BannerPositionEnumMap[instance.position]!,
  'displayOrder': instance.displayOrder,
  'isActive': instance.isActive,
  'startDate': ?instance.startDate?.toIso8601String(),
  'endDate': ?instance.endDate?.toIso8601String(),
  'linkType': _$BannerLinkTypeEnumMap[instance.linkType]!,
  'linkTarget': instance.linkTarget,
};

const _$BannerPositionEnumMap = {
  BannerPosition.homeHeroSlider: 'HomeHeroSlider',
  BannerPosition.homeSubBanner: 'HomeSubBanner',
  BannerPosition.popup: 'Popup',
  BannerPosition.categoryTop: 'CategoryTop',
};

const _$BannerLinkTypeEnumMap = {
  BannerLinkType.campaign: 'Campaign',
  BannerLinkType.product: 'Product',
  BannerLinkType.productVariant: 'ProductVariant',
  BannerLinkType.brand: 'Brand',
};
