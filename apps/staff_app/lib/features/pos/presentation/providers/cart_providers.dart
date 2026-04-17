import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../../../domain/entities/product.dart';
import '../../data/models/signalr_dtos.dart';
import '../../data/services/pos_signalr_service.dart';

part 'cart_providers.g.dart';

@riverpod
class PosCart extends _$PosCart {
  @override
  Map<String, CartItem> build() => {};
  void addProduct(Product product, {required String batchCode}) {
    final key = '${product.id}_$batchCode';
    state = {
      ...state,
      key: state.containsKey(key)
          ? state[key]!.copyWith(quantity: state[key]!.quantity + 1)
          : CartItem(product: product, batchCode: batchCode, quantity: 1),
    };
  }

  void removeProduct(String key) {
    final newState = Map<String, CartItem>.from(state);
    newState.remove(key);
    state = newState;
  }

  void updateQuantity(String key, int quantity) {
    if (quantity <= 0) {
      removeProduct(key);
      return;
    }
    if (state.containsKey(key)) {
      state = {...state, key: state[key]!.copyWith(quantity: quantity)};
    }
  }

  void clearCart() => state = {};
}

class CartItem {
  final Product product;
  final String batchCode;
  final int quantity;

  CartItem({
    required this.product,
    required this.batchCode,
    required this.quantity,
  });

  CartItem copyWith({Product? product, String? batchCode, int? quantity}) {
    return CartItem(
      product: product ?? this.product,
      batchCode: batchCode ?? this.batchCode,
      quantity: quantity ?? this.quantity,
    );
  }
}

@riverpod
double cartTotal(Ref ref) {
  final cart = ref.watch(posCartProvider);
  return cart.values.fold(
    0,
    (sum, item) => sum + (item.product.price * item.quantity),
  );
}

@riverpod
void posCartSyncLegacy(Ref ref) {
  final cart = ref.watch(posCartProvider);
  final signalRService = ref.read(posSignalRServiceProvider);

  if (signalRService.currentSessionId == null) return;

  final dtos = cart.values
      .map(
        (i) => CartItemDto(
          id: i.product.id,
          name: i.product.name,
          imageUrl: i.product.imageUrl,
          quantity: i.quantity,
          price: i.product.price,
          total: i.product.price * i.quantity,
        ),
      )
      .toList();

  final total = dtos.fold(0.0, (sum, i) => sum + i.total);

  signalRService.syncCartToCustomerDisplay(
    CartDisplayDto(items: dtos, totalAmount: total),
  );
}
