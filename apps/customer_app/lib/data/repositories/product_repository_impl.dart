import '../../domain/entities/product.dart';
import '../../domain/repositories/product_repository.dart';

class ProductRepositoryImpl implements ProductRepository {
  final List<Product> _mockProducts = [
    const Product(
      id: '1',
      name: 'Chanel No. 5',
      description: 'A timeless floral bouquet with notes of jasmine and rose.',
      price: 3500000,
      imageUrl: 'https://picsum.photos/200',
      scentNotes: ['Jasmine', 'Rose', 'Aldehydes'],
      brand: 'Chanel',
      rating: 4.8,
      reviewCount: 1250,
    ),
    const Product(
      id: '2',
      name: 'Dior Sauvage',
      description:
          'A radical and noble composition, featuring bergamot and ambroxan.',
      price: 2800000,
      imageUrl: 'https://picsum.photos/201',
      scentNotes: ['Bergamot', 'Ambroxan', 'Pepper'],
      brand: 'Dior',
      rating: 4.7,
      reviewCount: 2100,
    ),
    const Product(
      id: '3',
      name: 'Bleu de Chanel',
      description:
          'A woody, aromatic fragrance for the man who defies convention.',
      price: 3200000,
      imageUrl: 'https://picsum.photos/202',
      scentNotes: ['Lemon', 'Mint', 'Pink Pepper'],
      brand: 'Chanel',
      rating: 4.9,
      reviewCount: 1800,
    ),
  ];

  @override
  Future<List<Product>> getProducts({String? query}) async {
    await Future.delayed(const Duration(milliseconds: 500));
    if (query != null && query.isNotEmpty) {
      return _mockProducts
          .where((p) => p.name.toLowerCase().contains(query.toLowerCase()))
          .toList();
    }
    return _mockProducts;
  }

  @override
  Future<Product> getProductById(String id) async {
    await Future.delayed(const Duration(milliseconds: 300));
    return _mockProducts.firstWhere((p) => p.id == id);
  }

  @override
  Future<List<Product>> semanticSearch(String query) async {
    await Future.delayed(const Duration(seconds: 1));
    // In a real app, this would call an AI-powered search endpoint
    return _mockProducts;
  }
}
