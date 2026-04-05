// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'customer_family_preference_respone.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CustomerFamilyPreferenceRespone
    extends CustomerFamilyPreferenceRespone {
  @override
  final int? familyId;
  @override
  final String familyName;

  factory _$CustomerFamilyPreferenceRespone([
    void Function(CustomerFamilyPreferenceResponeBuilder)? updates,
  ]) => (CustomerFamilyPreferenceResponeBuilder()..update(updates))._build();

  _$CustomerFamilyPreferenceRespone._({this.familyId, required this.familyName})
    : super._();
  @override
  CustomerFamilyPreferenceRespone rebuild(
    void Function(CustomerFamilyPreferenceResponeBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  CustomerFamilyPreferenceResponeBuilder toBuilder() =>
      CustomerFamilyPreferenceResponeBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CustomerFamilyPreferenceRespone &&
        familyId == other.familyId &&
        familyName == other.familyName;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, familyId.hashCode);
    _$hash = $jc(_$hash, familyName.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CustomerFamilyPreferenceRespone')
          ..add('familyId', familyId)
          ..add('familyName', familyName))
        .toString();
  }
}

class CustomerFamilyPreferenceResponeBuilder
    implements
        Builder<
          CustomerFamilyPreferenceRespone,
          CustomerFamilyPreferenceResponeBuilder
        > {
  _$CustomerFamilyPreferenceRespone? _$v;

  int? _familyId;
  int? get familyId => _$this._familyId;
  set familyId(int? familyId) => _$this._familyId = familyId;

  String? _familyName;
  String? get familyName => _$this._familyName;
  set familyName(String? familyName) => _$this._familyName = familyName;

  CustomerFamilyPreferenceResponeBuilder() {
    CustomerFamilyPreferenceRespone._defaults(this);
  }

  CustomerFamilyPreferenceResponeBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _familyId = $v.familyId;
      _familyName = $v.familyName;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CustomerFamilyPreferenceRespone other) {
    _$v = other as _$CustomerFamilyPreferenceRespone;
  }

  @override
  void update(void Function(CustomerFamilyPreferenceResponeBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CustomerFamilyPreferenceRespone build() => _build();

  _$CustomerFamilyPreferenceRespone _build() {
    final _$result =
        _$v ??
        _$CustomerFamilyPreferenceRespone._(
          familyId: familyId,
          familyName: BuiltValueNullFieldError.checkNotNull(
            familyName,
            r'CustomerFamilyPreferenceRespone',
            'familyName',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
