// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_response_ai_acceptance_request.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$CreateResponseAIAcceptanceRequestCWProxy {
  CreateResponseAIAcceptanceRequest userId(String? userId);

  CreateResponseAIAcceptanceRequest contextType(
    CreateResponseAIAcceptanceRequestContextTypeEnum contextType,
  );

  CreateResponseAIAcceptanceRequest sourceRefId(String? sourceRefId);

  CreateResponseAIAcceptanceRequest productIds(List<String>? productIds);

  CreateResponseAIAcceptanceRequest visibleInHours(num? visibleInHours);

  CreateResponseAIAcceptanceRequest metadata(Object? metadata);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `CreateResponseAIAcceptanceRequest(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// CreateResponseAIAcceptanceRequest(...).copyWith(id: 12, name: "My name")
  /// ```
  CreateResponseAIAcceptanceRequest call({
    String? userId,
    CreateResponseAIAcceptanceRequestContextTypeEnum contextType,
    String? sourceRefId,
    List<String>? productIds,
    num? visibleInHours,
    Object? metadata,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfCreateResponseAIAcceptanceRequest.copyWith(...)` or call `instanceOfCreateResponseAIAcceptanceRequest.copyWith.fieldName(value)` for a single field.
class _$CreateResponseAIAcceptanceRequestCWProxyImpl
    implements _$CreateResponseAIAcceptanceRequestCWProxy {
  const _$CreateResponseAIAcceptanceRequestCWProxyImpl(this._value);

  final CreateResponseAIAcceptanceRequest _value;

  @override
  CreateResponseAIAcceptanceRequest userId(String? userId) =>
      call(userId: userId);

  @override
  CreateResponseAIAcceptanceRequest contextType(
    CreateResponseAIAcceptanceRequestContextTypeEnum contextType,
  ) => call(contextType: contextType);

  @override
  CreateResponseAIAcceptanceRequest sourceRefId(String? sourceRefId) =>
      call(sourceRefId: sourceRefId);

  @override
  CreateResponseAIAcceptanceRequest productIds(List<String>? productIds) =>
      call(productIds: productIds);

  @override
  CreateResponseAIAcceptanceRequest visibleInHours(num? visibleInHours) =>
      call(visibleInHours: visibleInHours);

  @override
  CreateResponseAIAcceptanceRequest metadata(Object? metadata) =>
      call(metadata: metadata);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `CreateResponseAIAcceptanceRequest(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// CreateResponseAIAcceptanceRequest(...).copyWith(id: 12, name: "My name")
  /// ```
  CreateResponseAIAcceptanceRequest call({
    Object? userId = const $CopyWithPlaceholder(),
    Object? contextType = const $CopyWithPlaceholder(),
    Object? sourceRefId = const $CopyWithPlaceholder(),
    Object? productIds = const $CopyWithPlaceholder(),
    Object? visibleInHours = const $CopyWithPlaceholder(),
    Object? metadata = const $CopyWithPlaceholder(),
  }) {
    return CreateResponseAIAcceptanceRequest(
      userId: userId == const $CopyWithPlaceholder()
          ? _value.userId
          // ignore: cast_nullable_to_non_nullable
          : userId as String?,
      contextType:
          contextType == const $CopyWithPlaceholder() || contextType == null
          ? _value.contextType
          // ignore: cast_nullable_to_non_nullable
          : contextType as CreateResponseAIAcceptanceRequestContextTypeEnum,
      sourceRefId: sourceRefId == const $CopyWithPlaceholder()
          ? _value.sourceRefId
          // ignore: cast_nullable_to_non_nullable
          : sourceRefId as String?,
      productIds: productIds == const $CopyWithPlaceholder()
          ? _value.productIds
          // ignore: cast_nullable_to_non_nullable
          : productIds as List<String>?,
      visibleInHours: visibleInHours == const $CopyWithPlaceholder()
          ? _value.visibleInHours
          // ignore: cast_nullable_to_non_nullable
          : visibleInHours as num?,
      metadata: metadata == const $CopyWithPlaceholder()
          ? _value.metadata
          // ignore: cast_nullable_to_non_nullable
          : metadata as Object?,
    );
  }
}

extension $CreateResponseAIAcceptanceRequestCopyWith
    on CreateResponseAIAcceptanceRequest {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfCreateResponseAIAcceptanceRequest.copyWith(...)` or `instanceOfCreateResponseAIAcceptanceRequest.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$CreateResponseAIAcceptanceRequestCWProxy get copyWith =>
      _$CreateResponseAIAcceptanceRequestCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CreateResponseAIAcceptanceRequest _$CreateResponseAIAcceptanceRequestFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('CreateResponseAIAcceptanceRequest', json, (
  $checkedConvert,
) {
  $checkKeys(json, requiredKeys: const ['contextType']);
  final val = CreateResponseAIAcceptanceRequest(
    userId: $checkedConvert('userId', (v) => v as String?),
    contextType: $checkedConvert(
      'contextType',
      (v) => $enumDecode(
        _$CreateResponseAIAcceptanceRequestContextTypeEnumEnumMap,
        v,
      ),
    ),
    sourceRefId: $checkedConvert('sourceRefId', (v) => v as String?),
    productIds: $checkedConvert(
      'productIds',
      (v) => (v as List<dynamic>?)?.map((e) => e as String).toList(),
    ),
    visibleInHours: $checkedConvert('visibleInHours', (v) => v as num? ?? 24),
    metadata: $checkedConvert('metadata', (v) => v),
  );
  return val;
});

Map<String, dynamic> _$CreateResponseAIAcceptanceRequestToJson(
  CreateResponseAIAcceptanceRequest instance,
) => <String, dynamic>{
  'userId': ?instance.userId,
  'contextType':
      _$CreateResponseAIAcceptanceRequestContextTypeEnumEnumMap[instance
          .contextType]!,
  'sourceRefId': ?instance.sourceRefId,
  'productIds': ?instance.productIds,
  'visibleInHours': ?instance.visibleInHours,
  'metadata': ?instance.metadata,
};

const _$CreateResponseAIAcceptanceRequestContextTypeEnumEnumMap = {
  CreateResponseAIAcceptanceRequestContextTypeEnum.cartLegacy: 'cart_legacy',
  CreateResponseAIAcceptanceRequestContextTypeEnum.chatbot: 'chatbot',
  CreateResponseAIAcceptanceRequestContextTypeEnum.survey: 'survey',
  CreateResponseAIAcceptanceRequestContextTypeEnum.trend: 'trend',
  CreateResponseAIAcceptanceRequestContextTypeEnum.recommendation:
      'recommendation',
  CreateResponseAIAcceptanceRequestContextTypeEnum.repurchase: 'repurchase',
};
