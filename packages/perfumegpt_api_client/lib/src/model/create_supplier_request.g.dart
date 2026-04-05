// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_supplier_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreateSupplierRequest extends CreateSupplierRequest {
  @override
  final String name;
  @override
  final String contactEmail;
  @override
  final String phone;
  @override
  final String address;

  factory _$CreateSupplierRequest([
    void Function(CreateSupplierRequestBuilder)? updates,
  ]) => (CreateSupplierRequestBuilder()..update(updates))._build();

  _$CreateSupplierRequest._({
    required this.name,
    required this.contactEmail,
    required this.phone,
    required this.address,
  }) : super._();
  @override
  CreateSupplierRequest rebuild(
    void Function(CreateSupplierRequestBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  CreateSupplierRequestBuilder toBuilder() =>
      CreateSupplierRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateSupplierRequest &&
        name == other.name &&
        contactEmail == other.contactEmail &&
        phone == other.phone &&
        address == other.address;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, contactEmail.hashCode);
    _$hash = $jc(_$hash, phone.hashCode);
    _$hash = $jc(_$hash, address.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CreateSupplierRequest')
          ..add('name', name)
          ..add('contactEmail', contactEmail)
          ..add('phone', phone)
          ..add('address', address))
        .toString();
  }
}

class CreateSupplierRequestBuilder
    implements Builder<CreateSupplierRequest, CreateSupplierRequestBuilder> {
  _$CreateSupplierRequest? _$v;

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

  CreateSupplierRequestBuilder() {
    CreateSupplierRequest._defaults(this);
  }

  CreateSupplierRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _contactEmail = $v.contactEmail;
      _phone = $v.phone;
      _address = $v.address;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateSupplierRequest other) {
    _$v = other as _$CreateSupplierRequest;
  }

  @override
  void update(void Function(CreateSupplierRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateSupplierRequest build() => _build();

  _$CreateSupplierRequest _build() {
    final _$result =
        _$v ??
        _$CreateSupplierRequest._(
          name: BuiltValueNullFieldError.checkNotNull(
            name,
            r'CreateSupplierRequest',
            'name',
          ),
          contactEmail: BuiltValueNullFieldError.checkNotNull(
            contactEmail,
            r'CreateSupplierRequest',
            'contactEmail',
          ),
          phone: BuiltValueNullFieldError.checkNotNull(
            phone,
            r'CreateSupplierRequest',
            'phone',
          ),
          address: BuiltValueNullFieldError.checkNotNull(
            address,
            r'CreateSupplierRequest',
            'address',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
