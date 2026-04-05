// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'start_inspection_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$StartInspectionDto extends StartInspectionDto {
  @override
  final String? inspectionNote;

  factory _$StartInspectionDto([
    void Function(StartInspectionDtoBuilder)? updates,
  ]) => (StartInspectionDtoBuilder()..update(updates))._build();

  _$StartInspectionDto._({this.inspectionNote}) : super._();
  @override
  StartInspectionDto rebuild(
    void Function(StartInspectionDtoBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  StartInspectionDtoBuilder toBuilder() =>
      StartInspectionDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is StartInspectionDto &&
        inspectionNote == other.inspectionNote;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, inspectionNote.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
      r'StartInspectionDto',
    )..add('inspectionNote', inspectionNote)).toString();
  }
}

class StartInspectionDtoBuilder
    implements Builder<StartInspectionDto, StartInspectionDtoBuilder> {
  _$StartInspectionDto? _$v;

  String? _inspectionNote;
  String? get inspectionNote => _$this._inspectionNote;
  set inspectionNote(String? inspectionNote) =>
      _$this._inspectionNote = inspectionNote;

  StartInspectionDtoBuilder() {
    StartInspectionDto._defaults(this);
  }

  StartInspectionDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _inspectionNote = $v.inspectionNote;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(StartInspectionDto other) {
    _$v = other as _$StartInspectionDto;
  }

  @override
  void update(void Function(StartInspectionDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  StartInspectionDto build() => _build();

  _$StartInspectionDto _build() {
    final _$result =
        _$v ?? _$StartInspectionDto._(inspectionNote: inspectionNote);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
