// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_response_of_list_of_campaign_promotion_item_response.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$BaseResponseOfListOfCampaignPromotionItemResponseCWProxy {
  BaseResponseOfListOfCampaignPromotionItemResponse payload(
    List<CampaignPromotionItemResponse>? payload,
  );

  BaseResponseOfListOfCampaignPromotionItemResponse success(bool? success);

  BaseResponseOfListOfCampaignPromotionItemResponse message(String? message);

  BaseResponseOfListOfCampaignPromotionItemResponse errors(
    List<String>? errors,
  );

  BaseResponseOfListOfCampaignPromotionItemResponse errorType(
    ResponseErrorType? errorType,
  );

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `BaseResponseOfListOfCampaignPromotionItemResponse(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// BaseResponseOfListOfCampaignPromotionItemResponse(...).copyWith(id: 12, name: "My name")
  /// ```
  BaseResponseOfListOfCampaignPromotionItemResponse call({
    List<CampaignPromotionItemResponse>? payload,
    bool? success,
    String? message,
    List<String>? errors,
    ResponseErrorType? errorType,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfBaseResponseOfListOfCampaignPromotionItemResponse.copyWith(...)` or call `instanceOfBaseResponseOfListOfCampaignPromotionItemResponse.copyWith.fieldName(value)` for a single field.
class _$BaseResponseOfListOfCampaignPromotionItemResponseCWProxyImpl
    implements _$BaseResponseOfListOfCampaignPromotionItemResponseCWProxy {
  const _$BaseResponseOfListOfCampaignPromotionItemResponseCWProxyImpl(
    this._value,
  );

  final BaseResponseOfListOfCampaignPromotionItemResponse _value;

  @override
  BaseResponseOfListOfCampaignPromotionItemResponse payload(
    List<CampaignPromotionItemResponse>? payload,
  ) => call(payload: payload);

  @override
  BaseResponseOfListOfCampaignPromotionItemResponse success(bool? success) =>
      call(success: success);

  @override
  BaseResponseOfListOfCampaignPromotionItemResponse message(String? message) =>
      call(message: message);

  @override
  BaseResponseOfListOfCampaignPromotionItemResponse errors(
    List<String>? errors,
  ) => call(errors: errors);

  @override
  BaseResponseOfListOfCampaignPromotionItemResponse errorType(
    ResponseErrorType? errorType,
  ) => call(errorType: errorType);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `BaseResponseOfListOfCampaignPromotionItemResponse(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// BaseResponseOfListOfCampaignPromotionItemResponse(...).copyWith(id: 12, name: "My name")
  /// ```
  BaseResponseOfListOfCampaignPromotionItemResponse call({
    Object? payload = const $CopyWithPlaceholder(),
    Object? success = const $CopyWithPlaceholder(),
    Object? message = const $CopyWithPlaceholder(),
    Object? errors = const $CopyWithPlaceholder(),
    Object? errorType = const $CopyWithPlaceholder(),
  }) {
    return BaseResponseOfListOfCampaignPromotionItemResponse(
      payload: payload == const $CopyWithPlaceholder()
          ? _value.payload
          // ignore: cast_nullable_to_non_nullable
          : payload as List<CampaignPromotionItemResponse>?,
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

extension $BaseResponseOfListOfCampaignPromotionItemResponseCopyWith
    on BaseResponseOfListOfCampaignPromotionItemResponse {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfBaseResponseOfListOfCampaignPromotionItemResponse.copyWith(...)` or `instanceOfBaseResponseOfListOfCampaignPromotionItemResponse.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$BaseResponseOfListOfCampaignPromotionItemResponseCWProxy get copyWith =>
      _$BaseResponseOfListOfCampaignPromotionItemResponseCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BaseResponseOfListOfCampaignPromotionItemResponse
_$BaseResponseOfListOfCampaignPromotionItemResponseFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('BaseResponseOfListOfCampaignPromotionItemResponse', json, (
  $checkedConvert,
) {
  final val = BaseResponseOfListOfCampaignPromotionItemResponse(
    payload: $checkedConvert(
      'payload',
      (v) => (v as List<dynamic>?)
          ?.map(
            (e) => CampaignPromotionItemResponse.fromJson(
              e as Map<String, dynamic>,
            ),
          )
          .toList(),
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

Map<String, dynamic> _$BaseResponseOfListOfCampaignPromotionItemResponseToJson(
  BaseResponseOfListOfCampaignPromotionItemResponse instance,
) => <String, dynamic>{
  'payload': ?instance.payload?.map((e) => e.toJson()).toList(),
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
