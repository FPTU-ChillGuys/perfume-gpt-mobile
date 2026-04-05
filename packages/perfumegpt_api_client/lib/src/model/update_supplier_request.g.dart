// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_supplier_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UpdateSupplierRequest extends UpdateSupplierRequest {
  @override
  final String name;
  @override
  final String contactEmail;
  @override
  final String phone;
  @override
  final String address;

  factory _$UpdateSupplierRequest([
    void Function(UpdateSupplierRequestBuilder)? updates,
  ]) => (UpdateSupplierRequestBuilder()..update(updates))._build();

  _$UpdateSupplierRequest._({
    required this.name,
    required this.contactEmail,
    required this.phone,
    required this.address,
  }) : super._();
  @override
  UpdateSupplierRequest rebuild(
    void Function(UpdateSupplierRequestBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  UpdateSupplierRequestBuilder toBuilder() =>
      UpdateSupplierRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UpdateSupplierRequest &&
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
    return (newBuiltValueToStringHelper(r'UpdateSupplierRequest')
          ..add('name', name)
          ..add('contactEmail', contactEmail)
          ..add('phone', phone)
          ..add('address', address))
        .toString();
  }
}

class UpdateSupplierRequestBuilder
    implements Builder<UpdateSupplierRequest, UpdateSupplierRequestBuilder> {
  _$UpdateSupplierRequest? _$v;

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

  UpdateSupplierRequestBuilder() {
    UpdateSupplierRequest._defaults(this);
  }

  UpdateSupplierRequestBuilder get _$this {
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
  void replace(UpdateSupplierRequest other) {
    _$v = other as _$UpdateSupplierRequest;
  }

  @override
  void update(void Function(UpdateSupplierRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UpdateSupplierRequest build() => _build();

  _$UpdateSupplierRequest _build() {
    final _$result =
        _$v ??
        _$UpdateSupplierRequest._(
          name: BuiltValueNullFieldError.checkNotNull(
            name,
            r'UpdateSupplierRequest',
            'name',
          ),
          contactEmail: BuiltValueNullFieldError.checkNotNull(
            contactEmail,
            r'UpdateSupplierRequest',
            'contactEmail',
          ),
          phone: BuiltValueNullFieldError.checkNotNull(
            phone,
            r'UpdateSupplierRequest',
            'phone',
          ),
          address: BuiltValueNullFieldError.checkNotNull(
            address,
            r'UpdateSupplierRequest',
            'address',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
