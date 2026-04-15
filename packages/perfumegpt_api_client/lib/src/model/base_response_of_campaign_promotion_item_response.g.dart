// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_response_of_campaign_promotion_item_response.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$BaseResponseOfCampaignPromotionItemResponseCWProxy {
  BaseResponseOfCampaignPromotionItemResponse payload(
    CampaignPromotionItemResponse? payload,
  );

  BaseResponseOfCampaignPromotionItemResponse success(bool? success);

  BaseResponseOfCampaignPromotionItemResponse message(String? message);

  BaseResponseOfCampaignPromotionItemResponse errors(List<String>? errors);

  BaseResponseOfCampaignPromotionItemResponse errorType(
    ResponseErrorType? errorType,
  );

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `BaseResponseOfCampaignPromotionItemResponse(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// BaseResponseOfCampaignPromotionItemResponse(...).copyWith(id: 12, name: "My name")
  /// ```
  BaseResponseOfCampaignPromotionItemResponse call({
    CampaignPromotionItemResponse? payload,
    bool? success,
    String? message,
    List<String>? errors,
    ResponseErrorType? errorType,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfBaseResponseOfCampaignPromotionItemResponse.copyWith(...)` or call `instanceOfBaseResponseOfCampaignPromotionItemResponse.copyWith.fieldName(value)` for a single field.
class _$BaseResponseOfCampaignPromotionItemResponseCWProxyImpl
    implements _$BaseResponseOfCampaignPromotionItemResponseCWProxy {
  const _$BaseResponseOfCampaignPromotionItemResponseCWProxyImpl(this._value);

  final BaseResponseOfCampaignPromotionItemResponse _value;

  @override
  BaseResponseOfCampaignPromotionItemResponse payload(
    CampaignPromotionItemResponse? payload,
  ) => call(payload: payload);

  @override
  BaseResponseOfCampaignPromotionItemResponse success(bool? success) =>
      call(success: success);

  @override
  BaseResponseOfCampaignPromotionItemResponse message(String? message) =>
      call(message: message);

  @override
  BaseResponseOfCampaignPromotionItemResponse errors(List<String>? errors) =>
      call(errors: errors);

  @override
  BaseResponseOfCampaignPromotionItemResponse errorType(
    ResponseErrorType? errorType,
  ) => call(errorType: errorType);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `BaseResponseOfCampaignPromotionItemResponse(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// BaseResponseOfCampaignPromotionItemResponse(...).copyWith(id: 12, name: "My name")
  /// ```
  BaseResponseOfCampaignPromotionItemResponse call({
    Object? payload = const $CopyWithPlaceholder(),
    Object? success = const $CopyWithPlaceholder(),
    Object? message = const $CopyWithPlaceholder(),
    Object? errors = const $CopyWithPlaceholder(),
    Object? errorType = const $CopyWithPlaceholder(),
  }) {
    return BaseResponseOfCampaignPromotionItemResponse(
      payload: payload == const $CopyWithPlaceholder()
          ? _value.payload
          // ignore: cast_nullable_to_non_nullable
          : payload as CampaignPromotionItemResponse?,
      success: success == const $CopyWithPlaceholder()
          ? _value.success
          // ignore: cast_nullable_to_non_nullable
          : success as bool?,
      message: message == const $CopyWithPlaceholder()
          ? _value.message
          // ignore: cast_nullable_to_non_nullable
          : message as String?,
      errors: errors == const $CopyWithPlaceholder()
          ? _value.errors
          // ignore: cast_nullable_to_non_nullable
          : errors as List<String>?,
      errorType: errorType == const $CopyWithPlaceholder()
          ? _value.errorType
          // ignore: cast_nullable_to_non_nullable
          : errorType as ResponseErrorType?,
    );
  }
}

extension $BaseResponseOfCampaignPromotionItemResponseCopyWith
    on BaseResponseOfCampaignPromotionItemResponse {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfBaseResponseOfCampaignPromotionItemResponse.copyWith(...)` or `instanceOfBaseResponseOfCampaignPromotionItemResponse.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$BaseResponseOfCampaignPromotionItemResponseCWProxy get copyWith =>
      _$BaseResponseOfCampaignPromotionItemResponseCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BaseResponseOfCampaignPromotionItemResponse
_$BaseResponseOfCampaignPromotionItemResponseFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('BaseResponseOfCampaignPromotionItemResponse', json, (
  $checkedConvert,
) {
  final val = BaseResponseOfCampaignPromotionItemResponse(
    payload: $checkedConvert(
      'payload',
      (v) => v == null
          ? null
          : CampaignPromotionItemResponse.fromJson(v as Map<String, dynamic>),
    ),
    success: $checkedConvert('success', (v) => v as bool?),
    message: $checkedConvert('message', (v) => v as String?),
    errors: $checkedConvert(
      'errors',
      (v) => (v as List<dynamic>?)?.map((e) => e as String).toList(),
    ),
    errorType: $checkedConvert(
      'errorType',
      (v) => $enumDecodeNullable(_$ResponseErrorTypeEnumMap, v),
    ),
  );
  return val;
});

Map<String, dynamic> _$BaseResponseOfCampaignPromotionItemResponseToJson(
  BaseResponseOfCampaignPromotionItemResponse instance,
) => <String, dynamic>{
  'payload': ?instance.payload?.toJson(),
  'success': ?instance.success,
  'message': ?instance.message,
  'errors': ?instance.errors,
  'errorType': ?_$ResponseErrorTypeEnumMap[instance.errorType],
};

const _$ResponseErrorTypeEnumMap = {
  ResponseErrorType.badRequest: 'BadRequest',
  ResponseErrorType.unauthorized: 'Unauthorized',
  ResponseErrorType.forbidden: 'Forbidden',
  ResponseErrorType.notFound: 'NotFound',
  ResponseErrorType.conflict: 'Conflict',
  ResponseErrorType.internalError: 'InternalError',
};
