import '../entities/product.dart';

abstract class ProductRepository {
  Future<List<Product>> getProducts();
  Future<Product?> getProductBySku(String sku);
  Future<Product?> getProductForPos({String? barcode, String? sku});
  Future<void> updateStock(
    String variantId,
    String batchId,
    int quantityChange,
    String reason,
  );
}
