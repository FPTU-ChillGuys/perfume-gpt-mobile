import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_widget_from_html_core/flutter_widget_from_html_core.dart';
import 'package:customer_app/features/order/presentation/providers/cart_provider.dart';
import 'package:customer_app/core/theme/app_colors.dart';
import 'package:customer_app/core/utils/image_url_helper.dart';
import 'package:customer_app/features/review/presentation/providers/review_providers.dart';
import 'package:customer_app/features/store/presentation/providers/product_provider.dart';
import 'package:customer_app/domain/entities/product.dart';
import 'package:customer_app/domain/entities/product_information.dart';
import 'package:customer_app/domain/entities/product_variant.dart';
import 'package:customer_app/core/utils/price_formatter.dart';
import 'package:intl/intl.dart';
import 'package:go_router/go_router.dart';

// ── Helpers ─────────────────────────────────────────────────────────────────

String _convertGenderToVietnamese(String? gender) {
  switch (gender) {
    case 'Male':
      return 'Nam';
    case 'Female':
      return 'Nữ';
    case 'Unisex':
      return 'Unisex';
    default:
      return gender ?? '';
  }
}

String _formatSavingPercent(double percent) {
  if (percent >= 1) return '${percent.round()}%';
  if (percent >= 0.1) return '${percent.toStringAsFixed(1)}%';
  if (percent > 0) return '${percent.toStringAsFixed(2)}%';
  return '0%';
}

class ProductDetailsPage extends ConsumerStatefulWidget {
  final String productId;

  const ProductDetailsPage({super.key, required this.productId});

  @override
  ConsumerState<ProductDetailsPage> createState() => _ProductDetailsPageState();
}

class _ProductDetailsPageState extends ConsumerState<ProductDetailsPage>
    with SingleTickerProviderStateMixin {
  ProductVariant? _selectedVariant;
  int _currentImageIndex = 0;
  final PageController _pageController = PageController();
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _pageController.dispose();
    _tabController.dispose();
    super.dispose();
  }

  void _selectVariant(ProductVariant variant) {
    setState(() {
      _selectedVariant = variant;
      // Switch images to variant's images if available
      if (variant.imageUrls.isNotEmpty) {
        _currentImageIndex = 0;
        _pageController.jumpToPage(0);
      }
    });
  }

  Future<void> _addToCart(Product product) async {
    final variantId = _selectedVariant?.id;
    if (variantId == null) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Vui lòng chọn size để mua'),
          backgroundColor: Colors.orange,
        ),
      );
      return;
    }
    if (_selectedVariant != null && !_selectedVariant!.isInStock) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Size này đã hết hàng'),
          backgroundColor: Colors.orange,
        ),
      );
      return;
    }
    try {
      // Use addProduct to support guest mode (provides full entity info)
      await ref
          .read(cartProvider.notifier)
          .addProduct(product, variantId: variantId);
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(
              'Đã thêm ${product.name} (${_selectedVariant!.displayName}) vào giỏ hàng',
            ),
            backgroundColor: Colors.green,
          ),
        );
      }
    } catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Không thể thêm vào giỏ hàng: $e'),
            backgroundColor: Colors.red,
          ),
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final productAsync = ref.watch(productDetailsProvider(widget.productId));

    return productAsync.when(
      data: (product) {
        // Auto-select first in-stock variant
        if (_selectedVariant == null && product.variants.isNotEmpty) {
          final firstInStock = product.variants
              .where((v) => v.isInStock)
              .firstOrNull;
          _selectedVariant = firstInStock ?? product.variants.first;
        }

        final List<String> displayImages =
            _selectedVariant?.imageUrls.isNotEmpty == true
            ? _selectedVariant!.imageUrls
            : [product.imageUrl];

        return LayoutBuilder(
          builder: (context, constraints) {
            final isWide = constraints.maxWidth >= 600;
            return isWide
                ? _buildTabletLayout(context, product, displayImages)
                : _buildPhoneLayout(context, product, displayImages);
          },
        );
      },
      loading: () => Scaffold(
        appBar: AppBar(),
        body: const Center(child: CircularProgressIndicator()),
      ),
      error: (error, stack) => Scaffold(
        appBar: AppBar(),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(Icons.error_outline, size: 48, color: Colors.red),
              const SizedBox(height: 16),
              const Text('Không thể tải thông tin sản phẩm'),
              TextButton(
                onPressed: () =>
                    ref.invalidate(productDetailsProvider(widget.productId)),
                child: const Text('Thử lại'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // ── Phone layout: full-width SliverAppBar image on top ──────────────────
  Widget _buildPhoneLayout(
    BuildContext context,
    Product product,
    List<String> displayImages,
  ) {
    final cartItemCount = ref.watch(cartItemCountProvider);
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 340,
            pinned: true,
            elevation: 0,
            backgroundColor: Theme.of(context).scaffoldBackgroundColor,
            flexibleSpace: FlexibleSpaceBar(
              background: _ImageGallery(
                images: displayImages,
                productId: product.id,
                pageController: _pageController,
                currentIndex: _currentImageIndex,
                onPageChanged: (index) =>
                    setState(() => _currentImageIndex = index),
              ),
            ),
            actions: [
              Container(
                margin: const EdgeInsets.only(right: 8),
                decoration: BoxDecoration(
                  color: Colors.white.withValues(alpha: 0.92),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: IconButton(
                  onPressed: () => context.push('/cart'),
                  icon: Stack(
                    clipBehavior: Clip.none,
                    children: [
                      const Icon(
                        Icons.shopping_bag_outlined,
                        color: AppColors.primary,
                      ),
                      if (cartItemCount > 0)
                        Positioned(
                          right: -6,
                          top: -6,
                          child: _CartBadge(count: cartItemCount),
                        ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          SliverToBoxAdapter(
            child: Container(
              padding: const EdgeInsets.fromLTRB(16, 20, 16, 24),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.vertical(top: Radius.circular(28)),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ..._productContentWidgets(context, product),
                  const SizedBox(height: 100),
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: _AddToCartBar(
        product: product,
        selectedVariant: _selectedVariant,
        onAddToCart: () => _addToCart(product),
        onBuyNow: () => _buyNow(product),
      ),
    );
  }

  // ── Tablet layout: image left, content right side-by-side ───────────────
  Widget _buildTabletLayout(
    BuildContext context,
    Product product,
    List<String> displayImages,
  ) {
    final cartItemCount = ref.watch(cartItemCountProvider);
    return Scaffold(
      appBar: AppBar(
        title: Text(product.name),
        actions: [
          IconButton(
            onPressed: () => context.push('/cart'),
            icon: Stack(
              clipBehavior: Clip.none,
              children: [
                const Icon(Icons.shopping_cart_outlined),
                if (cartItemCount > 0)
                  Positioned(
                    right: -6,
                    top: -6,
                    child: _CartBadge(count: cartItemCount),
                  ),
              ],
            ),
          ),
        ],
      ),
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Left sticky image panel
          SizedBox(
            width: 420,
            child: Column(
              children: [
                AspectRatio(
                  aspectRatio: 0.9,
                  child: _ImageGallery(
                    images: displayImages,
                    productId: product.id,
                    pageController: _pageController,
                    currentIndex: _currentImageIndex,
                    onPageChanged: (index) =>
                        setState(() => _currentImageIndex = index),
                  ),
                ),
              ],
            ),
          ),
          // Right scrollable content
          Expanded(
            child: SingleChildScrollView(
              padding: const EdgeInsets.fromLTRB(24, 16, 24, 120),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: _productContentWidgets(context, product),
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: _AddToCartBar(
        product: product,
        selectedVariant: _selectedVariant,
        onAddToCart: () => _addToCart(product),
        onBuyNow: () => _buyNow(product),
      ),
    );
  }

  // ── Shared content widgets ───────────────────────────────────────────────
  Future<void> _buyNow(Product product) async {
    final variantId = _selectedVariant?.id;
    if (variantId == null) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Vui lòng chọn size để mua'),
          backgroundColor: Colors.orange,
        ),
      );
      return;
    }
    if (_selectedVariant != null && !_selectedVariant!.isInStock) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Size này đã hết hàng'),
          backgroundColor: Colors.orange,
        ),
      );
      return;
    }
    try {
      await ref
          .read(cartProvider.notifier)
          .addProduct(product, variantId: variantId);
      if (mounted) {
        context.push('/checkout');
      }
    } catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Không thể thêm vào giỏ hàng: $e'),
            backgroundColor: Colors.red,
          ),
        );
      }
    }
  }

  List<Widget> _productContentWidgets(BuildContext context, Product product) {
    final variant = _selectedVariant;
    final theme = Theme.of(context);

    // Eagerly watch product information (parallel with product detail, like React FE)
    final infoAsync = ref.watch(productInformationProvider(widget.productId));
    final info = infoAsync.whenData((v) => v).value;

    // Brand + SKU with information fallback (matching React FE)
    final brandName = info?.brandName ?? product.brand;
    final skuDisplay = variant != null && variant.sku.isNotEmpty
        ? variant.sku
        : info?.productCode ?? 'Đang cập nhật';

    // Price logic matching React FE
    final basePrice = variant?.basePrice ?? 0;
    final discountedPrice = variant?.discountedPrice ?? 0;
    final retailPrice = variant?.retailPrice ?? 0;
    final hasCampaignDiscount = variant != null && variant.hasCampaignDiscount;
    final campaignDisplayedPrice = hasCampaignDiscount
        ? discountedPrice
        : basePrice;
    final hasRetailComparison = basePrice > 0 && retailPrice > basePrice;
    final savingAmount = hasCampaignDiscount
        ? basePrice - discountedPrice
        : hasRetailComparison
        ? retailPrice - basePrice
        : 0.0;
    final savingPercent = hasCampaignDiscount && basePrice > 0
        ? (savingAmount / basePrice) * 100
        : hasRetailComparison && retailPrice > 0
        ? (savingAmount / retailPrice) * 100
        : 0.0;
    final campaignName = variant?.campaignName?.trim() ?? '';
    final voucherCode = variant?.voucherCode?.trim() ?? '';
    final showCampaignCard =
        hasCampaignDiscount &&
        (campaignName.isNotEmpty || voucherCode.isNotEmpty);

    return [
      // ── Product name ──
      Text(
        product.name,
        style: theme.textTheme.headlineSmall?.copyWith(
          fontWeight: FontWeight.bold,
        ),
      ),
      const SizedBox(height: 8),

      // ── Brand + SKU (with information fallback like React FE) ──
      _InfoLine(label: 'Thương hiệu', value: brandName),
      _InfoLine(label: 'Mã hàng', value: skuDisplay),
      const SizedBox(height: 8),

      // ── Rating (from variant review stats, matching React FE) ──
      _ProductRatingRow(variantId: _selectedVariant?.id),
      const SizedBox(height: 12),

      const Divider(),
      const SizedBox(height: 12),

      // ── Variant selector ──
      if (product.variants.isNotEmpty) ...[
        Text(
          'Lựa chọn size',
          style: theme.textTheme.titleMedium?.copyWith(
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 10),
        _VariantSelector(
          variants: product.variants,
          selectedVariant: _selectedVariant,
          onSelect: _selectVariant,
        ),
        const SizedBox(height: 16),
      ],

      // ── Campaign card ──
      if (showCampaignCard) ...[
        _CampaignCard(
          campaignName: campaignName,
          voucherCode: voucherCode,
          savingPercent: savingPercent,
        ),
        const SizedBox(height: 12),
      ],

      // ── Price section ──
      if (variant != null) ...[
        if (hasCampaignDiscount) ...[
          Row(
            crossAxisAlignment: CrossAxisAlignment.baseline,
            textBaseline: TextBaseline.alphabetic,
            children: [
              Text(
                PriceFormatter.format(campaignDisplayedPrice),
                style: theme.textTheme.headlineMedium?.copyWith(
                  fontWeight: FontWeight.bold,
                  color: theme.colorScheme.error,
                ),
              ),
              const SizedBox(width: 8),
              Text(
                PriceFormatter.format(basePrice),
                style: theme.textTheme.titleMedium?.copyWith(
                  color: Colors.grey,
                  decoration: TextDecoration.lineThrough,
                ),
              ),
            ],
          ),
        ] else ...[
          Row(
            crossAxisAlignment: CrossAxisAlignment.baseline,
            textBaseline: TextBaseline.alphabetic,
            children: [
              Text(
                basePrice > 0 ? PriceFormatter.format(basePrice) : 'Liên hệ',
                style: theme.textTheme.headlineMedium?.copyWith(
                  fontWeight: FontWeight.bold,
                  color: theme.colorScheme.error,
                ),
              ),
              if (hasRetailComparison) ...[
                const SizedBox(width: 8),
                Text(
                  PriceFormatter.format(retailPrice),
                  style: theme.textTheme.titleMedium?.copyWith(
                    color: Colors.grey,
                    decoration: TextDecoration.lineThrough,
                  ),
                ),
              ],
            ],
          ),
        ],
        Text(
          'Giá đã bao gồm VAT',
          style: theme.textTheme.bodySmall?.copyWith(color: Colors.grey),
        ),
        if (savingAmount > 0) ...[
          const SizedBox(height: 4),
          Text(
            'Tiết kiệm ${PriceFormatter.format(savingAmount)} (${_formatSavingPercent(savingPercent)})',
            style: theme.textTheme.bodyMedium?.copyWith(
              color: Colors.green.shade700,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
        const SizedBox(height: 12),
      ],

      // ── Out of stock alert ──
      if (variant != null && !variant.isInStock) ...[
        Container(
          width: double.infinity,
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            color: Colors.red.shade50,
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: Colors.red.shade200),
          ),
          child: Row(
            children: [
              Icon(Icons.error_outline, color: Colors.red.shade700, size: 20),
              const SizedBox(width: 8),
              Text(
                'Sản phẩm đã hết hàng',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  color: Colors.red.shade700,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 16),
      ],

      const SizedBox(height: 8),

      // ── Information tabs ──
      _InformationTabs(
        productId: widget.productId,
        product: product,
        tabController: _tabController,
      ),
      const SizedBox(height: 20),

      // ── AI Review summary ──
      _AiReviewSummary(product: product),

      // ── Variant reviews ──
      if (_selectedVariant != null) ...[
        const SizedBox(height: 20),
        _VariantReviewsSection(variantId: _selectedVariant!.id),
      ],
    ];
  }
}

// ─── Sub-widgets ───────────────────────────────────────────────────────────

class _InfoLine extends StatelessWidget {
  final String label;
  final String value;
  const _InfoLine({required this.label, required this.value});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 2),
      child: Row(
        children: [
          Text(
            '$label: ',
            style: Theme.of(
              context,
            ).textTheme.bodyMedium?.copyWith(color: Colors.grey),
          ),
          Flexible(
            child: Text(
              value,
              style: Theme.of(
                context,
              ).textTheme.bodyMedium?.copyWith(fontWeight: FontWeight.w600),
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
    );
  }
}

class _ProductRatingRow extends ConsumerWidget {
  final String? variantId;
  const _ProductRatingRow({this.variantId});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    if (variantId == null) return const SizedBox(height: 20);

    final statsAsync = ref.watch(variantReviewStatsProvider(variantId!));
    return statsAsync.when(
      data: (stats) {
        return Row(
          children: [
            ...List.generate(
              5,
              (i) => Icon(
                i < stats.averageRating.round()
                    ? Icons.star_rounded
                    : Icons.star_outline_rounded,
                color: Colors.amber,
                size: 18,
              ),
            ),
            const SizedBox(width: 6),
            Text(
              '${stats.averageRating.toStringAsFixed(1)}/5',
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
            ),
            const SizedBox(width: 4),
            Text(
              '(${stats.totalReviews} đánh giá)',
              style: const TextStyle(color: Colors.grey, fontSize: 13),
            ),
          ],
        );
      },
      loading: () => const SizedBox(height: 20),
      error: (_, _) => const SizedBox.shrink(),
    );
  }
}

class _CartBadge extends StatelessWidget {
  final int count;
  const _CartBadge({required this.count});

  @override
  Widget build(BuildContext context) {
    final text = count > 99 ? '99+' : '$count';
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 1),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.error,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Colors.white, width: 1.2),
      ),
      constraints: const BoxConstraints(minWidth: 16, minHeight: 16),
      alignment: Alignment.center,
      child: Text(
        text,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 9,
          fontWeight: FontWeight.w700,
        ),
      ),
    );
  }
}

class _CampaignCard extends StatelessWidget {
  final String campaignName;
  final String voucherCode;
  final double savingPercent;

  const _CampaignCard({
    required this.campaignName,
    required this.voucherCode,
    required this.savingPercent,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: AppColors.primaryLight,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: AppColors.primaryBorder),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Wrap(
            spacing: 10,
            runSpacing: 6,
            crossAxisAlignment: WrapCrossAlignment.center,
            children: [
              if (campaignName.isNotEmpty)
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 10,
                    vertical: 4,
                  ),
                  decoration: BoxDecoration(
                    color: AppColors.primary,
                    borderRadius: BorderRadius.circular(6),
                  ),
                  child: Text(
                    campaignName.toUpperCase(),
                    style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 12,
                      letterSpacing: 0.5,
                    ),
                  ),
                ),
              if (savingPercent > 0)
                Text(
                  'Giảm ${_formatSavingPercent(savingPercent)}',
                  style: const TextStyle(
                    color: AppColors.primaryDark,
                    fontWeight: FontWeight.bold,
                    fontSize: 13,
                  ),
                ),
            ],
          ),
          if (voucherCode.isNotEmpty) ...[
            const SizedBox(height: 8),
            RichText(
              text: TextSpan(
                style: Theme.of(
                  context,
                ).textTheme.bodySmall?.copyWith(color: Colors.grey.shade700),
                children: [
                  const TextSpan(text: 'Áp dụng mã '),
                  WidgetSpan(
                    alignment: PlaceholderAlignment.middle,
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 8,
                        vertical: 2,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(4),
                        border: Border.all(color: AppColors.primaryBorder),
                      ),
                      child: Text(
                        voucherCode,
                        style: const TextStyle(
                          color: AppColors.primaryDark,
                          fontWeight: FontWeight.w800,
                          fontSize: 13,
                        ),
                      ),
                    ),
                  ),
                  const TextSpan(text: ' để được giảm thêm'),
                ],
              ),
            ),
          ],
        ],
      ),
    );
  }
}

class _ImageGallery extends StatelessWidget {
  final List<String> images;
  final String productId;
  final PageController pageController;
  final int currentIndex;
  final ValueChanged<int> onPageChanged;

  const _ImageGallery({
    required this.images,
    required this.productId,
    required this.pageController,
    required this.currentIndex,
    required this.onPageChanged,
  });

  @override
  Widget build(BuildContext context) {
    if (images.isEmpty) {
      return Container(
        color: Colors.grey.shade200,
        child: const Center(
          child: Icon(Icons.image_not_supported, size: 80, color: Colors.grey),
        ),
      );
    }

    return Padding(
      padding: EdgeInsets.fromLTRB(
        12,
        MediaQuery.of(context).padding.top + kToolbarHeight + 6,
        12,
        12,
      ),
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(22),
            child: Container(
              color: Colors.white,
              child: PageView.builder(
                controller: pageController,
                itemCount: images.length,
                onPageChanged: onPageChanged,
                itemBuilder: (context, index) => Image.network(
                  images[index],
                  fit: BoxFit.contain,
                  width: double.infinity,
                  gaplessPlayback: true,
                  loadingBuilder: (context, child, progress) {
                    if (progress == null) return child;
                    final percent = progress.expectedTotalBytes != null
                        ? progress.cumulativeBytesLoaded /
                            progress.expectedTotalBytes!
                        : null;
                    return Container(
                      color: Colors.grey.shade100,
                      child: Center(
                        child: CircularProgressIndicator(
                          value: percent,
                          strokeWidth: 2,
                        ),
                      ),
                    );
                  },
                  errorBuilder: (_, _, _) => Container(
                    color: Colors.grey.shade200,
                    child: const Center(
                      child: Icon(Icons.broken_image, size: 60, color: Colors.grey),
                    ),
                  ),
                ),
              ),
            ),
          ),
          if (images.length > 1)
            Positioned(
              bottom: 12,
              left: 0,
              right: 0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(
                  images.length,
                  (i) => Container(
                    width: i == currentIndex ? 16 : 8,
                    height: 8,
                    margin: const EdgeInsets.symmetric(horizontal: 3),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      color: i == currentIndex
                          ? AppColors.primary
                          : Colors.grey.shade300,
                    ),
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}

class _VariantSelector extends StatelessWidget {
  final List<ProductVariant> variants;
  final ProductVariant? selectedVariant;
  final ValueChanged<ProductVariant> onSelect;

  const _VariantSelector({
    required this.variants,
    required this.selectedVariant,
    required this.onSelect,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Wrap(
      spacing: 8,
      runSpacing: 8,
      children: variants.map((variant) {
        final isSelected = selectedVariant?.id == variant.id;
        final outOfStock = !variant.isInStock;

        return GestureDetector(
          onTap: () => onSelect(variant),
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 200),
            padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 10),
            decoration: BoxDecoration(
              color: isSelected
                  ? AppColors.primary
                  : Colors.white,
              borderRadius: BorderRadius.circular(18),
              border: Border.all(
                color: isSelected
                    ? AppColors.primary
                    : Colors.grey.shade300,
                width: isSelected ? 1.5 : 1,
              ),
            ),
            child: Opacity(
              opacity: outOfStock ? 0.5 : 1.0,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    variant.displayName,
                    style: theme.textTheme.bodyMedium?.copyWith(
                      color: isSelected
                          ? Colors.white
                          : null,
                      fontWeight:
                          isSelected ? FontWeight.bold : FontWeight.w600,
                      decoration:
                          outOfStock ? TextDecoration.lineThrough : null,
                    ),
                  ),
                  const SizedBox(height: 2),
                  Text(
                    PriceFormatter.format(variant.effectivePrice),
                    style: theme.textTheme.bodySmall?.copyWith(
                      color: isSelected
                          ? Colors.white.withValues(alpha: 0.9)
                          : AppColors.primary,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      }).toList(),
    );
  }
}

// ── Information Tabs (Details / Usage / Shipping) ───────────────────────────

class _InformationTabs extends ConsumerWidget {
  final String productId;
  final Product product;
  final TabController tabController;

  const _InformationTabs({
    required this.productId,
    required this.product,
    required this.tabController,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final infoAsync = ref.watch(productInformationProvider(productId));

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TabBar(
          controller: tabController,
          isScrollable: true,
          labelStyle: const TextStyle(fontWeight: FontWeight.w600),
          unselectedLabelStyle: const TextStyle(fontWeight: FontWeight.normal),
          tabs: const [
            Tab(text: 'Chi tiết sản phẩm'),
            Tab(text: 'Sử dụng và bảo quản'),
            Tab(text: 'Vận chuyển và đổi trả'),
          ],
        ),
        const SizedBox(height: 16),
        SizedBox(
          height: 500,
          child: TabBarView(
            controller: tabController,
            children: [
              SingleChildScrollView(
                child: infoAsync.when(
                  data: (info) => _DetailsTab(info: info, product: product),
                  loading: () => const Center(
                    child: Padding(
                      padding: EdgeInsets.all(32),
                      child: CircularProgressIndicator(strokeWidth: 2),
                    ),
                  ),
                  error: (_, _) => _DetailsTab(info: null, product: product),
                ),
              ),
              const SingleChildScrollView(child: _UsageTab()),
              const SingleChildScrollView(child: _ShippingTab()),
            ],
          ),
        ),
      ],
    );
  }
}

class _DetailsTab extends StatelessWidget {
  final ProductInformation? info;
  final Product product;

  const _DetailsTab({required this.info, required this.product});

  @override
  Widget build(BuildContext context) {
    final fields = [
      ('Thương hiệu', info?.brandName ?? product.brand),
      ('Xuất xứ', info?.origin ?? product.origin ?? ''),
      (
        'Năm phát hành',
        info?.releaseYear != null
            ? '${info!.releaseYear}'
            : product.releaseYear != null
            ? '${product.releaseYear}'
            : '',
      ),
      ('Giới tính', _convertGenderToVietnamese(info?.gender ?? product.gender)),
      ('Phong cách', info?.style ?? ''),
      ('Nhóm hương', info?.scentGroup ?? ''),
      ('Hương đầu', info?.topNotes ?? ''),
      ('Hương giữa', info?.heartNotes ?? ''),
      ('Hương cuối', info?.baseNotes ?? ''),
    ];

    final description = info?.description ?? product.description;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ...fields.map((f) => _DetailFieldRow(label: f.$1, value: f.$2)),
        if (description.isNotEmpty) ...[
          const SizedBox(height: 16),
          Text(
            'Mô tả sản phẩm',
            style: Theme.of(
              context,
            ).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 8),
          HtmlWidget(
            description,
            textStyle: Theme.of(context).textTheme.bodyMedium?.copyWith(
              height: 1.8,
              color: Colors.grey.shade700,
            ),
          ),
        ],
      ],
    );
  }
}

class _DetailFieldRow extends StatelessWidget {
  final String label;
  final String value;
  const _DetailFieldRow({required this.label, required this.value});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(
        border: Border(bottom: BorderSide(color: Colors.grey.shade200)),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 130,
            child: Text(
              label,
              style: TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.w600,
                color: Colors.grey.shade600,
              ),
            ),
          ),
          Expanded(
            child: Text(
              value.isNotEmpty ? value : '',
              style: const TextStyle(fontSize: 13),
            ),
          ),
        ],
      ),
    );
  }
}

class _UsageTab extends StatelessWidget {
  const _UsageTab();

  @override
  Widget build(BuildContext context) {
    return Text(
      '• Xịt nước hoa lên các vùng da ấm như cổ tay, sau tai, khuỷu tay trong.\n'
      '• Giữ khoảng cách 15-20cm khi xịt.\n'
      '• Không chà xát nước hoa sau khi xịt.\n'
      '• Bảo quản nơi khô ráo, tránh ánh nắng trực tiếp.\n'
      '• Nhiệt độ bảo quản lý tưởng: 15-25°C.\n'
      '• Đậy nắp kín sau mỗi lần sử dụng.',
      style: TextStyle(fontSize: 14, height: 1.8, color: Colors.grey.shade700),
    );
  }
}

class _ShippingTab extends StatelessWidget {
  const _ShippingTab();

  @override
  Widget build(BuildContext context) {
    return Text(
      '• Giao hàng toàn quốc, thời gian 2-5 ngày làm việc.\n'
      '• Miễn phí vận chuyển cho đơn hàng từ 500.000đ.\n'
      '• Hỗ trợ đổi trả trong vòng 7 ngày kể từ ngày nhận hàng.\n'
      '• Sản phẩm đổi trả phải còn nguyên seal, chưa qua sử dụng.\n'
      '• Liên hệ hotline hoặc chat để được hỗ trợ đổi trả.',
      style: TextStyle(fontSize: 14, height: 1.8, color: Colors.grey.shade700),
    );
  }
}

class _AiReviewSummary extends StatelessWidget {
  final Product product;

  const _AiReviewSummary({required this.product});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: AppColors.primaryLight,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: AppColors.primaryBorder.withValues(alpha: 0.5),
        ),
      ),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(Icons.auto_awesome, color: AppColors.primary, size: 18),
              SizedBox(width: 8),
              Text(
                'Tóm tắt đánh giá bởi AI',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: AppColors.primary,
                ),
              ),
            ],
          ),
          SizedBox(height: 8),
          Text(
            'Hầu hết người dùng mô tả mùi hương này là thanh lịch và lâu phai. Nó hoạt động đặc biệt tốt trong thời tiết mát mẻ và được khuyên dùng cho các sự kiện trang trọng buổi tối.',
            style: TextStyle(fontStyle: FontStyle.italic, fontSize: 13),
          ),
        ],
      ),
    );
  }
}

class _AddToCartBar extends StatelessWidget {
  final Product product;
  final ProductVariant? selectedVariant;
  final VoidCallback onAddToCart;
  final VoidCallback onBuyNow;

  const _AddToCartBar({
    required this.product,
    required this.selectedVariant,
    required this.onAddToCart,
    required this.onBuyNow,
  });

  @override
  Widget build(BuildContext context) {
    final needsSelection =
        product.variants.isNotEmpty && selectedVariant == null;
    final isOutOfStock =
        selectedVariant != null && selectedVariant!.stockQuantity <= 0;
    final disabled = needsSelection || isOutOfStock;

    return SafeArea(
      child: Container(
        padding: const EdgeInsets.fromLTRB(16, 12, 16, 12),
        decoration: BoxDecoration(
          color: Theme.of(context).scaffoldBackgroundColor,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withValues(alpha: 0.08),
              blurRadius: 12,
              offset: const Offset(0, -4),
            ),
          ],
        ),
        child: Row(
          children: [
            Expanded(
              child: OutlinedButton(
                onPressed: disabled ? null : onAddToCart,
                style: OutlinedButton.styleFrom(
                  minimumSize: const Size(0, 50),
                  side: BorderSide(
                    color: disabled
                        ? Colors.grey.shade300
                        : AppColors.primary,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                child: Text(
                  needsSelection
                      ? 'Chọn phân loại'
                      : isOutOfStock
                      ? 'Hết hàng'
                      : 'Thêm vào giỏ',
                  style: const TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: ElevatedButton(
                onPressed: disabled ? null : onBuyNow,
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size(0, 50),
                  backgroundColor: Theme.of(context).colorScheme.error,
                  foregroundColor: Colors.white,
                  disabledBackgroundColor: Colors.grey.shade300,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                child: Text(
                  isOutOfStock ? 'Hết hàng' : 'Mua ngay',
                  style: const TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// ── Variant reviews section ─────────────────────────────────────────────

class _VariantReviewsSection extends ConsumerWidget {
  final String variantId;
  const _VariantReviewsSection({required this.variantId});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final statsAsync = ref.watch(variantReviewStatsProvider(variantId));
    final reviewsAsync = ref.watch(variantReviewsProvider(variantId));

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Đánh giá sản phẩm',
          style: Theme.of(
            context,
          ).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 12),

        // ── Stats summary ──
        statsAsync.when(
          data: (stats) {
            if (stats.totalReviews == 0) {
              return Container(
                width: double.infinity,
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: AppColors.border),
                ),
                child: const Column(
                  children: [
                    Icon(
                      Icons.rate_review_outlined,
                      size: 36,
                      color: AppColors.textSecondary,
                    ),
                    SizedBox(height: 8),
                    Text(
                      'Chưa có đánh giá nào',
                      style: TextStyle(
                        color: AppColors.textSecondary,
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
              );
            }
            return Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: AppColors.border),
              ),
              child: Row(
                children: [
                  // Average rating
                  Flexible(
                    flex: 0,
                    child: Column(
                      children: [
                        Text(
                          stats.averageRating.toStringAsFixed(1),
                          style: const TextStyle(
                            fontSize: 36,
                            fontWeight: FontWeight.bold,
                            color: AppColors.textPrimary,
                          ),
                        ),
                        Row(
                          children: List.generate(
                            5,
                            (i) => Icon(
                              i < stats.averageRating.round()
                                  ? Icons.star_rounded
                                  : Icons.star_outline_rounded,
                              color: Colors.amber,
                              size: 16,
                            ),
                          ),
                        ),
                        const SizedBox(height: 4),
                        Text(
                          '${stats.totalReviews} đánh giá',
                          style: const TextStyle(
                            fontSize: 12,
                            color: AppColors.textSecondary,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 20),
                  // Rating distribution bars
                  Expanded(
                    child: Column(
                      children: List.generate(5, (i) {
                        final star = 5 - i;
                        final count = stats.ratingDistribution[star] ?? 0;
                        final ratio = stats.totalReviews > 0
                            ? count / stats.totalReviews
                            : 0.0;
                        return Padding(
                          padding: const EdgeInsets.symmetric(vertical: 2),
                          child: Row(
                            children: [
                              Text(
                                '$star',
                                style: const TextStyle(
                                  fontSize: 12,
                                  color: AppColors.textSecondary,
                                ),
                              ),
                              const SizedBox(width: 4),
                              const Icon(
                                Icons.star_rounded,
                                size: 12,
                                color: Colors.amber,
                              ),
                              const SizedBox(width: 6),
                              Expanded(
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(4),
                                  child: LinearProgressIndicator(
                                    value: ratio,
                                    minHeight: 6,
                                    backgroundColor: Colors.grey.shade200,
                                    valueColor: const AlwaysStoppedAnimation(
                                      Colors.amber,
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(width: 6),
                              SizedBox(
                                width: 24,
                                child: Text(
                                  '$count',
                                  style: const TextStyle(
                                    fontSize: 11,
                                    color: AppColors.textSecondary,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        );
                      }),
                    ),
                  ),
                ],
              ),
            );
          },
          loading: () => const SizedBox.shrink(),
          error: (_, _) => const SizedBox.shrink(),
        ),
        const SizedBox(height: 12),

        // ── Review list ──
        reviewsAsync.when(
          data: (reviews) {
            if (reviews.isEmpty) return const SizedBox.shrink();
            return Column(
              children: reviews
                  .map((review) => _buildReviewTile(context, review))
                  .toList(),
            );
          },
          loading: () => const Center(
            child: Padding(
              padding: EdgeInsets.all(16),
              child: CircularProgressIndicator(
                color: AppColors.primary,
                strokeWidth: 2,
              ),
            ),
          ),
          error: (_, _) => const SizedBox.shrink(),
        ),
      ],
    );
  }

  Widget _buildReviewTile(BuildContext context, dynamic review) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: AppColors.border),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // User + date
          Row(
            children: [
              CircleAvatar(
                radius: 14,
                backgroundColor: AppColors.primaryLight,
                backgroundImage:
                    review.userProfilePictureUrl != null &&
                        review.userProfilePictureUrl!.isNotEmpty
                    ? NetworkImage(
                        ImageUrlHelper.resolve(review.userProfilePictureUrl!),
                      )
                    : null,
                child:
                    review.userProfilePictureUrl == null ||
                        review.userProfilePictureUrl!.isEmpty
                    ? Text(
                        (review.userName ?? 'U')[0].toUpperCase(),
                        style: const TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                          color: AppColors.primary,
                        ),
                      )
                    : null,
              ),
              const SizedBox(width: 8),
              Expanded(
                child: Text(
                  review.userName ?? 'Người dùng',
                  style: const TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 13,
                  ),
                ),
              ),
              Text(
                DateFormat('dd/MM/yyyy').format(review.createdAt),
                style: const TextStyle(
                  fontSize: 11,
                  color: AppColors.textSecondary,
                ),
              ),
            ],
          ),
          const SizedBox(height: 8),
          // Stars
          Row(
            children: List.generate(
              5,
              (i) => Icon(
                i < review.rating
                    ? Icons.star_rounded
                    : Icons.star_outline_rounded,
                color: i < review.rating ? Colors.amber : AppColors.border,
                size: 16,
              ),
            ),
          ),
          // Comment
          if (review.comment != null && review.comment!.isNotEmpty) ...[
            const SizedBox(height: 6),
            Text(
              review.comment!,
              style: const TextStyle(
                fontSize: 13,
                color: AppColors.textPrimary,
                height: 1.4,
              ),
              maxLines: 4,
              overflow: TextOverflow.ellipsis,
            ),
          ],
          // Images
          if (review.imageUrls.isNotEmpty) ...[
            const SizedBox(height: 8),
            SizedBox(
              height: 56,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemCount: review.imageUrls.length,
                separatorBuilder: (_, _) => const SizedBox(width: 6),
                itemBuilder: (_, i) => ClipRRect(
                  borderRadius: BorderRadius.circular(6),
                  child: Image.network(
                    ImageUrlHelper.resolve(review.imageUrls[i]),
                    width: 56,
                    height: 56,
                    fit: BoxFit.cover,
                    errorBuilder: (_, _, _) => Container(
                      width: 56,
                      height: 56,
                      color: Colors.grey.shade200,
                      child: const Icon(
                        Icons.broken_image,
                        size: 16,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
          // Staff feedback
          if (review.staffFeedbackComment != null &&
              review.staffFeedbackComment!.isNotEmpty) ...[
            const SizedBox(height: 8),
            Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: AppColors.primaryLight,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Icon(Icons.store, size: 14, color: AppColors.primary),
                  const SizedBox(width: 6),
                  Expanded(
                    child: Text(
                      review.staffFeedbackComment!,
                      style: const TextStyle(
                        fontSize: 12,
                        color: AppColors.textPrimary,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ],
      ),
    );
  }
}
