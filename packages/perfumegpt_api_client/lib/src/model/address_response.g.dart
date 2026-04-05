// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'address_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AddressResponse extends AddressResponse {
  @override
  final String? id;
  @override
  final String recipientName;
  @override
  final String recipientPhoneNumber;
  @override
  final String street;
  @override
  final String ward;
  @override
  final String district;
  @override
  final String city;
  @override
  final String wardCode;
  @override
  final int? districtId;
  @override
  final int? provinceId;
  @override
  final bool? isDefault;

  factory _$AddressResponse([void Function(AddressResponseBuilder)? updates]) =>
      (AddressResponseBuilder()..update(updates))._build();

  _$AddressResponse._({
    this.id,
    required this.recipientName,
    required this.recipientPhoneNumber,
    required this.street,
    required this.ward,
    required this.district,
    required this.city,
    required this.wardCode,
    this.districtId,
    this.provinceId,
    this.isDefault,
  }) : super._();
  @override
  AddressResponse rebuild(void Function(AddressResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AddressResponseBuilder toBuilder() => AddressResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AddressResponse &&
        id == other.id &&
        recipientName == other.recipientName &&
        recipientPhoneNumber == other.recipientPhoneNumber &&
        street == other.street &&
        ward == other.ward &&
        district == other.district &&
        city == other.city &&
        wardCode == other.wardCode &&
        districtId == other.districtId &&
        provinceId == other.provinceId &&
        isDefault == other.isDefault;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, recipientName.hashCode);
    _$hash = $jc(_$hash, recipientPhoneNumber.hashCode);
    _$hash = $jc(_$hash, street.hashCode);
    _$hash = $jc(_$hash, ward.hashCode);
    _$hash = $jc(_$hash, district.hashCode);
    _$hash = $jc(_$hash, city.hashCode);
    _$hash = $jc(_$hash, wardCode.hashCode);
    _$hash = $jc(_$hash, districtId.hashCode);
    _$hash = $jc(_$hash, provinceId.hashCode);
    _$hash = $jc(_$hash, isDefault.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AddressResponse')
          ..add('id', id)
          ..add('recipientName', recipientName)
          ..add('recipientPhoneNumber', recipientPhoneNumber)
          ..add('street', street)
          ..add('ward', ward)
          ..add('district', district)
          ..add('city', city)
          ..add('wardCode', wardCode)
          ..add('districtId', districtId)
          ..add('provinceId', provinceId)
          ..add('isDefault', isDefault))
        .toString();
  }
}

class AddressResponseBuilder
    implements Builder<AddressResponse, AddressResponseBuilder> {
  _$AddressResponse? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _recipientName;
  String? get recipientName => _$this._recipientName;
  set recipientName(String? recipientName) =>
      _$this._recipientName = recipientName;

  String? _recipientPhoneNumber;
  String? get recipientPhoneNumber => _$this._recipientPhoneNumber;
  set recipientPhoneNumber(String? recipientPhoneNumber) =>
      _$this._recipientPhoneNumber = recipientPhoneNumber;

  String? _street;
  String? get street => _$this._street;
  set street(String? street) => _$this._street = street;

  String? _ward;
  String? get ward => _$this._ward;
  set ward(String? ward) => _$this._ward = ward;

  String? _district;
  String? get district => _$this._district;
  set district(String? district) => _$this._district = district;

  String? _city;
  String? get city => _$this._city;
  set city(String? city) => _$this._city = city;

  String? _wardCode;
  String? get wardCode => _$this._wardCode;
  set wardCode(String? wardCode) => _$this._wardCode = wardCode;

  int? _districtId;
  int? get districtId => _$this._districtId;
  set districtId(int? districtId) => _$this._districtId = districtId;

  int? _provinceId;
  int? get provinceId => _$this._provinceId;
  set provinceId(int? provinceId) => _$this._provinceId = provinceId;

  bool? _isDefault;
  bool? get isDefault => _$this._isDefault;
  set isDefault(bool? isDefault) => _$this._isDefault = isDefault;

  AddressResponseBuilder() {
    AddressResponse._defaults(this);
  }

  AddressResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _recipientName = $v.recipientName;
      _recipientPhoneNumber = $v.recipientPhoneNumber;
      _street = $v.street;
      _ward = $v.ward;
      _district = $v.district;
      _city = $v.city;
      _wardCode = $v.wardCode;
      _districtId = $v.districtId;
      _provinceId = $v.provinceId;
      _isDefault = $v.isDefault;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AddressResponse other) {
    _$v = other as _$AddressResponse;
  }

  @override
  void update(void Function(AddressResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AddressResponse build() => _build();

  _$AddressResponse _build() {
    final _$result =
        _$v ??
        _$AddressResponse._(
          id: id,
          recipientName: BuiltValueNullFieldError.checkNotNull(
            recipientName,
            r'AddressResponse',
            'recipientName',
          ),
          recipientPhoneNumber: BuiltValueNullFieldError.checkNotNull(
            recipientPhoneNumber,
            r'AddressResponse',
            'recipientPhoneNumber',
          ),
          street: BuiltValueNullFieldError.checkNotNull(
            street,
            r'AddressResponse',
            'street',
          ),
          ward: BuiltValueNullFieldError.checkNotNull(
            ward,
            r'AddressResponse',
            'ward',
          ),
          district: BuiltValueNullFieldError.checkNotNull(
            district,
            r'AddressResponse',
            'district',
          ),
          city: BuiltValueNullFieldError.checkNotNull(
            city,
            r'AddressResponse',
            'city',
          ),
          wardCode: BuiltValueNullFieldError.checkNotNull(
            wardCode,
            r'AddressResponse',
            'wardCode',
          ),
          districtId: districtId,
          provinceId: provinceId,
          isDefault: isDefault,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
