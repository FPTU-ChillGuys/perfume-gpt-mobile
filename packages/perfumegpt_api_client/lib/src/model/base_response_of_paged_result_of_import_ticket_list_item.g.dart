// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_response_of_paged_result_of_import_ticket_list_item.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$BaseResponseOfPagedResultOfImportTicketListItemCWProxy {
  BaseResponseOfPagedResultOfImportTicketListItem payload(
    PagedResultOfImportTicketListItem? payload,
  );

  BaseResponseOfPagedResultOfImportTicketListItem success(bool? success);

  BaseResponseOfPagedResultOfImportTicketListItem message(String? message);

  BaseResponseOfPagedResultOfImportTicketListItem errors(List<String>? errors);

  BaseResponseOfPagedResultOfImportTicketListItem errorType(
    ResponseErrorType? errorType,
  );

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `BaseResponseOfPagedResultOfImportTicketListItem(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// BaseResponseOfPagedResultOfImportTicketListItem(...).copyWith(id: 12, name: "My name")
  /// ```
  BaseResponseOfPagedResultOfImportTicketListItem call({
    PagedResultOfImportTicketListItem? payload,
    bool? success,
    String? message,
    List<String>? errors,
    ResponseErrorType? errorType,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfBaseResponseOfPagedResultOfImportTicketListItem.copyWith(...)` or call `instanceOfBaseResponseOfPagedResultOfImportTicketListItem.copyWith.fieldName(value)` for a single field.
class _$BaseResponseOfPagedResultOfImportTicketListItemCWProxyImpl
    implements _$BaseResponseOfPagedResultOfImportTicketListItemCWProxy {
  const _$BaseResponseOfPagedResultOfImportTicketListItemCWProxyImpl(
    this._value,
  );

  final BaseResponseOfPagedResultOfImportTicketListItem _value;

  @override
  BaseResponseOfPagedResultOfImportTicketListItem payload(
    PagedResultOfImportTicketListItem? payload,
  ) => call(payload: payload);

  @override
  BaseResponseOfPagedResultOfImportTicketListItem success(bool? success) =>
      call(success: success);

  @override
  BaseResponseOfPagedResultOfImportTicketListItem message(String? message) =>
      call(message: message);

  @override
  BaseResponseOfPagedResultOfImportTicketListItem errors(
    List<String>? errors,
  ) => call(errors: errors);

  @override
  BaseResponseOfPagedResultOfImportTicketListItem errorType(
    ResponseErrorType? errorType,
  ) => call(errorType: errorType);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `BaseResponseOfPagedResultOfImportTicketListItem(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// BaseResponseOfPagedResultOfImportTicketListItem(...).copyWith(id: 12, name: "My name")
  /// ```
  BaseResponseOfPagedResultOfImportTicketListItem call({
    Object? payload = const $CopyWithPlaceholder(),
    Object? success = const $CopyWithPlaceholder(),
    Object? message = const $CopyWithPlaceholder(),
    Object? errors = const $CopyWithPlaceholder(),
    Object? errorType = const $CopyWithPlaceholder(),
  }) {
    return BaseResponseOfPagedResultOfImportTicketListItem(
      payload: payload == const $CopyWithPlaceholder()
          ? _value.payload
          // ignore: cast_nullable_to_non_nullable
          : payload as PagedResultOfImportTicketListItem?,
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

extension $BaseResponseOfPagedResultOfImportTicketListItemCopyWith
    on BaseResponseOfPagedResultOfImportTicketListItem {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfBaseResponseOfPagedResultOfImportTicketListItem.copyWith(...)` or `instanceOfBaseResponseOfPagedResultOfImportTicketListItem.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$BaseResponseOfPagedResultOfImportTicketListItemCWProxy get copyWith =>
      _$BaseResponseOfPagedResultOfImportTicketListItemCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BaseResponseOfPagedResultOfImportTicketListItem
_$BaseResponseOfPagedResultOfImportTicketListItemFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('BaseResponseOfPagedResultOfImportTicketListItem', json, (
  $checkedConvert,
) {
  final val = BaseResponseOfPagedResultOfImportTicketListItem(
    payload: $checkedConvert(
      'payload',
      (v) => v == null
          ? null
          : PagedResultOfImportTicketListItem.fromJson(
              v as Map<String, dynamic>,
            ),
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

Map<String, dynamic> _$BaseResponseOfPagedResultOfImportTicketListItemToJson(
  BaseResponseOfPagedResultOfImportTicketListItem instance,
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
