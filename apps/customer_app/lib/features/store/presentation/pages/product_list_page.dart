import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import '../providers/product_provider.dart';
import '../../../../domain/entities/product.dart';
import '../../../../core/utils/price_formatter.dart';

class ProductListPage extends ConsumerStatefulWidget {
  const ProductListPage({super.key});

  @override
  ConsumerState<ProductListPage> createState() => _ProductListPageState();
}

class _ProductListPageState extends ConsumerState<ProductListPage> {
  final _searchController = TextEditingController();
  String? _selectedGender;

  static const _genderOptions = ['All', 'Male', 'Female', 'Unisex'];

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  void _onSearch() {
    final query = _searchController.text.trim();
    if (query.isNotEmpty) {
      ref.read(productListProvider.notifier).semanticSearch(query);
    }
  }

  void _onClear() {
    _searchController.clear();
    ref.read(productListProvider.notifier).search('');
  }

  @override
  Widget build(BuildContext context) {
    final productsAsync = ref.watch(productListProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Store'),
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(110),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16.0,
                  vertical: 6.0,
                ),
                child: TextField(
                  controller: _searchController,
                  textInputAction: TextInputAction.search,
                  onSubmitted: (_) => _onSearch(),
                  decoration: InputDecoration(
                    hintText: 'Search (e.g. "sweet floral perfume")',
                    prefixIcon: const Icon(Icons.search),
                    suffixIcon: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        if (_searchController.text.isNotEmpty)
                          IconButton(
                            icon: const Icon(Icons.clear),
                            onPressed: _onClear,
                          ),
                        IconButton(
                          icon: const Icon(Icons.auto_awesome),
                          tooltip: 'AI Semantic Search',
                          onPressed: _onSearch,
                        ),
                      ],
                    ),
                    border: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(30)),
                    ),
                    contentPadding: const EdgeInsets.symmetric(
                      vertical: 0,
                      horizontal: 16,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 40,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  itemCount: _genderOptions.length,
                  itemBuilder: (context, index) {
                    final gender = _genderOptions[index];
                    final isSelected =
                        (_selectedGender == null && gender == 'All') ||
                            _selectedGender == gender;
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 4),
                      child: FilterChip(
                        label: Text(gender),
                        selected: isSelected,
                        onSelected: (_) {
                          setState(() {
                            _selectedGender =
                                gender == 'All' ? null : gender;
                          });
                        },
                      ),
                    );
                  },
                ),
              ),
              const SizedBox(height: 6),
            ],
          ),
        ),
      ),
      body: productsAsync.when(
        data: (products) {
          final filtered = _selectedGender == null
              ? products
              : products
                  .where((p) => p.gender == _selectedGender)
                  .toList();

          if (filtered.isEmpty) {
            return const Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.search_off, size: 64, color: Colors.grey),
                  SizedBox(height: 16),
                  Text(
                    'No products found',
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              ),
            );
          }

          return LayoutBuilder(
            builder: (context, constraints) {
              final crossAxisCount = constraints.maxWidth >= 900
                  ? 4
                  : constraints.maxWidth >= 600
                      ? 3
                      : 2;
              final aspectRatio = constraints.maxWidth >= 600 ? 0.72 : 0.68;
              return GridView.builder(
                padding: const EdgeInsets.all(16),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: crossAxisCount,
                  childAspectRatio: aspectRatio,
                  crossAxisSpacing: 12,
                  mainAxisSpacing: 12,
                ),
                itemCount: filtered.length,
                itemBuilder: (context, index) {
                  return _ProductGridCard(product: filtered[index]);
                },
              );
            },
          );
        },
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (error, stack) => Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(Icons.error_outline, size: 48, color: Colors.red),
              const SizedBox(height: 16),
              Text('Failed to load products', style: Theme.of(context).textTheme.titleMedium),
              const SizedBox(height: 8),
              TextButton(
                onPressed: () => ref.invalidate(productListProvider),
                child: const Text('Retry'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _ProductGridCard extends StatelessWidget {
  final Product product;

  const _ProductGridCard({required this.product});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return GestureDetector(
      onTap: () => context.push('/product/${product.id}'),
      child: Card(
        clipBehavior: Clip.antiAlias,
        elevation: 2,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Stack(
                fit: StackFit.expand,
                children: [
                  Hero(
                    tag: 'product_image_${product.id}',
                    child: product.imageUrl.isNotEmpty
                        ? Image.network(
                            product.imageUrl,
                            fit: BoxFit.cover,
                            gaplessPlayback: true,
                            loadingBuilder: (context, child, progress) {
                              if (progress == null) return child;
                              return Container(
                                color: Colors.grey.shade100,
                                child: const Center(
                                  child: SizedBox(
                                    width: 24,
                                    height: 24,
                                    child: CircularProgressIndicator(
                                      strokeWidth: 2,
                                    ),
                                  ),
                                ),
                              );
                            },
                            errorBuilder: (_, __, ___) =>
                                const _ImagePlaceholder(),
                          )
                        : const _ImagePlaceholder(),
                  ),
                  if (product.gender != null)
                    Positioned(
                      top: 8,
                      left: 8,
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 8,
                          vertical: 2,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.black54,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Text(
                          product.gender!,
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 10,
                          ),
                        ),
                      ),
                    ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 8, 10, 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    product.name,
                    style: theme.textTheme.bodyMedium?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  Text(
                    product.brand,
                    style: theme.textTheme.bodySmall?.copyWith(
                      color: Colors.grey,
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(height: 4),
                  Text(
                    _getPriceText(product),
                    style: TextStyle(
                      color: theme.colorScheme.primary,
                      fontWeight: FontWeight.bold,
                      fontSize: 13,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  String _getPriceText(Product product) {
    if (product.minPrice != null &&
        product.maxPrice != null &&
        product.minPrice != product.maxPrice) {
      return PriceFormatter.formatRange(product.minPrice!, product.maxPrice!);
    } else if (product.price > 0) {
      return PriceFormatter.format(product.price);
    }
    return 'Contact for price';
  }
}

class _ImagePlaceholder extends StatelessWidget {
  const _ImagePlaceholder();

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey.shade200,
      child: const Center(
        child: Icon(Icons.image_not_supported, color: Colors.grey, size: 40),
      ),
    );
  }
}


