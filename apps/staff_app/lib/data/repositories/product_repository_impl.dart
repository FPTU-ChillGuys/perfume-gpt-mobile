import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../domain/entities/product.dart';
import '../../domain/repositories/product_repository.dart';

part 'product_repository_impl.g.dart';

class MockProductRepository implements ProductRepository {
  final List<Product> _products = [
    const Product(
      id: '1',
      sku: 'CHAN-5-100',
      name: 'Chanel No. 5',
      description: 'The essence of femininity. A powdery floral bouquet.',
      price: 150.0,
      imageUrl: 'https://picsum.photos/200',
      scentNotes: ['Aldehydes', 'Jasmine', 'Rose'],
      brand: 'Chanel',
      rating: 4.8,
      reviewCount: 1250,
      stockQuantity: 15,
    ),
    const Product(
      id: '2',
      sku: 'DIOR-SAV-100',
      name: 'Dior Sauvage',
      description:
          'A radically fresh composition, dictated by a name that has the ring of a manifesto.',
      price: 120.0,
      imageUrl: 'https://picsum.photos/200',
      scentNotes: ['Bergamot', 'Ambroxan', 'Pepper'],
      brand: 'Dior',
      rating: 4.7,
      reviewCount: 3500,
      stockQuantity: 42,
    ),
    const Product(
      id: '3',
      sku: 'YSL-LIB-50',
      name: 'YSL Libre',
      description:
          'A grand floral Eau de Parfum with an unequivocal YSL twist.',
      price: 130.0,
      imageUrl: 'https://picsum.photos/200',
      scentNotes: ['Lavender', 'Orange Blossom', 'Musk'],
      brand: 'YSL',
      rating: 4.9,
      reviewCount: 890,
      stockQuantity: 8,
    ),
  ];

  @override
  Future<List<Product>> getProducts() async {
    await Future.delayed(const Duration(milliseconds: 500));
    return _products;
  }

  @override
  Future<Product?> getProductBySku(String sku) async {
    await Future.delayed(const Duration(milliseconds: 300));
    try {
      return _products.firstWhere((p) => p.sku == sku);
    } catch (_) {
      return null;
    }
  }

  @override
  Future<void> updateStock(
    String productId,
    int quantityChange,
    String reason,
  ) async {
    await Future.delayed(const Duration(milliseconds: 500));
    final index = _products.indexWhere((p) => p.id == productId);
    if (index != -1) {
      final p = _products[index];
      _products[index] = Product(
        id: p.id,
        sku: p.sku,
        name: p.name,
        description: p.description,
        price: p.price,
        imageUrl: p.imageUrl,
        scentNotes: p.scentNotes,
        brand: p.brand,
        rating: p.rating,
        reviewCount: p.reviewCount,
        stockQuantity: p.stockQuantity + quantityChange,
      );
    }
  }
}

@riverpod
ProductRepository productRepository(Ref ref) {
  return MockProductRepository();
}
