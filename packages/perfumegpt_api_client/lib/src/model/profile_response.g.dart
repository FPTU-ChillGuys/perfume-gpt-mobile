// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ProfileResponse extends ProfileResponse {
  @override
  final DateTime? dateOfBirth;
  @override
  final num? minBudget;
  @override
  final num? maxBudget;
  @override
  final BuiltList<CustomerNotePreferenceResponse> notePreferences;
  @override
  final BuiltList<CustomerFamilyPreferenceRespone> familyPreferences;
  @override
  final BuiltList<CustomerAttributePreferenceResponse> attributePreferences;

  factory _$ProfileResponse([void Function(ProfileResponseBuilder)? updates]) =>
      (ProfileResponseBuilder()..update(updates))._build();

  _$ProfileResponse._({
    this.dateOfBirth,
    this.minBudget,
    this.maxBudget,
    required this.notePreferences,
    required this.familyPreferences,
    required this.attributePreferences,
  }) : super._();
  @override
  ProfileResponse rebuild(void Function(ProfileResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ProfileResponseBuilder toBuilder() => ProfileResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ProfileResponse &&
        dateOfBirth == other.dateOfBirth &&
        minBudget == other.minBudget &&
        maxBudget == other.maxBudget &&
        notePreferences == other.notePreferences &&
        familyPreferences == other.familyPreferences &&
        attributePreferences == other.attributePreferences;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, dateOfBirth.hashCode);
    _$hash = $jc(_$hash, minBudget.hashCode);
    _$hash = $jc(_$hash, maxBudget.hashCode);
    _$hash = $jc(_$hash, notePreferences.hashCode);
    _$hash = $jc(_$hash, familyPreferences.hashCode);
    _$hash = $jc(_$hash, attributePreferences.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ProfileResponse')
          ..add('dateOfBirth', dateOfBirth)
          ..add('minBudget', minBudget)
          ..add('maxBudget', maxBudget)
          ..add('notePreferences', notePreferences)
          ..add('familyPreferences', familyPreferences)
          ..add('attributePreferences', attributePreferences))
        .toString();
  }
}

class ProfileResponseBuilder
    implements Builder<ProfileResponse, ProfileResponseBuilder> {
  _$ProfileResponse? _$v;

  DateTime? _dateOfBirth;
  DateTime? get dateOfBirth => _$this._dateOfBirth;
  set dateOfBirth(DateTime? dateOfBirth) => _$this._dateOfBirth = dateOfBirth;

  num? _minBudget;
  num? get minBudget => _$this._minBudget;
  set minBudget(num? minBudget) => _$this._minBudget = minBudget;

  num? _maxBudget;
  num? get maxBudget => _$this._maxBudget;
  set maxBudget(num? maxBudget) => _$this._maxBudget = maxBudget;

  ListBuilder<CustomerNotePreferenceResponse>? _notePreferences;
  ListBuilder<CustomerNotePreferenceResponse> get notePreferences =>
      _$this._notePreferences ??= ListBuilder<CustomerNotePreferenceResponse>();
  set notePreferences(
    ListBuilder<CustomerNotePreferenceResponse>? notePreferences,
  ) => _$this._notePreferences = notePreferences;

  ListBuilder<CustomerFamilyPreferenceRespone>? _familyPreferences;
  ListBuilder<CustomerFamilyPreferenceRespone> get familyPreferences =>
      _$this._familyPreferences ??=
          ListBuilder<CustomerFamilyPreferenceRespone>();
  set familyPreferences(
    ListBuilder<CustomerFamilyPreferenceRespone>? familyPreferences,
  ) => _$this._familyPreferences = familyPreferences;

  ListBuilder<CustomerAttributePreferenceResponse>? _attributePreferences;
  ListBuilder<CustomerAttributePreferenceResponse> get attributePreferences =>
      _$this._attributePreferences ??=
          ListBuilder<CustomerAttributePreferenceResponse>();
  set attributePreferences(
    ListBuilder<CustomerAttributePreferenceResponse>? attributePreferences,
  ) => _$this._attributePreferences = attributePreferences;

  ProfileResponseBuilder() {
    ProfileResponse._defaults(this);
  }

  ProfileResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _dateOfBirth = $v.dateOfBirth;
      _minBudget = $v.minBudget;
      _maxBudget = $v.maxBudget;
      _notePreferences = $v.notePreferences.toBuilder();
      _familyPreferences = $v.familyPreferences.toBuilder();
      _attributePreferences = $v.attributePreferences.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ProfileResponse other) {
    _$v = other as _$ProfileResponse;
  }

  @override
  void update(void Function(ProfileResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ProfileResponse build() => _build();

  _$ProfileResponse _build() {
    _$ProfileResponse _$result;
    try {
      _$result =
          _$v ??
          _$ProfileResponse._(
            dateOfBirth: dateOfBirth,
            minBudget: minBudget,
            maxBudget: maxBudget,
            notePreferences: notePreferences.build(),
            familyPreferences: familyPreferences.build(),
            attributePreferences: attributePreferences.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'notePreferences';
        notePreferences.build();
        _$failedField = 'familyPreferences';
        familyPreferences.build();
        _$failedField = 'attributePreferences';
        attributePreferences.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'ProfileResponse',
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
