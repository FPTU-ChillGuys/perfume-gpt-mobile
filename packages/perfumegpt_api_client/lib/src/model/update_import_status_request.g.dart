// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_import_status_request.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$UpdateImportStatusRequestCWProxy {
  UpdateImportStatusRequest status(ImportStatus? status);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `UpdateImportStatusRequest(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// UpdateImportStatusRequest(...).copyWith(id: 12, name: "My name")
  /// ```
  UpdateImportStatusRequest call({ImportStatus? status});
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfUpdateImportStatusRequest.copyWith(...)` or call `instanceOfUpdateImportStatusRequest.copyWith.fieldName(value)` for a single field.
class _$UpdateImportStatusRequestCWProxyImpl
    implements _$UpdateImportStatusRequestCWProxy {
  const _$UpdateImportStatusRequestCWProxyImpl(this._value);

  final UpdateImportStatusRequest _value;

  @override
  UpdateImportStatusRequest status(ImportStatus? status) =>
      call(status: status);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `UpdateImportStatusRequest(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// UpdateImportStatusRequest(...).copyWith(id: 12, name: "My name")
  /// ```
  UpdateImportStatusRequest call({
    Object? status = const $CopyWithPlaceholder(),
  }) {
    return UpdateImportStatusRequest(
      status: status == const $CopyWithPlaceholder()
          ? _value.status
          // ignore: cast_nullable_to_non_nullable
          : status as ImportStatus?,
    );
  }
}

extension $UpdateImportStatusRequestCopyWith on UpdateImportStatusRequest {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfUpdateImportStatusRequest.copyWith(...)` or `instanceOfUpdateImportStatusRequest.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$UpdateImportStatusRequestCWProxy get copyWith =>
      _$UpdateImportStatusRequestCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UpdateImportStatusRequest _$UpdateImportStatusRequestFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('UpdateImportStatusRequest', json, ($checkedConvert) {
  final val = UpdateImportStatusRequest(
    status: $checkedConvert(
      'status',
      (v) => $enumDecodeNullable(_$ImportStatusEnumMap, v),
    ),
  );
  return val;
});

Map<String, dynamic> _$UpdateImportStatusRequestToJson(
  UpdateImportStatusRequest instance,
) => <String, dynamic>{'status': ?_$ImportStatusEnumMap[instance.status]};

const _$ImportStatusEnumMap = {
  ImportStatus.pending: 'Pending',
  ImportStatus.inProgress: 'InProgress',
  ImportStatus.completed: 'Completed',
  ImportStatus.canceled: 'Canceled',
};
