class Address {
  final String id;
  final String recipientName;
  final String recipientPhoneNumber;
  final String street;
  final String ward;
  final String district;
  final String city;
  final String wardCode;
  final int districtId;
  final int provinceId;
  final bool isDefault;

  const Address({
    required this.id,
    required this.recipientName,
    required this.recipientPhoneNumber,
    required this.street,
    required this.ward,
    required this.district,
    required this.city,
    required this.wardCode,
    required this.districtId,
    required this.provinceId,
    this.isDefault = false,
  });

  String get fullAddress => '$street, $ward, $district, $city';
}
