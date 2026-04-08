// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'process_initial_return_dto.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$ProcessInitialReturnDtoCWProxy {
  ProcessInitialReturnDto isApproved(bool? isApproved);

  ProcessInitialReturnDto isRequestMoreInfo(bool? isRequestMoreInfo);

  ProcessInitialReturnDto staffNote(String? staffNote);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `ProcessInitialReturnDto(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// ProcessInitialReturnDto(...).copyWith(id: 12, name: "My name")
  /// ```
  ProcessInitialReturnDto call({
    bool? isApproved,
    bool? isRequestMoreInfo,
    String? staffNote,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfProcessInitialReturnDto.copyWith(...)` or call `instanceOfProcessInitialReturnDto.copyWith.fieldName(value)` for a single field.
class _$ProcessInitialReturnDtoCWProxyImpl
    implements _$ProcessInitialReturnDtoCWProxy {
  const _$ProcessInitialReturnDtoCWProxyImpl(this._value);

  final ProcessInitialReturnDto _value;

  @override
  ProcessInitialReturnDto isApproved(bool? isApproved) =>
      call(isApproved: isApproved);

  @override
  ProcessInitialReturnDto isRequestMoreInfo(bool? isRequestMoreInfo) =>
      call(isRequestMoreInfo: isRequestMoreInfo);

  @override
  ProcessInitialReturnDto staffNote(String? staffNote) =>
      call(staffNote: staffNote);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `ProcessInitialReturnDto(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// ProcessInitialReturnDto(...).copyWith(id: 12, name: "My name")
  /// ```
  ProcessInitialReturnDto call({
    Object? isApproved = const $CopyWithPlaceholder(),
    Object? isRequestMoreInfo = const $CopyWithPlaceholder(),
    Object? staffNote = const $CopyWithPlaceholder(),
  }) {
    return ProcessInitialReturnDto(
      isApproved: isApproved == const $CopyWithPlaceholder()
          ? _value.isApproved
          // ignore: cast_nullable_to_non_nullable
          : isApproved as bool?,
      isRequestMoreInfo: isRequestMoreInfo == const $CopyWithPlaceholder()
          ? _value.isRequestMoreInfo
          // ignore: cast_nullable_to_non_nullable
          : isRequestMoreInfo as bool?,
      staffNote: staffNote == const $CopyWithPlaceholder()
          ? _value.staffNote
          // ignore: cast_nullable_to_non_nullable
          : staffNote as String?,
    );
  }
}

extension $ProcessInitialReturnDtoCopyWith on ProcessInitialReturnDto {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfProcessInitialReturnDto.copyWith(...)` or `instanceOfProcessInitialReturnDto.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$ProcessInitialReturnDtoCWProxy get copyWith =>
      _$ProcessInitialReturnDtoCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProcessInitialReturnDto _$ProcessInitialReturnDtoFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('ProcessInitialReturnDto', json, ($checkedConvert) {
  final val = ProcessInitialReturnDto(
    isApproved: $checkedConvert('isApproved', (v) => v as bool?),
    isRequestMoreInfo: $checkedConvert('isRequestMoreInfo', (v) => v as bool?),
    staffNote: $checkedConvert('staffNote', (v) => v as String?),
  );
  return val;
});

Map<String, dynamic> _$ProcessInitialReturnDtoToJson(
  ProcessInitialReturnDto instance,
) => <String, dynamic>{
  'isApproved': ?instance.isApproved,
  'isRequestMoreInfo': ?instance.isRequestMoreInfo,
  'staffNote': ?instance.staffNote,
};
