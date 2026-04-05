// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'supplier_lookup_item.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SupplierLookupItem extends SupplierLookupItem {
  @override
  final int? id;
  @override
  final String name;
  @override
  final String? phone;
  @override
  final String? contactEmail;

  factory _$SupplierLookupItem([
    void Function(SupplierLookupItemBuilder)? updates,
  ]) => (SupplierLookupItemBuilder()..update(updates))._build();

  _$SupplierLookupItem._({
    this.id,
    required this.name,
    this.phone,
    this.contactEmail,
  }) : super._();
  @override
  SupplierLookupItem rebuild(
    void Function(SupplierLookupItemBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  SupplierLookupItemBuilder toBuilder() =>
      SupplierLookupItemBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SupplierLookupItem &&
        id == other.id &&
        name == other.name &&
        phone == other.phone &&
        contactEmail == other.contactEmail;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, phone.hashCode);
    _$hash = $jc(_$hash, contactEmail.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SupplierLookupItem')
          ..add('id', id)
          ..add('name', name)
          ..add('phone', phone)
          ..add('contactEmail', contactEmail))
        .toString();
  }
}

class SupplierLookupItemBuilder
    implements Builder<SupplierLookupItem, SupplierLookupItemBuilder> {
  _$SupplierLookupItem? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _phone;
  String? get phone => _$this._phone;
  set phone(String? phone) => _$this._phone = phone;

  String? _contactEmail;
  String? get contactEmail => _$this._contactEmail;
  set contactEmail(String? contactEmail) => _$this._contactEmail = contactEmail;

  SupplierLookupItemBuilder() {
    SupplierLookupItem._defaults(this);
  }

  SupplierLookupItemBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _name = $v.name;
      _phone = $v.phone;
      _contactEmail = $v.contactEmail;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SupplierLookupItem other) {
    _$v = other as _$SupplierLookupItem;
  }

  @override
  void update(void Function(SupplierLookupItemBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SupplierLookupItem build() => _build();

  _$SupplierLookupItem _build() {
    final _$result =
        _$v ??
        _$SupplierLookupItem._(
          id: id,
          name: BuiltValueNullFieldError.checkNotNull(
            name,
            r'SupplierLookupItem',
            'name',
          ),
          phone: phone,
          contactEmail: contactEmail,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
