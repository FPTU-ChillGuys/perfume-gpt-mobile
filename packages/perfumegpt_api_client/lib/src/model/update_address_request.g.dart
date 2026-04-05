// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_address_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UpdateAddressRequest extends UpdateAddressRequest {
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

  factory _$UpdateAddressRequest([
    void Function(UpdateAddressRequestBuilder)? updates,
  ]) => (UpdateAddressRequestBuilder()..update(updates))._build();

  _$UpdateAddressRequest._({
    required this.recipientName,
    required this.recipientPhoneNumber,
    required this.street,
    required this.ward,
    required this.district,
    required this.city,
    required this.wardCode,
    this.districtId,
    this.provinceId,
  }) : super._();
  @override
  UpdateAddressRequest rebuild(
    void Function(UpdateAddressRequestBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  UpdateAddressRequestBuilder toBuilder() =>
      UpdateAddressRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UpdateAddressRequest &&
        recipientName == other.recipientName &&
        recipientPhoneNumber == other.recipientPhoneNumber &&
        street == other.street &&
        ward == other.ward &&
        district == other.district &&
        city == other.city &&
        wardCode == other.wardCode &&
        districtId == other.districtId &&
        provinceId == other.provinceId;
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
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'UpdateAddressRequest')
          ..add('recipientName', recipientName)
          ..add('recipientPhoneNumber', recipientPhoneNumber)
          ..add('street', street)
          ..add('ward', ward)
          ..add('district', district)
          ..add('city', city)
          ..add('wardCode', wardCode)
          ..add('districtId', districtId)
          ..add('provinceId', provinceId))
        .toString();
  }
}

class UpdateAddressRequestBuilder
    implements Builder<UpdateAddressRequest, UpdateAddressRequestBuilder> {
  _$UpdateAddressRequest? _$v;

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

  UpdateAddressRequestBuilder() {
    UpdateAddressRequest._defaults(this);
  }

  UpdateAddressRequestBuilder get _$this {
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
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UpdateAddressRequest other) {
    _$v = other as _$UpdateAddressRequest;
  }

  @override
  void update(void Function(UpdateAddressRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UpdateAddressRequest build() => _build();

  _$UpdateAddressRequest _build() {
    final _$result =
        _$v ??
        _$UpdateAddressRequest._(
          recipientName: BuiltValueNullFieldError.checkNotNull(
            recipientName,
            r'UpdateAddressRequest',
            'recipientName',
          ),
          recipientPhoneNumber: BuiltValueNullFieldError.checkNotNull(
            recipientPhoneNumber,
            r'UpdateAddressRequest',
            'recipientPhoneNumber',
          ),
          street: BuiltValueNullFieldError.checkNotNull(
            street,
            r'UpdateAddressRequest',
            'street',
          ),
          ward: BuiltValueNullFieldError.checkNotNull(
            ward,
            r'UpdateAddressRequest',
            'ward',
          ),
          district: BuiltValueNullFieldError.checkNotNull(
            district,
            r'UpdateAddressRequest',
            'district',
          ),
          city: BuiltValueNullFieldError.checkNotNull(
            city,
            r'UpdateAddressRequest',
            'city',
          ),
          wardCode: BuiltValueNullFieldError.checkNotNull(
            wardCode,
            r'UpdateAddressRequest',
            'wardCode',
          ),
          districtId: districtId,
          provinceId: provinceId,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
