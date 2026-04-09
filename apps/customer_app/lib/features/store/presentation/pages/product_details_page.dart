import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_widget_from_html_core/flutter_widget_from_html_core.dart';
import 'package:customer_app/features/order/presentation/providers/cart_provider.dart';
import '../../../../core/theme/app_colors.dart';
import '../../../../core/utils/image_url_helper.dart';
import '../../../review/presentation/providers/review_providers.dart';
import '../providers/product_provider.dart';
import '../../../../domain/entities/product.dart';
import '../../../../domain/entities/product_variant.dart';
import '../../../../core/utils/price_formatter.dart';
import 'package:intl/intl.dart';
import 'package:go_router/go_router.dart';

class ProductDetailsPage extends ConsumerStatefulWidget {
  final String productId;

  const ProductDetailsPage({super.key, required this.productId});

  @override
  ConsumerState<ProductDetailsPage> createState() =>
      _ProductDetailsPageState();
}

class _ProductDetailsPageState extends ConsumerState<ProductDetailsPage> {
  ProductVariant? _selectedVariant;
  int _currentImageIndex = 0;
  final PageController _pageController = PageController();

  @override
  void dispose() {
    _pageController.dispose();
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
          content: Text('Vui lòng chọn một loại sản phẩm'),
          backgroundColor: Colors.orange,
        ),
      );
      return;
    }
    try {
      // Use addProduct to support guest mode (provides full entity info)
      await ref.read(cartProvider.notifier).addProduct(product, variantId: variantId);
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
        // Auto-select first active variant
        if (_selectedVariant == null && product.variants.isNotEmpty) {
          _selectedVariant = product.variants.first;
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
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 320,
            pinned: true,
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
              IconButton(
                onPressed: () => context.push('/cart'),
                icon: const Icon(Icons.shopping_cart_outlined),
              ),
            ],
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(16),
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
      ),
    );
  }

  // ── Tablet layout: image left, content right side-by-side ───────────────
  Widget _buildTabletLayout(
    BuildContext context,
    Product product,
    List<String> displayImages,
  ) {
    return Scaffold(
      appBar: AppBar(
        title: Text(product.name),
        actions: [
          IconButton(
            onPressed: () => context.push('/cart'),
            icon: const Icon(Icons.shopping_cart_outlined),
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
      ),
    );
  }

  // ── Shared content widgets ───────────────────────────────────────────────
  List<Widget> _productContentWidgets(BuildContext context, Product product) {
    return [
      // Title & Brand
      Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  product.name,
                  style: Theme.of(context)
                      .textTheme
                      .headlineSmall
                      ?.copyWith(fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 4),
                Text(
                  product.brand,
                  style: Theme.of(context)
                      .textTheme
                      .titleMedium
                      ?.copyWith(color: Colors.grey),
                ),
              ],
            ),
          ),
          _PriceTag(
            product: product,
            selectedVariant: _selectedVariant,
          ),
        ],
      ),
      const SizedBox(height: 8),

      // Badges
      Wrap(
        spacing: 8,
        runSpacing: 6,
        children: [
          _Badge(label: product.brand, icon: Icons.verified),
        ],
      ),
      const SizedBox(height: 20),

      // Variants
      if (product.variants.isNotEmpty) ...[
        Text(
          'Chọn phân loại',
          style: Theme.of(context)
              .textTheme
              .titleMedium
              ?.copyWith(fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 10),
        _VariantSelector(
          variants: product.variants,
          selectedVariant: _selectedVariant,
          onSelect: _selectVariant,
        ),
        const SizedBox(height: 20),
      ],

      // Description
      if (product.description.isNotEmpty) ...[
        Text(
          'Mô tả sản phẩm',
          style: Theme.of(context)
              .textTheme
              .titleMedium
              ?.copyWith(fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 8),
        HtmlWidget(
          product.description,
          textStyle: Theme.of(context).textTheme.bodyMedium,
        ),
        const SizedBox(height: 20),
      ],

      // Scent Notes
      if (product.scentNotes.isNotEmpty) ...[
        Text(
          'Ghi chú hương thơm',
          style: Theme.of(context)
              .textTheme
              .titleMedium
              ?.copyWith(fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 8),
        Wrap(
          spacing: 8,
          runSpacing: 4,
          children: product.scentNotes
              .map((note) => Chip(label: Text(note)))
              .toList(),
        ),
        const SizedBox(height: 20),
      ],

      // Variant detail card
      if (_selectedVariant != null) ...[
        _VariantDetailCard(variant: _selectedVariant!),
        const SizedBox(height: 20),
      ],

      // AI Review summary
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

    return Stack(
      children: [
        PageView.builder(
          controller: pageController,
          itemCount: images.length,
          onPageChanged: onPageChanged,
          itemBuilder: (context, index) => Image.network(
              images[index],
              fit: BoxFit.cover,
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
                        ? Colors.white
                        : Colors.white.withValues(alpha: 0.5),
                  ),
                ),
              ),
            ),
          ),
      ],
    );
  }
}

class _PriceTag extends StatelessWidget {
  final Product product;
  final ProductVariant? selectedVariant;

  const _PriceTag({required this.product, this.selectedVariant});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    String priceText;

    if (selectedVariant != null) {
      priceText = PriceFormatter.format(selectedVariant!.effectivePrice);
    } else if (product.minPrice != null &&
        product.maxPrice != null &&
        product.minPrice != product.maxPrice) {
      priceText =
          PriceFormatter.formatRange(product.minPrice!, product.maxPrice!);
    } else if (product.price > 0) {
      priceText = PriceFormatter.format(product.price);
    } else {
      priceText = 'Chọn phân loại';
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Text(
          priceText,
          style: theme.textTheme.titleLarge?.copyWith(
            color: theme.colorScheme.primary,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}

class _Badge extends StatelessWidget {
  final String label;
  final IconData? icon;

  const _Badge({required this.label, this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.secondaryContainer,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (icon != null) ...[
            Icon(icon, size: 12,
                color: Theme.of(context).colorScheme.onSecondaryContainer),
            const SizedBox(width: 4),
          ],
          Text(
            label,
            style: TextStyle(
              fontSize: 12,
              color: Theme.of(context).colorScheme.onSecondaryContainer,
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

        return GestureDetector(
          onTap: () => onSelect(variant),
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 200),
            padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 10),
            decoration: BoxDecoration(
              color: isSelected
                  ? theme.colorScheme.primary
                  : theme.colorScheme.surface,
              borderRadius: BorderRadius.circular(10),
              border: Border.all(
                color: isSelected
                    ? theme.colorScheme.primary
                    : theme.colorScheme.outline,
                width: isSelected ? 2 : 1,
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  variant.displayName,
                  style: theme.textTheme.bodyMedium?.copyWith(
                    color: isSelected
                        ? theme.colorScheme.onPrimary
                        : null,
                    fontWeight:
                        isSelected ? FontWeight.bold : FontWeight.normal,
                  ),
                ),
                const SizedBox(height: 2),
                Text(
                  PriceFormatter.format(variant.effectivePrice),
                  style: theme.textTheme.bodySmall?.copyWith(
                    color: isSelected
                        ? theme.colorScheme.onPrimary.withValues(alpha: 0.85)
                        : theme.colorScheme.primary,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        );
      }).toList(),
    );
  }
}

class _VariantDetailCard extends StatelessWidget {
  final ProductVariant variant;

  const _VariantDetailCard({required this.variant});

  @override
  Widget build(BuildContext context) {
    final rows = <_DetailRow>[];
    if (variant.concentrationName.isNotEmpty) {
      rows.add(_DetailRow('Nồng độ', variant.concentrationName));
    }
    if (variant.volumeMl != null) {
      rows.add(_DetailRow('Dung tích', '${variant.volumeMl} ml'));
    }
    
    rows.add(_DetailRow(
      'Giá',
      PriceFormatter.format(variant.effectivePrice),
    ));

    if (rows.isEmpty) return const SizedBox.shrink();

    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.surfaceContainerHighest,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Chi tiết phiên bản',
            style: Theme.of(context)
                .textTheme
                .titleSmall
                ?.copyWith(fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 10),
          ...rows.map(
            (r) => Padding(
              padding: const EdgeInsets.only(bottom: 6),
              child: Row(
                children: [
                  SizedBox(
                    width: 110,
                    child: Text(
                      r.label,
                      style: const TextStyle(color: Colors.grey, fontSize: 13),
                    ),
                  ),
                  Text(
                    r.value,
                    style: const TextStyle(
                        fontWeight: FontWeight.w500, fontSize: 13),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _DetailRow {
  final String label;
  final String value;
  _DetailRow(this.label, this.value);
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
        border: Border.all(color: AppColors.primaryBorder.withValues(alpha: 0.5)),
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

  const _AddToCartBar({
    required this.product,
    required this.selectedVariant,
    required this.onAddToCart,
  });

  @override
  Widget build(BuildContext context) {
    final needsSelection =
        product.variants.isNotEmpty && selectedVariant == null;

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
        child: ElevatedButton(
          onPressed: onAddToCart,
          style: ElevatedButton.styleFrom(
            minimumSize: const Size(double.infinity, 50),
            backgroundColor: Theme.of(context).colorScheme.primary,
            foregroundColor: Theme.of(context).colorScheme.onPrimary,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
          ),
          child: Text(
            needsSelection
                    ? 'Chọn phân loại'
                    : 'Thêm vào giỏ hàng',
            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
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
          style: Theme.of(context).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.bold),
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
                    Icon(Icons.rate_review_outlined, size: 36, color: AppColors.textSecondary),
                    SizedBox(height: 8),
                    Text('Chưa có đánh giá nào', style: TextStyle(color: AppColors.textSecondary, fontSize: 14)),
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
                  Column(
                    children: [
                      Text(
                        stats.averageRating.toStringAsFixed(1),
                        style: const TextStyle(fontSize: 36, fontWeight: FontWeight.bold, color: AppColors.textPrimary),
                      ),
                      Row(
                        children: List.generate(5, (i) => Icon(
                          i < stats.averageRating.round() ? Icons.star_rounded : Icons.star_outline_rounded,
                          color: Colors.amber,
                          size: 16,
                        )),
                      ),
                      const SizedBox(height: 4),
                      Text('${stats.totalReviews} đánh giá',
                          style: const TextStyle(fontSize: 12, color: AppColors.textSecondary)),
                    ],
                  ),
                  const SizedBox(width: 20),
                  // Rating distribution bars
                  Expanded(
                    child: Column(
                      children: List.generate(5, (i) {
                        final star = 5 - i;
                        final count = stats.ratingDistribution[star] ?? 0;
                        final ratio = stats.totalReviews > 0 ? count / stats.totalReviews : 0.0;
                        return Padding(
                          padding: const EdgeInsets.symmetric(vertical: 2),
                          child: Row(
                            children: [
                              Text('$star', style: const TextStyle(fontSize: 12, color: AppColors.textSecondary)),
                              const SizedBox(width: 4),
                              const Icon(Icons.star_rounded, size: 12, color: Colors.amber),
                              const SizedBox(width: 6),
                              Expanded(
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(4),
                                  child: LinearProgressIndicator(
                                    value: ratio,
                                    minHeight: 6,
                                    backgroundColor: Colors.grey.shade200,
                                    valueColor: const AlwaysStoppedAnimation(Colors.amber),
                                  ),
                                ),
                              ),
                              const SizedBox(width: 6),
                              SizedBox(
                                width: 24,
                                child: Text('$count', style: const TextStyle(fontSize: 11, color: AppColors.textSecondary)),
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
              children: reviews.map((review) => _buildReviewTile(context, review)).toList(),
            );
          },
          loading: () => const Center(
            child: Padding(
              padding: EdgeInsets.all(16),
              child: CircularProgressIndicator(color: AppColors.primary, strokeWidth: 2),
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
                backgroundImage: review.userProfilePictureUrl != null && review.userProfilePictureUrl!.isNotEmpty
                    ? NetworkImage(ImageUrlHelper.resolve(review.userProfilePictureUrl!))
                    : null,
                child: review.userProfilePictureUrl == null || review.userProfilePictureUrl!.isEmpty
                    ? Text(
                        (review.userName ?? 'U')[0].toUpperCase(),
                        style: const TextStyle(fontSize: 12, fontWeight: FontWeight.bold, color: AppColors.primary),
                      )
                    : null,
              ),
              const SizedBox(width: 8),
              Expanded(
                child: Text(review.userName ?? 'Người dùng',
                    style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 13)),
              ),
              Text(
                DateFormat('dd/MM/yyyy').format(review.createdAt),
                style: const TextStyle(fontSize: 11, color: AppColors.textSecondary),
              ),
            ],
          ),
          const SizedBox(height: 8),
          // Stars
          Row(
            children: List.generate(5, (i) => Icon(
              i < review.rating ? Icons.star_rounded : Icons.star_outline_rounded,
              color: i < review.rating ? Colors.amber : AppColors.border,
              size: 16,
            )),
          ),
          // Comment
          if (review.comment != null && review.comment!.isNotEmpty) ...[
            const SizedBox(height: 6),
            Text(review.comment!,
                style: const TextStyle(fontSize: 13, color: AppColors.textPrimary, height: 1.4),
                maxLines: 4,
                overflow: TextOverflow.ellipsis),
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
                    width: 56, height: 56, fit: BoxFit.cover,
                    errorBuilder: (_, _, _) => Container(
                      width: 56, height: 56, color: Colors.grey.shade200,
                      child: const Icon(Icons.broken_image, size: 16, color: Colors.grey),
                    ),
                  ),
                ),
              ),
            ),
          ],
          // Staff feedback
          if (review.staffFeedbackComment != null && review.staffFeedbackComment!.isNotEmpty) ...[
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
                    child: Text(review.staffFeedbackComment!,
                        style: const TextStyle(fontSize: 12, color: AppColors.textPrimary)),
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
