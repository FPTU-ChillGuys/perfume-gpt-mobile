// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bulk_action_error.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$BulkActionErrorCWProxy {
  BulkActionError id(String? id);

  BulkActionError errorMessage(String? errorMessage);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `BulkActionError(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// BulkActionError(...).copyWith(id: 12, name: "My name")
  /// ````
  BulkActionError call({String? id, String? errorMessage});
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfBulkActionError.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfBulkActionError.copyWith.fieldName(...)`
class _$BulkActionErrorCWProxyImpl implements _$BulkActionErrorCWProxy {
  const _$BulkActionErrorCWProxyImpl(this._value);

  final BulkActionError _value;

  @override
  BulkActionError id(String? id) => this(id: id);

  @override
  BulkActionError errorMessage(String? errorMessage) =>
      this(errorMessage: errorMessage);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `BulkActionError(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// BulkActionError(...).copyWith(id: 12, name: "My name")
  /// ````
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
  /// Returns a callable class that can be used as follows: `instanceOfBulkActionError.copyWith(...)` or like so:`instanceOfBulkActionError.copyWith.fieldName(...)`.
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
