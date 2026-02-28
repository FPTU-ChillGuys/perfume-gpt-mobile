import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../../../domain/entities/cart_item.dart';
import '../../../../domain/entities/product.dart';

part 'cart_provider.g.dart';

@riverpod
class Cart extends _$Cart {
  @override
  List<CartItem> build() {
    return [];
  }

  void addProduct(Product product) {
    final index = state.indexWhere((item) => item.product.id == product.id);
    if (index != -1) {
      state = [
        for (int i = 0; i < state.length; i++)
          if (i == index)
            state[i].copyWith(quantity: state[i].quantity + 1)
          else
            state[i],
      ];
    } else {
      state = [...state, CartItem(product: product, quantity: 1)];
    }
  }

  void removeProduct(String productId) {
    state = state.where((item) => item.product.id != productId).toList();
  }

  void updateQuantity(String productId, int quantity) {
    if (quantity <= 0) {
      removeProduct(productId);
      return;
    }
    state = [
      for (final item in state)
        if (item.product.id == productId)
          item.copyWith(quantity: quantity)
        else
          item,
    ];
  }

  void clear() {
    state = [];
  }

  double get totalAmount => state.fold(0, (sum, item) => sum + item.totalPrice);
}
