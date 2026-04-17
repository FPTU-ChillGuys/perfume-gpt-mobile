import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../../../domain/entities/product.dart';
import '../../data/models/signalr_dtos.dart';
import '../../data/services/pos_signalr_service.dart';

part 'cart_providers.g.dart';

@riverpod
class PosCart extends _$PosCart {
  @override
  Map<String, CartItem> build() => {};

  void addProduct(Product product) {
    state = {
      ...state,
      product.id: state.containsKey(product.id)
          ? state[product.id]!.copyWith(
              quantity: state[product.id]!.quantity + 1,
            )
          : CartItem(product: product, quantity: 1),
    };
  }

  void removeProduct(String productId) {
    final newState = Map<String, CartItem>.from(state);
    newState.remove(productId);
    state = newState;
  }

  void updateQuantity(String productId, int quantity) {
    if (quantity <= 0) {
      removeProduct(productId);
      return;
    }
    if (state.containsKey(productId)) {
      state = {
        ...state,
        productId: state[productId]!.copyWith(quantity: quantity),
      };
    }
  }

  void clearCart() => state = {};
}

class CartItem {
  final Product product;
  final int quantity;

  CartItem({required this.product, required this.quantity});

  CartItem copyWith({Product? product, int? quantity}) {
    return CartItem(
      product: product ?? this.product,
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
