// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'supplier_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SupplierResponse extends SupplierResponse {
  @override
  final int? id;
  @override
  final String name;
  @override
  final String contactEmail;
  @override
  final String phone;
  @override
  final String address;

  factory _$SupplierResponse([
    void Function(SupplierResponseBuilder)? updates,
  ]) => (SupplierResponseBuilder()..update(updates))._build();

  _$SupplierResponse._({
    this.id,
    required this.name,
    required this.contactEmail,
    required this.phone,
    required this.address,
  }) : super._();
  @override
  SupplierResponse rebuild(void Function(SupplierResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SupplierResponseBuilder toBuilder() =>
      SupplierResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SupplierResponse &&
        id == other.id &&
        name == other.name &&
        contactEmail == other.contactEmail &&
        phone == other.phone &&
        address == other.address;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, contactEmail.hashCode);
    _$hash = $jc(_$hash, phone.hashCode);
    _$hash = $jc(_$hash, address.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SupplierResponse')
          ..add('id', id)
          ..add('name', name)
          ..add('contactEmail', contactEmail)
          ..add('phone', phone)
          ..add('address', address))
        .toString();
  }
}

class SupplierResponseBuilder
    implements Builder<SupplierResponse, SupplierResponseBuilder> {
  _$SupplierResponse? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _contactEmail;
  String? get contactEmail => _$this._contactEmail;
  set contactEmail(String? contactEmail) => _$this._contactEmail = contactEmail;

  String? _phone;
  String? get phone => _$this._phone;
  set phone(String? phone) => _$this._phone = phone;

  String? _address;
  String? get address => _$this._address;
  set address(String? address) => _$this._address = address;

  SupplierResponseBuilder() {
    SupplierResponse._defaults(this);
  }

  SupplierResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _name = $v.name;
      _contactEmail = $v.contactEmail;
      _phone = $v.phone;
      _address = $v.address;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SupplierResponse other) {
    _$v = other as _$SupplierResponse;
  }

  @override
  void update(void Function(SupplierResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SupplierResponse build() => _build();

  _$SupplierResponse _build() {
    final _$result =
        _$v ??
        _$SupplierResponse._(
          id: id,
          name: BuiltValueNullFieldError.checkNotNull(
            name,
            r'SupplierResponse',
            'name',
          ),
          contactEmail: BuiltValueNullFieldError.checkNotNull(
            contactEmail,
            r'SupplierResponse',
            'contactEmail',
          ),
          phone: BuiltValueNullFieldError.checkNotNull(
            phone,
            r'SupplierResponse',
            'phone',
          ),
          address: BuiltValueNullFieldError.checkNotNull(
            address,
            r'SupplierResponse',
            'address',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
