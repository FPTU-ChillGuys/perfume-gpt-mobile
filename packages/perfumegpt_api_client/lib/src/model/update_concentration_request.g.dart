// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_concentration_request.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$UpdateConcentrationRequestCWProxy {
  UpdateConcentrationRequest name(String? name);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `UpdateConcentrationRequest(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// UpdateConcentrationRequest(...).copyWith(id: 12, name: "My name")
  /// ````
  UpdateConcentrationRequest call({String? name});
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfUpdateConcentrationRequest.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfUpdateConcentrationRequest.copyWith.fieldName(...)`
class _$UpdateConcentrationRequestCWProxyImpl
    implements _$UpdateConcentrationRequestCWProxy {
  const _$UpdateConcentrationRequestCWProxyImpl(this._value);

  final UpdateConcentrationRequest _value;

  @override
  UpdateConcentrationRequest name(String? name) => this(name: name);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `UpdateConcentrationRequest(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// UpdateConcentrationRequest(...).copyWith(id: 12, name: "My name")
  /// ````
  UpdateConcentrationRequest call({
    Object? name = const $CopyWithPlaceholder(),
  }) {
    return UpdateConcentrationRequest(
      name: name == const $CopyWithPlaceholder()
          ? _value.name
          // ignore: cast_nullable_to_non_nullable
          : name as String?,
    );
  }
}

extension $UpdateConcentrationRequestCopyWith on UpdateConcentrationRequest {
  /// Returns a callable class that can be used as follows: `instanceOfUpdateConcentrationRequest.copyWith(...)` or like so:`instanceOfUpdateConcentrationRequest.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$UpdateConcentrationRequestCWProxy get copyWith =>
      _$UpdateConcentrationRequestCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UpdateConcentrationRequest _$UpdateConcentrationRequestFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('UpdateConcentrationRequest', json, ($checkedConvert) {
  final val = UpdateConcentrationRequest(
    name: $checkedConvert('name', (v) => v as String?),
  );
  return val;
});

Map<String, dynamic> _$UpdateConcentrationRequestToJson(
  UpdateConcentrationRequest instance,
) => <String, dynamic>{'name': ?instance.name};
