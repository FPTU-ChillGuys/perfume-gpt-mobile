import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:customer_app/features/order/presentation/providers/cart_provider.dart';
import '../providers/product_provider.dart';
import '../../../../domain/entities/product.dart';
import '../../../../domain/entities/product_variant.dart';
import '../../../../core/utils/price_formatter.dart';

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
      if (variant.primaryImageUrl != null) {
        _currentImageIndex = 0;
        _pageController.jumpToPage(0);
      }
    });
  }

  void _addToCart(Product product) {
    if (product.variants.isNotEmpty && _selectedVariant == null) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Please select a variant first'),
          backgroundColor: Colors.orange,
        ),
      );
      return;
    }
    ref.read(cartProvider.notifier).addProduct(
          product,
          variant: _selectedVariant,
        );
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          '${product.name}${_selectedVariant != null ? ' (${_selectedVariant!.displayName})' : ''} added to cart',
        ),
        backgroundColor: Colors.green,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final productAsync = ref.watch(productDetailsProvider(widget.productId));

    return productAsync.when(
      data: (product) {
        // Auto-select first active variant
        if (_selectedVariant == null && product.variants.isNotEmpty) {
          _selectedVariant = product.variants
                  .where((v) => v.isActive)
                  .firstOrNull ??
              product.variants.first;
        }

        final List<String> displayImages =
            _selectedVariant?.imageUrls.isNotEmpty == true
                ? _selectedVariant!.imageUrls
                : product.imageUrls.isNotEmpty
                    ? product.imageUrls
                    : (product.imageUrl.isNotEmpty
                        ? [product.imageUrl]
                        : const <String>[]);

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
              const Text('Failed to load product'),
              TextButton(
                onPressed: () =>
                    ref.invalidate(productDetailsProvider(widget.productId)),
                child: const Text('Retry'),
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
                onPressed: () => Navigator.of(context).pop(),
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
            onPressed: () => Navigator.of(context).pop(),
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
          if (product.gender != null)
            _Badge(label: product.gender!, icon: Icons.person),
          if (product.categoryName != null)
            _Badge(label: product.categoryName!),
          if (product.origin != null)
            _Badge(label: product.origin!, icon: Icons.place_outlined),
          if (product.releaseYear != null)
            _Badge(label: '${product.releaseYear}'),
        ],
      ),
      const SizedBox(height: 20),

      // Variants
      if (product.variants.isNotEmpty) ...[
        Text(
          'Select Variant',
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
          'Description',
          style: Theme.of(context)
              .textTheme
              .titleMedium
              ?.copyWith(fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 8),
        Text(
          stripHtml(product.description),
          style: Theme.of(context).textTheme.bodyMedium,
        ),
        const SizedBox(height: 20),
      ],

      // Scent Notes
      if (product.scentNoteDetails.isNotEmpty) ...[
        Text(
          'Scent Notes',
          style: Theme.of(context)
              .textTheme
              .titleMedium
              ?.copyWith(fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 10),
        _ScentNotesSection(notes: product.scentNoteDetails),
        const SizedBox(height: 20),
      ] else if (product.scentNotes.isNotEmpty) ...[
        Text(
          'Scent Notes',
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
          itemBuilder: (context, index) => Hero(
            tag: index == 0 ? 'product_image_$productId' : 'img_${productId}_$index',
            child: Image.network(
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
              errorBuilder: (_, __, ___) => Container(
                color: Colors.grey.shade200,
                child: const Center(
                  child: Icon(Icons.broken_image, size: 60, color: Colors.grey),
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
    String? originalPrice;

    if (selectedVariant != null) {
      priceText = PriceFormatter.format(selectedVariant!.effectivePrice);
      if (selectedVariant!.discountedPrice != null) {
        originalPrice =
            PriceFormatter.format(selectedVariant!.retailPrice ?? selectedVariant!.basePrice);
      }
    } else if (product.minPrice != null &&
        product.maxPrice != null &&
        product.minPrice != product.maxPrice) {
      priceText =
          PriceFormatter.formatRange(product.minPrice!, product.maxPrice!);
    } else if (product.price > 0) {
      priceText = PriceFormatter.format(product.price);
    } else {
      priceText = 'Select variant';
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
        if (originalPrice != null)
          Text(
            originalPrice,
            style: theme.textTheme.bodySmall?.copyWith(
              color: Colors.grey,
              decoration: TextDecoration.lineThrough,
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
        final isUnavailable = !variant.isActive || !variant.isInStock;

        return GestureDetector(
          onTap: isUnavailable ? null : () => onSelect(variant),
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
                    : isUnavailable
                        ? Colors.grey.shade300
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
                        : isUnavailable
                            ? Colors.grey
                            : null,
                    fontWeight:
                        isSelected ? FontWeight.bold : FontWeight.normal,
                  ),
                ),
                const SizedBox(height: 2),
                Text(
                  isUnavailable
                      ? 'Out of stock'
                      : PriceFormatter.format(variant.effectivePrice),
                  style: theme.textTheme.bodySmall?.copyWith(
                    color: isSelected
                        ? theme.colorScheme.onPrimary.withValues(alpha: 0.85)
                        : isUnavailable
                            ? Colors.grey
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

class _ScentNotesSection extends StatelessWidget {
  final List<dynamic> notes;

  const _ScentNotesSection({required this.notes});

  @override
  Widget build(BuildContext context) {
    final byType = <String, List<String>>{};
    for (final note in notes) {
      final type = note.type as String;
      byType.putIfAbsent(type, () => []).add(note.name as String);
    }

    const order = ['Top', 'Heart', 'Base'];
    final icons = {
      'Top': Icons.arrow_upward,
      'Heart': Icons.favorite_border,
      'Base': Icons.arrow_downward,
    };
    final colors = {
      'Top': Colors.green,
      'Heart': Colors.pink,
      'Base': Colors.brown,
    };

    return Column(
      children: order
          .where((type) => byType.containsKey(type))
          .map((type) => Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(6),
                      decoration: BoxDecoration(
                        color: colors[type]!.withValues(alpha: 0.1),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Icon(icons[type], size: 16, color: colors[type]),
                    ),
                    const SizedBox(width: 10),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '$type Notes',
                            style: const TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 13,
                            ),
                          ),
                          const SizedBox(height: 4),
                          Wrap(
                            spacing: 6,
                            runSpacing: 4,
                            children: byType[type]!
                                .map(
                                  (name) => Chip(
                                    label: Text(
                                      name,
                                      style: const TextStyle(fontSize: 12),
                                    ),
                                    padding: EdgeInsets.zero,
                                    materialTapTargetSize:
                                        MaterialTapTargetSize.shrinkWrap,
                                    backgroundColor:
                                        colors[type]!.withValues(alpha: 0.1),
                                  ),
                                )
                                .toList(),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ))
          .toList(),
    );
  }
}

class _VariantDetailCard extends StatelessWidget {
  final ProductVariant variant;

  const _VariantDetailCard({required this.variant});

  @override
  Widget build(BuildContext context) {
    final rows = <_DetailRow>[];
    if (variant.concentrationName.isNotEmpty)
      rows.add(_DetailRow('Concentration', variant.concentrationName));
    if (variant.volumeMl != null)
      rows.add(_DetailRow('Volume', '${variant.volumeMl} ml'));
    if (variant.sillage != null)
      rows.add(_DetailRow('Sillage', '${variant.sillage}/10'));
    if (variant.longevity != null)
      rows.add(_DetailRow('Longevity', '${variant.longevity}/10'));
    rows.add(_DetailRow(
      'Stock',
      variant.isInStock ? '${variant.stockQuantity} available' : 'Out of stock',
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
            'Variant Details',
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
        color: Colors.blue.withValues(alpha: 0.07),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.blue.withValues(alpha: 0.2)),
      ),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(Icons.auto_awesome, color: Colors.blue, size: 18),
              SizedBox(width: 8),
              Text(
                'AI Review Summary',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.blue,
                ),
              ),
            ],
          ),
          SizedBox(height: 8),
          Text(
            'Most users describe this scent as elegant and long-lasting. It performs exceptionally well in cooler weather and is highly recommended for formal evening events.',
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
    final isOutOfStock =
        selectedVariant != null && !selectedVariant!.isInStock;

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
          onPressed: isOutOfStock ? null : onAddToCart,
          style: ElevatedButton.styleFrom(
            minimumSize: const Size(double.infinity, 50),
            backgroundColor: Theme.of(context).colorScheme.primary,
            foregroundColor: Theme.of(context).colorScheme.onPrimary,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
          ),
          child: Text(
            isOutOfStock
                ? 'Out of Stock'
                : needsSelection
                    ? 'Select a Variant'
                    : 'Add to Cart',
            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}




