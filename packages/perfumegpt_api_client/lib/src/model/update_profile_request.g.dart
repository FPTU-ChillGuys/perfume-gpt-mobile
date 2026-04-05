// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_profile_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UpdateProfileRequest extends UpdateProfileRequest {
  @override
  final DateTime? dateOfBirth;
  @override
  final num? minBudget;
  @override
  final num? maxBudget;
  @override
  final BuiltList<UpdateNotePreferenceRequest>? notePreferenceIds;
  @override
  final BuiltList<int>? familyPreferenceIds;
  @override
  final BuiltList<int>? attributePreferenceIds;

  factory _$UpdateProfileRequest([
    void Function(UpdateProfileRequestBuilder)? updates,
  ]) => (UpdateProfileRequestBuilder()..update(updates))._build();

  _$UpdateProfileRequest._({
    this.dateOfBirth,
    this.minBudget,
    this.maxBudget,
    this.notePreferenceIds,
    this.familyPreferenceIds,
    this.attributePreferenceIds,
  }) : super._();
  @override
  UpdateProfileRequest rebuild(
    void Function(UpdateProfileRequestBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  UpdateProfileRequestBuilder toBuilder() =>
      UpdateProfileRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UpdateProfileRequest &&
        dateOfBirth == other.dateOfBirth &&
        minBudget == other.minBudget &&
        maxBudget == other.maxBudget &&
        notePreferenceIds == other.notePreferenceIds &&
        familyPreferenceIds == other.familyPreferenceIds &&
        attributePreferenceIds == other.attributePreferenceIds;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, dateOfBirth.hashCode);
    _$hash = $jc(_$hash, minBudget.hashCode);
    _$hash = $jc(_$hash, maxBudget.hashCode);
    _$hash = $jc(_$hash, notePreferenceIds.hashCode);
    _$hash = $jc(_$hash, familyPreferenceIds.hashCode);
    _$hash = $jc(_$hash, attributePreferenceIds.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'UpdateProfileRequest')
          ..add('dateOfBirth', dateOfBirth)
          ..add('minBudget', minBudget)
          ..add('maxBudget', maxBudget)
          ..add('notePreferenceIds', notePreferenceIds)
          ..add('familyPreferenceIds', familyPreferenceIds)
          ..add('attributePreferenceIds', attributePreferenceIds))
        .toString();
  }
}

class UpdateProfileRequestBuilder
    implements Builder<UpdateProfileRequest, UpdateProfileRequestBuilder> {
  _$UpdateProfileRequest? _$v;

  DateTime? _dateOfBirth;
  DateTime? get dateOfBirth => _$this._dateOfBirth;
  set dateOfBirth(DateTime? dateOfBirth) => _$this._dateOfBirth = dateOfBirth;

  num? _minBudget;
  num? get minBudget => _$this._minBudget;
  set minBudget(num? minBudget) => _$this._minBudget = minBudget;

  num? _maxBudget;
  num? get maxBudget => _$this._maxBudget;
  set maxBudget(num? maxBudget) => _$this._maxBudget = maxBudget;

  ListBuilder<UpdateNotePreferenceRequest>? _notePreferenceIds;
  ListBuilder<UpdateNotePreferenceRequest> get notePreferenceIds =>
      _$this._notePreferenceIds ??= ListBuilder<UpdateNotePreferenceRequest>();
  set notePreferenceIds(
    ListBuilder<UpdateNotePreferenceRequest>? notePreferenceIds,
  ) => _$this._notePreferenceIds = notePreferenceIds;

  ListBuilder<int>? _familyPreferenceIds;
  ListBuilder<int> get familyPreferenceIds =>
      _$this._familyPreferenceIds ??= ListBuilder<int>();
  set familyPreferenceIds(ListBuilder<int>? familyPreferenceIds) =>
      _$this._familyPreferenceIds = familyPreferenceIds;

  ListBuilder<int>? _attributePreferenceIds;
  ListBuilder<int> get attributePreferenceIds =>
      _$this._attributePreferenceIds ??= ListBuilder<int>();
  set attributePreferenceIds(ListBuilder<int>? attributePreferenceIds) =>
      _$this._attributePreferenceIds = attributePreferenceIds;

  UpdateProfileRequestBuilder() {
    UpdateProfileRequest._defaults(this);
  }

  UpdateProfileRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _dateOfBirth = $v.dateOfBirth;
      _minBudget = $v.minBudget;
      _maxBudget = $v.maxBudget;
      _notePreferenceIds = $v.notePreferenceIds?.toBuilder();
      _familyPreferenceIds = $v.familyPreferenceIds?.toBuilder();
      _attributePreferenceIds = $v.attributePreferenceIds?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UpdateProfileRequest other) {
    _$v = other as _$UpdateProfileRequest;
  }

  @override
  void update(void Function(UpdateProfileRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UpdateProfileRequest build() => _build();

  _$UpdateProfileRequest _build() {
    _$UpdateProfileRequest _$result;
    try {
      _$result =
          _$v ??
          _$UpdateProfileRequest._(
            dateOfBirth: dateOfBirth,
            minBudget: minBudget,
            maxBudget: maxBudget,
            notePreferenceIds: _notePreferenceIds?.build(),
            familyPreferenceIds: _familyPreferenceIds?.build(),
            attributePreferenceIds: _attributePreferenceIds?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'notePreferenceIds';
        _notePreferenceIds?.build();
        _$failedField = 'familyPreferenceIds';
        _familyPreferenceIds?.build();
        _$failedField = 'attributePreferenceIds';
        _attributePreferenceIds?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'UpdateProfileRequest',
          _$failedField,
          e.toString(),
        );
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
