// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'process_initial_return_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ProcessInitialReturnDto extends ProcessInitialReturnDto {
  @override
  final bool? isApproved;
  @override
  final String? staffNote;

  factory _$ProcessInitialReturnDto([
    void Function(ProcessInitialReturnDtoBuilder)? updates,
  ]) => (ProcessInitialReturnDtoBuilder()..update(updates))._build();

  _$ProcessInitialReturnDto._({this.isApproved, this.staffNote}) : super._();
  @override
  ProcessInitialReturnDto rebuild(
    void Function(ProcessInitialReturnDtoBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  ProcessInitialReturnDtoBuilder toBuilder() =>
      ProcessInitialReturnDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ProcessInitialReturnDto &&
        isApproved == other.isApproved &&
        staffNote == other.staffNote;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, isApproved.hashCode);
    _$hash = $jc(_$hash, staffNote.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ProcessInitialReturnDto')
          ..add('isApproved', isApproved)
          ..add('staffNote', staffNote))
        .toString();
  }
}

class ProcessInitialReturnDtoBuilder
    implements
        Builder<ProcessInitialReturnDto, ProcessInitialReturnDtoBuilder> {
  _$ProcessInitialReturnDto? _$v;

  bool? _isApproved;
  bool? get isApproved => _$this._isApproved;
  set isApproved(bool? isApproved) => _$this._isApproved = isApproved;

  String? _staffNote;
  String? get staffNote => _$this._staffNote;
  set staffNote(String? staffNote) => _$this._staffNote = staffNote;

  ProcessInitialReturnDtoBuilder() {
    ProcessInitialReturnDto._defaults(this);
  }

  ProcessInitialReturnDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _isApproved = $v.isApproved;
      _staffNote = $v.staffNote;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ProcessInitialReturnDto other) {
    _$v = other as _$ProcessInitialReturnDto;
  }

  @override
  void update(void Function(ProcessInitialReturnDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ProcessInitialReturnDto build() => _build();

  _$ProcessInitialReturnDto _build() {
    final _$result =
        _$v ??
        _$ProcessInitialReturnDto._(
          isApproved: isApproved,
          staffNote: staffNote,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
