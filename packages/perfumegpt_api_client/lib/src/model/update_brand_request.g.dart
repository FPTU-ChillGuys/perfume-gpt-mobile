// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_brand_request.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$UpdateBrandRequestCWProxy {
  UpdateBrandRequest name(String? name);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `UpdateBrandRequest(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// UpdateBrandRequest(...).copyWith(id: 12, name: "My name")
  /// ```
  UpdateBrandRequest call({String? name});
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfUpdateBrandRequest.copyWith(...)` or call `instanceOfUpdateBrandRequest.copyWith.fieldName(value)` for a single field.
class _$UpdateBrandRequestCWProxyImpl implements _$UpdateBrandRequestCWProxy {
  const _$UpdateBrandRequestCWProxyImpl(this._value);

  final UpdateBrandRequest _value;

  @override
  UpdateBrandRequest name(String? name) => call(name: name);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `UpdateBrandRequest(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// UpdateBrandRequest(...).copyWith(id: 12, name: "My name")
  /// ```
  UpdateBrandRequest call({Object? name = const $CopyWithPlaceholder()}) {
    return UpdateBrandRequest(
      name: name == const $CopyWithPlaceholder()
          ? _value.name
          // ignore: cast_nullable_to_non_nullable
          : name as String?,
    );
  }
}

extension $UpdateBrandRequestCopyWith on UpdateBrandRequest {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfUpdateBrandRequest.copyWith(...)` or `instanceOfUpdateBrandRequest.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$UpdateBrandRequestCWProxy get copyWith =>
      _$UpdateBrandRequestCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UpdateBrandRequest _$UpdateBrandRequestFromJson(Map<String, dynamic> json) =>
    $checkedCreate('UpdateBrandRequest', json, ($checkedConvert) {
      final val = UpdateBrandRequest(
        name: $checkedConvert('name', (v) => v as String?),
      );
      return val;
    });

Map<String, dynamic> _$UpdateBrandRequestToJson(UpdateBrandRequest instance) =>
    <String, dynamic>{'name': ?instance.name};
