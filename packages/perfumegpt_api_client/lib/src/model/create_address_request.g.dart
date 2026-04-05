// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_address_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreateAddressRequest extends CreateAddressRequest {
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

  factory _$CreateAddressRequest([
    void Function(CreateAddressRequestBuilder)? updates,
  ]) => (CreateAddressRequestBuilder()..update(updates))._build();

  _$CreateAddressRequest._({
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
  CreateAddressRequest rebuild(
    void Function(CreateAddressRequestBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  CreateAddressRequestBuilder toBuilder() =>
      CreateAddressRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateAddressRequest &&
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
    return (newBuiltValueToStringHelper(r'CreateAddressRequest')
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

class CreateAddressRequestBuilder
    implements Builder<CreateAddressRequest, CreateAddressRequestBuilder> {
  _$CreateAddressRequest? _$v;

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

  CreateAddressRequestBuilder() {
    CreateAddressRequest._defaults(this);
  }

  CreateAddressRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
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
  void replace(CreateAddressRequest other) {
    _$v = other as _$CreateAddressRequest;
  }

  @override
  void update(void Function(CreateAddressRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateAddressRequest build() => _build();

  _$CreateAddressRequest _build() {
    final _$result =
        _$v ??
        _$CreateAddressRequest._(
          recipientName: BuiltValueNullFieldError.checkNotNull(
            recipientName,
            r'CreateAddressRequest',
            'recipientName',
          ),
          recipientPhoneNumber: BuiltValueNullFieldError.checkNotNull(
            recipientPhoneNumber,
            r'CreateAddressRequest',
            'recipientPhoneNumber',
          ),
          street: BuiltValueNullFieldError.checkNotNull(
            street,
            r'CreateAddressRequest',
            'street',
          ),
          ward: BuiltValueNullFieldError.checkNotNull(
            ward,
            r'CreateAddressRequest',
            'ward',
          ),
          district: BuiltValueNullFieldError.checkNotNull(
            district,
            r'CreateAddressRequest',
            'district',
          ),
          city: BuiltValueNullFieldError.checkNotNull(
            city,
            r'CreateAddressRequest',
            'city',
          ),
          wardCode: BuiltValueNullFieldError.checkNotNull(
            wardCode,
            r'CreateAddressRequest',
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
