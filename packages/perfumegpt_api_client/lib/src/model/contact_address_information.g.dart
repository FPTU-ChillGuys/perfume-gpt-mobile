// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'contact_address_information.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ContactAddressInformation extends ContactAddressInformation {
  @override
  final String contactName;
  @override
  final String contactPhoneNumber;
  @override
  final int? districtId;
  @override
  final String districtName;
  @override
  final String wardCode;
  @override
  final String wardName;
  @override
  final int? provinceId;
  @override
  final String provinceName;
  @override
  final String fullAddress;

  factory _$ContactAddressInformation([
    void Function(ContactAddressInformationBuilder)? updates,
  ]) => (ContactAddressInformationBuilder()..update(updates))._build();

  _$ContactAddressInformation._({
    required this.contactName,
    required this.contactPhoneNumber,
    this.districtId,
    required this.districtName,
    required this.wardCode,
    required this.wardName,
    this.provinceId,
    required this.provinceName,
    required this.fullAddress,
  }) : super._();
  @override
  ContactAddressInformation rebuild(
    void Function(ContactAddressInformationBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  ContactAddressInformationBuilder toBuilder() =>
      ContactAddressInformationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ContactAddressInformation &&
        contactName == other.contactName &&
        contactPhoneNumber == other.contactPhoneNumber &&
        districtId == other.districtId &&
        districtName == other.districtName &&
        wardCode == other.wardCode &&
        wardName == other.wardName &&
        provinceId == other.provinceId &&
        provinceName == other.provinceName &&
        fullAddress == other.fullAddress;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, contactName.hashCode);
    _$hash = $jc(_$hash, contactPhoneNumber.hashCode);
    _$hash = $jc(_$hash, districtId.hashCode);
    _$hash = $jc(_$hash, districtName.hashCode);
    _$hash = $jc(_$hash, wardCode.hashCode);
    _$hash = $jc(_$hash, wardName.hashCode);
    _$hash = $jc(_$hash, provinceId.hashCode);
    _$hash = $jc(_$hash, provinceName.hashCode);
    _$hash = $jc(_$hash, fullAddress.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ContactAddressInformation')
          ..add('contactName', contactName)
          ..add('contactPhoneNumber', contactPhoneNumber)
          ..add('districtId', districtId)
          ..add('districtName', districtName)
          ..add('wardCode', wardCode)
          ..add('wardName', wardName)
          ..add('provinceId', provinceId)
          ..add('provinceName', provinceName)
          ..add('fullAddress', fullAddress))
        .toString();
  }
}

class ContactAddressInformationBuilder
    implements
        Builder<ContactAddressInformation, ContactAddressInformationBuilder> {
  _$ContactAddressInformation? _$v;

  String? _contactName;
  String? get contactName => _$this._contactName;
  set contactName(String? contactName) => _$this._contactName = contactName;

  String? _contactPhoneNumber;
  String? get contactPhoneNumber => _$this._contactPhoneNumber;
  set contactPhoneNumber(String? contactPhoneNumber) =>
      _$this._contactPhoneNumber = contactPhoneNumber;

  int? _districtId;
  int? get districtId => _$this._districtId;
  set districtId(int? districtId) => _$this._districtId = districtId;

  String? _districtName;
  String? get districtName => _$this._districtName;
  set districtName(String? districtName) => _$this._districtName = districtName;

  String? _wardCode;
  String? get wardCode => _$this._wardCode;
  set wardCode(String? wardCode) => _$this._wardCode = wardCode;

  String? _wardName;
  String? get wardName => _$this._wardName;
  set wardName(String? wardName) => _$this._wardName = wardName;

  int? _provinceId;
  int? get provinceId => _$this._provinceId;
  set provinceId(int? provinceId) => _$this._provinceId = provinceId;

  String? _provinceName;
  String? get provinceName => _$this._provinceName;
  set provinceName(String? provinceName) => _$this._provinceName = provinceName;

  String? _fullAddress;
  String? get fullAddress => _$this._fullAddress;
  set fullAddress(String? fullAddress) => _$this._fullAddress = fullAddress;

  ContactAddressInformationBuilder() {
    ContactAddressInformation._defaults(this);
  }

  ContactAddressInformationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _contactName = $v.contactName;
      _contactPhoneNumber = $v.contactPhoneNumber;
      _districtId = $v.districtId;
      _districtName = $v.districtName;
      _wardCode = $v.wardCode;
      _wardName = $v.wardName;
      _provinceId = $v.provinceId;
      _provinceName = $v.provinceName;
      _fullAddress = $v.fullAddress;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ContactAddressInformation other) {
    _$v = other as _$ContactAddressInformation;
  }

  @override
  void update(void Function(ContactAddressInformationBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ContactAddressInformation build() => _build();

  _$ContactAddressInformation _build() {
    final _$result =
        _$v ??
        _$ContactAddressInformation._(
          contactName: BuiltValueNullFieldError.checkNotNull(
            contactName,
            r'ContactAddressInformation',
            'contactName',
          ),
          contactPhoneNumber: BuiltValueNullFieldError.checkNotNull(
            contactPhoneNumber,
            r'ContactAddressInformation',
            'contactPhoneNumber',
          ),
          districtId: districtId,
          districtName: BuiltValueNullFieldError.checkNotNull(
            districtName,
            r'ContactAddressInformation',
            'districtName',
          ),
          wardCode: BuiltValueNullFieldError.checkNotNull(
            wardCode,
            r'ContactAddressInformation',
            'wardCode',
          ),
          wardName: BuiltValueNullFieldError.checkNotNull(
            wardName,
            r'ContactAddressInformation',
            'wardName',
          ),
          provinceId: provinceId,
          provinceName: BuiltValueNullFieldError.checkNotNull(
            provinceName,
            r'ContactAddressInformation',
            'provinceName',
          ),
          fullAddress: BuiltValueNullFieldError.checkNotNull(
            fullAddress,
            r'ContactAddressInformation',
            'fullAddress',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
