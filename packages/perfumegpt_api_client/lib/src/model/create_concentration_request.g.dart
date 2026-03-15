// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_concentration_request.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$CreateConcentrationRequestCWProxy {
  CreateConcentrationRequest name(String? name);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `CreateConcentrationRequest(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// CreateConcentrationRequest(...).copyWith(id: 12, name: "My name")
  /// ````
  CreateConcentrationRequest call({String? name});
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfCreateConcentrationRequest.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfCreateConcentrationRequest.copyWith.fieldName(...)`
class _$CreateConcentrationRequestCWProxyImpl
    implements _$CreateConcentrationRequestCWProxy {
  const _$CreateConcentrationRequestCWProxyImpl(this._value);

  final CreateConcentrationRequest _value;

  @override
  CreateConcentrationRequest name(String? name) => this(name: name);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `CreateConcentrationRequest(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// CreateConcentrationRequest(...).copyWith(id: 12, name: "My name")
  /// ````
  CreateConcentrationRequest call({
    Object? name = const $CopyWithPlaceholder(),
  }) {
    return CreateConcentrationRequest(
      name: name == const $CopyWithPlaceholder()
          ? _value.name
          // ignore: cast_nullable_to_non_nullable
          : name as String?,
    );
  }
}

extension $CreateConcentrationRequestCopyWith on CreateConcentrationRequest {
  /// Returns a callable class that can be used as follows: `instanceOfCreateConcentrationRequest.copyWith(...)` or like so:`instanceOfCreateConcentrationRequest.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$CreateConcentrationRequestCWProxy get copyWith =>
      _$CreateConcentrationRequestCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CreateConcentrationRequest _$CreateConcentrationRequestFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('CreateConcentrationRequest', json, ($checkedConvert) {
  final val = CreateConcentrationRequest(
    name: $checkedConvert('name', (v) => v as String?),
  );
  return val;
});

Map<String, dynamic> _$CreateConcentrationRequestToJson(
  CreateConcentrationRequest instance,
) => <String, dynamic>{'name': ?instance.name};
