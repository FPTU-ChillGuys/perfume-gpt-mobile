// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reject_inspection_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$RejectInspectionDto extends RejectInspectionDto {
  @override
  final String note;

  factory _$RejectInspectionDto([
    void Function(RejectInspectionDtoBuilder)? updates,
  ]) => (RejectInspectionDtoBuilder()..update(updates))._build();

  _$RejectInspectionDto._({required this.note}) : super._();
  @override
  RejectInspectionDto rebuild(
    void Function(RejectInspectionDtoBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  RejectInspectionDtoBuilder toBuilder() =>
      RejectInspectionDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RejectInspectionDto && note == other.note;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, note.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
      r'RejectInspectionDto',
    )..add('note', note)).toString();
  }
}

class RejectInspectionDtoBuilder
    implements Builder<RejectInspectionDto, RejectInspectionDtoBuilder> {
  _$RejectInspectionDto? _$v;

  String? _note;
  String? get note => _$this._note;
  set note(String? note) => _$this._note = note;

  RejectInspectionDtoBuilder() {
    RejectInspectionDto._defaults(this);
  }

  RejectInspectionDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _note = $v.note;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RejectInspectionDto other) {
    _$v = other as _$RejectInspectionDto;
  }

  @override
  void update(void Function(RejectInspectionDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RejectInspectionDto build() => _build();

  _$RejectInspectionDto _build() {
    final _$result =
        _$v ??
        _$RejectInspectionDto._(
          note: BuiltValueNullFieldError.checkNotNull(
            note,
            r'RejectInspectionDto',
            'note',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
