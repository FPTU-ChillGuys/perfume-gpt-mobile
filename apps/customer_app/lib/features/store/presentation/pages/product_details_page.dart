import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:customer_app/features/order/presentation/providers/cart_provider.dart';
import '../providers/product_provider.dart';
import '../../../../domain/entities/product.dart';
import '../../../../core/utils/price_formatter.dart';

class ProductDetailsPage extends ConsumerStatefulWidget {
  final String productId;

  const ProductDetailsPage({super.key, required this.productId});

  @override
  ConsumerState<ProductDetailsPage> createState() => _ProductDetailsPageState();
}

class _ProductDetailsPageState extends ConsumerState<ProductDetailsPage> {
  ProductVariant? _selectedVariant;

  @override
  Widget build(BuildContext context) {
    final productAsync = ref.watch(productDetailsProvider(widget.productId));

    return Scaffold(
      appBar: AppBar(title: const Text('Product Details')),
      body: productAsync.when(
        data: (product) {
          // Initialize selected variant if not already set
          if (_selectedVariant == null && product.variants.isNotEmpty) {
            _selectedVariant = product.variants.first;
          }

          return SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.network(
                  product.imageUrl,
                  height: 300,
                  width: double.infinity,
                  fit: BoxFit.cover,
                  errorBuilder: (context, error, stackTrace) => const SizedBox(
                    height: 300,
                    child: Icon(Icons.image_not_supported, size: 100),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: Text(
                              product.name,
                              style: Theme.of(context).textTheme.headlineMedium
                                  ?.copyWith(fontWeight: FontWeight.bold),
                            ),
                          ),
                          Text(
                            _getPriceText(product),
                            style: Theme.of(context).textTheme.headlineSmall
                                ?.copyWith(
                                  color: Theme.of(context).colorScheme.primary,
                                  fontWeight: FontWeight.bold,
                                ),
                          ),
                        ],
                      ),
                      Text(
                        product.brand,
                        style: Theme.of(
                          context,
                        ).textTheme.titleMedium?.copyWith(color: Colors.grey),
                      ),
                      const SizedBox(height: 16),
                      Row(
                        children: [
                          const Icon(Icons.star, color: Colors.amber),
                          Text(
                            ' ${product.rating} (${product.reviewCount} reviews)',
                          ),
                        ],
                      ),
                      
                      if (product.variants.isNotEmpty) ...[
                        const SizedBox(height: 24),
                        Text(
                          'Select Variant',
                          style: Theme.of(context).textTheme.titleLarge?.copyWith(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 8),
                        Wrap(
                          spacing: 8,
                          children: product.variants.map((variant) {
                            final isSelected = _selectedVariant?.id == variant.id;
                            return ChoiceChip(
                              label: Text(variant.name),
                              selected: isSelected,
                              onSelected: (selected) {
                                if (selected) {
                                  setState(() => _selectedVariant = variant);
                                }
                              },
                            );
                          }).toList(),
                        ),
                      ],

                      const SizedBox(height: 24),
                      Text(
                        'About this fragrance',
                        style: Theme.of(context).textTheme.titleLarge?.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 8),
                      Text(product.description),
                      const SizedBox(height: 24),
                      Text(
                        'Scent Notes',
                        style: Theme.of(context).textTheme.titleLarge?.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 8),
                      Wrap(
                        spacing: 8,
                        children: product.scentNotes
                            .map(
                              (note) => Chip(
                                label: Text(note),
                                backgroundColor: Theme.of(
                                  context,
                                ).colorScheme.secondaryContainer,
                              ),
                            )
                            .toList(),
                      ),
                      const SizedBox(height: 24),
                      Container(
                        padding: const EdgeInsets.all(16),
                        decoration: BoxDecoration(
                          color: Colors.blue.withValues(alpha: 0.1),
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(
                            color: Colors.blue.withValues(alpha: 0.3),
                          ),
                        ),
                        child: const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Icon(Icons.auto_awesome, color: Colors.blue),
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
                              style: TextStyle(fontStyle: FontStyle.italic),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 100),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (error, stack) => Center(child: Text('Error: $error')),
      ),
      bottomSheet: productAsync.when(
        data: (product) => Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: Theme.of(context).scaffoldBackgroundColor,
            boxShadow: [
              BoxShadow(
                color: Colors.black.withValues(alpha: 0.1),
                blurRadius: 10,
                offset: const Offset(0, -5),
              ),
            ],
          ),
          child: Row(
            children: [
              Expanded(
                child: ElevatedButton(
                  onPressed: () {
                    final variantId = _selectedVariant?.id ?? product.id;
                    // We need a product entity with the correct price for the variant
                    final cartProduct = Product(
                      id: product.id,
                      name: product.name + (_selectedVariant != null ? ' - ${_selectedVariant!.name}' : ''),
                      description: product.description,
                      price: _selectedVariant?.price ?? product.price,
                      imageUrl: product.imageUrl,
                      scentNotes: product.scentNotes,
                      brand: product.brand,
                      rating: product.rating,
                      reviewCount: product.reviewCount,
                    );

                    ref.read(cartProvider.notifier).addProduct(cartProduct, variantId: variantId);
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text('${cartProduct.name} added to cart')),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size(double.infinity, 50),
                    backgroundColor: Theme.of(context).colorScheme.primary,
                    foregroundColor: Theme.of(context).colorScheme.onPrimary,
                  ),
                  child: const Text('Add to Cart'),
                ),
              ),
            ],
          ),
        ),
        loading: () => const SizedBox.shrink(),
        error: (error, stack) => const SizedBox.shrink(),
      ),
    );
  }

  String _getPriceText(Product product) {
    if (_selectedVariant != null) {
        return PriceFormatter.format(_selectedVariant!.price);
    }

    if (product.minPrice != null &&
        product.maxPrice != null &&
        product.minPrice != product.maxPrice) {
      return PriceFormatter.formatRange(product.minPrice!, product.maxPrice!);
    } else {
      return PriceFormatter.format(product.price);
    }
  }
}
