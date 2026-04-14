class HomeBanner {
  final String id;
  final String title;
  final String imageUrl;
  final String? mobileImageUrl;
  final String? altText;
  final String position; // HomeHeroSlider, HomeSubBanner, Popup, CategoryTop
  final int displayOrder;
  final bool isActive;
  final String? startDate;
  final String? endDate;
  final String linkType; // Campaign, Product, ProductVariant, Brand
  final String? linkTarget;

  const HomeBanner({
    required this.id,
    required this.title,
    required this.imageUrl,
    this.mobileImageUrl,
    this.altText,
    required this.position,
    required this.displayOrder,
    required this.isActive,
    this.startDate,
    this.endDate,
    required this.linkType,
    this.linkTarget,
  });
}
