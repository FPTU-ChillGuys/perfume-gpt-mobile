// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_response_of_list_of_campaign_lookup_item.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$BaseResponseOfListOfCampaignLookupItemCWProxy {
  BaseResponseOfListOfCampaignLookupItem payload(
    List<CampaignLookupItem>? payload,
  );

  BaseResponseOfListOfCampaignLookupItem success(bool? success);

  BaseResponseOfListOfCampaignLookupItem message(String? message);

  BaseResponseOfListOfCampaignLookupItem errors(List<String>? errors);

  BaseResponseOfListOfCampaignLookupItem errorType(
    ResponseErrorType? errorType,
  );

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `BaseResponseOfListOfCampaignLookupItem(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// BaseResponseOfListOfCampaignLookupItem(...).copyWith(id: 12, name: "My name")
  /// ```
  BaseResponseOfListOfCampaignLookupItem call({
    List<CampaignLookupItem>? payload,
    bool? success,
    String? message,
    List<String>? errors,
    ResponseErrorType? errorType,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfBaseResponseOfListOfCampaignLookupItem.copyWith(...)` or call `instanceOfBaseResponseOfListOfCampaignLookupItem.copyWith.fieldName(value)` for a single field.
class _$BaseResponseOfListOfCampaignLookupItemCWProxyImpl
    implements _$BaseResponseOfListOfCampaignLookupItemCWProxy {
  const _$BaseResponseOfListOfCampaignLookupItemCWProxyImpl(this._value);

  final BaseResponseOfListOfCampaignLookupItem _value;

  @override
  BaseResponseOfListOfCampaignLookupItem payload(
    List<CampaignLookupItem>? payload,
  ) => call(payload: payload);

  @override
  BaseResponseOfListOfCampaignLookupItem success(bool? success) =>
      call(success: success);

  @override
  BaseResponseOfListOfCampaignLookupItem message(String? message) =>
      call(message: message);

  @override
  BaseResponseOfListOfCampaignLookupItem errors(List<String>? errors) =>
      call(errors: errors);

  @override
  BaseResponseOfListOfCampaignLookupItem errorType(
    ResponseErrorType? errorType,
  ) => call(errorType: errorType);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `BaseResponseOfListOfCampaignLookupItem(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// BaseResponseOfListOfCampaignLookupItem(...).copyWith(id: 12, name: "My name")
  /// ```
  BaseResponseOfListOfCampaignLookupItem call({
    Object? payload = const $CopyWithPlaceholder(),
    Object? success = const $CopyWithPlaceholder(),
    Object? message = const $CopyWithPlaceholder(),
    Object? errors = const $CopyWithPlaceholder(),
    Object? errorType = const $CopyWithPlaceholder(),
  }) {
    return BaseResponseOfListOfCampaignLookupItem(
      payload: payload == const $CopyWithPlaceholder()
          ? _value.payload
          // ignore: cast_nullable_to_non_nullable
          : payload as List<CampaignLookupItem>?,
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

extension $BaseResponseOfListOfCampaignLookupItemCopyWith
    on BaseResponseOfListOfCampaignLookupItem {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfBaseResponseOfListOfCampaignLookupItem.copyWith(...)` or `instanceOfBaseResponseOfListOfCampaignLookupItem.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$BaseResponseOfListOfCampaignLookupItemCWProxy get copyWith =>
      _$BaseResponseOfListOfCampaignLookupItemCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BaseResponseOfListOfCampaignLookupItem
_$BaseResponseOfListOfCampaignLookupItemFromJson(Map<String, dynamic> json) =>
    $checkedCreate('BaseResponseOfListOfCampaignLookupItem', json, (
      $checkedConvert,
    ) {
      final val = BaseResponseOfListOfCampaignLookupItem(
        payload: $checkedConvert(
          'payload',
          (v) => (v as List<dynamic>?)
              ?.map(
                (e) => CampaignLookupItem.fromJson(e as Map<String, dynamic>),
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

Map<String, dynamic> _$BaseResponseOfListOfCampaignLookupItemToJson(
  BaseResponseOfListOfCampaignLookupItem instance,
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
