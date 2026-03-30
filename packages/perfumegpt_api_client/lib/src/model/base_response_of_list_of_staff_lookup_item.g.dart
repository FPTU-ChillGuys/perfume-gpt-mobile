// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_response_of_list_of_staff_lookup_item.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$BaseResponseOfListOfStaffLookupItemCWProxy {
  BaseResponseOfListOfStaffLookupItem payload(List<StaffLookupItem>? payload);

  BaseResponseOfListOfStaffLookupItem success(bool? success);

  BaseResponseOfListOfStaffLookupItem message(String? message);

  BaseResponseOfListOfStaffLookupItem errors(List<String>? errors);

  BaseResponseOfListOfStaffLookupItem errorType(int? errorType);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `BaseResponseOfListOfStaffLookupItem(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// BaseResponseOfListOfStaffLookupItem(...).copyWith(id: 12, name: "My name")
  /// ```
  BaseResponseOfListOfStaffLookupItem call({
    List<StaffLookupItem>? payload,
    bool? success,
    String? message,
    List<String>? errors,
    int? errorType,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfBaseResponseOfListOfStaffLookupItem.copyWith(...)` or call `instanceOfBaseResponseOfListOfStaffLookupItem.copyWith.fieldName(value)` for a single field.
class _$BaseResponseOfListOfStaffLookupItemCWProxyImpl
    implements _$BaseResponseOfListOfStaffLookupItemCWProxy {
  const _$BaseResponseOfListOfStaffLookupItemCWProxyImpl(this._value);

  final BaseResponseOfListOfStaffLookupItem _value;

  @override
  BaseResponseOfListOfStaffLookupItem payload(List<StaffLookupItem>? payload) =>
      call(payload: payload);

  @override
  BaseResponseOfListOfStaffLookupItem success(bool? success) =>
      call(success: success);

  @override
  BaseResponseOfListOfStaffLookupItem message(String? message) =>
      call(message: message);

  @override
  BaseResponseOfListOfStaffLookupItem errors(List<String>? errors) =>
      call(errors: errors);

  @override
  BaseResponseOfListOfStaffLookupItem errorType(int? errorType) =>
      call(errorType: errorType);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `BaseResponseOfListOfStaffLookupItem(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// BaseResponseOfListOfStaffLookupItem(...).copyWith(id: 12, name: "My name")
  /// ```
  BaseResponseOfListOfStaffLookupItem call({
    Object? payload = const $CopyWithPlaceholder(),
    Object? success = const $CopyWithPlaceholder(),
    Object? message = const $CopyWithPlaceholder(),
    Object? errors = const $CopyWithPlaceholder(),
    Object? errorType = const $CopyWithPlaceholder(),
  }) {
    return BaseResponseOfListOfStaffLookupItem(
      payload: payload == const $CopyWithPlaceholder()
          ? _value.payload
          // ignore: cast_nullable_to_non_nullable
          : payload as List<StaffLookupItem>?,
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
          : errorType as int?,
    );
  }
}

extension $BaseResponseOfListOfStaffLookupItemCopyWith
    on BaseResponseOfListOfStaffLookupItem {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfBaseResponseOfListOfStaffLookupItem.copyWith(...)` or `instanceOfBaseResponseOfListOfStaffLookupItem.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$BaseResponseOfListOfStaffLookupItemCWProxy get copyWith =>
      _$BaseResponseOfListOfStaffLookupItemCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BaseResponseOfListOfStaffLookupItem
_$BaseResponseOfListOfStaffLookupItemFromJson(Map<String, dynamic> json) =>
    $checkedCreate('BaseResponseOfListOfStaffLookupItem', json, (
      $checkedConvert,
    ) {
      final val = BaseResponseOfListOfStaffLookupItem(
        payload: $checkedConvert(
          'payload',
          (v) => (v as List<dynamic>?)
              ?.map((e) => StaffLookupItem.fromJson(e as Map<String, dynamic>))
              .toList(),
        ),
        success: $checkedConvert('success', (v) => v as bool?),
        message: $checkedConvert('message', (v) => v as String?),
        errors: $checkedConvert(
          'errors',
          (v) => (v as List<dynamic>?)?.map((e) => e as String).toList(),
        ),
        errorType: $checkedConvert('errorType', (v) => (v as num?)?.toInt()),
      );
      return val;
    });

Map<String, dynamic> _$BaseResponseOfListOfStaffLookupItemToJson(
  BaseResponseOfListOfStaffLookupItem instance,
) => <String, dynamic>{
  'payload': ?instance.payload?.map((e) => e.toJson()).toList(),
  'success': ?instance.success,
  'message': ?instance.message,
  'errors': ?instance.errors,
  'errorType': ?instance.errorType,
};
