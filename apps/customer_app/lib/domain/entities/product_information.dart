class ProductInformation {
  final String productCode;
  final String brandName;
  final String origin;
  final int? releaseYear;
  final String? gender;
  final String scentGroup;
  final String style;
  final String topNotes;
  final String heartNotes;
  final String baseNotes;
  final String description;

  const ProductInformation({
    required this.productCode,
    required this.brandName,
    required this.origin,
    this.releaseYear,
    this.gender,
    required this.scentGroup,
    required this.style,
    required this.topNotes,
    required this.heartNotes,
    required this.baseNotes,
    required this.description,
  });
}
