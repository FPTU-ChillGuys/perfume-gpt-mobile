// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bulk_action_error.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$BulkActionErrorCWProxy {
  BulkActionError id(String? id);

  BulkActionError errorMessage(String? errorMessage);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `BulkActionError(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// BulkActionError(...).copyWith(id: 12, name: "My name")
  /// ```
  BulkActionError call({String? id, String? errorMessage});
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfBulkActionError.copyWith(...)` or call `instanceOfBulkActionError.copyWith.fieldName(value)` for a single field.
class _$BulkActionErrorCWProxyImpl implements _$BulkActionErrorCWProxy {
  const _$BulkActionErrorCWProxyImpl(this._value);

  final BulkActionError _value;

  @override
  BulkActionError id(String? id) => call(id: id);

  @override
  BulkActionError errorMessage(String? errorMessage) =>
      call(errorMessage: errorMessage);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `BulkActionError(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// BulkActionError(...).copyWith(id: 12, name: "My name")
  /// ```
  BulkActionError call({
    Object? id = const $CopyWithPlaceholder(),
    Object? errorMessage = const $CopyWithPlaceholder(),
  }) {
    return BulkActionError(
      id: id == const $CopyWithPlaceholder()
          ? _value.id
          // ignore: cast_nullable_to_non_nullable
          : id as String?,
      errorMessage: errorMessage == const $CopyWithPlaceholder()
          ? _value.errorMessage
          // ignore: cast_nullable_to_non_nullable
          : errorMessage as String?,
    );
  }
}

extension $BulkActionErrorCopyWith on BulkActionError {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfBulkActionError.copyWith(...)` or `instanceOfBulkActionError.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$BulkActionErrorCWProxy get copyWith => _$BulkActionErrorCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BulkActionError _$BulkActionErrorFromJson(Map<String, dynamic> json) =>
    $checkedCreate('BulkActionError', json, ($checkedConvert) {
      final val = BulkActionError(
        id: $checkedConvert('id', (v) => v as String?),
        errorMessage: $checkedConvert('errorMessage', (v) => v as String?),
      );
      return val;
    });

Map<String, dynamic> _$BulkActionErrorToJson(BulkActionError instance) =>
    <String, dynamic>{
      'id': ?instance.id,
      'errorMessage': ?instance.errorMessage,
    };
