import 'package:perfumegpt_api_client/perfumegpt_api_client.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../../../domain/entities/product.dart';
import '../../data/models/signalr_dtos.dart';
import '../../data/services/pos_signalr_service.dart';
import 'counter_checkout_providers.dart';

part 'cart_providers.g.dart';

@riverpod
class PosCart extends _$PosCart {
  @override
  Map<String, DraftItem> build() {
    return {};
  }

  void addProduct(Product product, {required String batchCode}) {
    final key = '${product.id}_$batchCode';
    state = {
      ...state,
      key: state.containsKey(key)
          ? state[key]!.copyWith(quantity: state[key]!.quantity + 1)
          : DraftItem(
              variantId: product.id,
              barcode: product.barcode,
              batchCode: batchCode,
              sku: product.sku,
              variantName: product.name,
              imageUrl: product.imageUrl,
              price: product.price,
              quantity: 1,
            ),
    };
    _syncToSignalR(state);
  }

  void addDraftItem(DraftItem item) {
    final key = '${item.variantId}_${item.batchCode}';
    state = {
      ...state,
      key: state.containsKey(key)
          ? state[key]!.copyWith(quantity: state[key]!.quantity + item.quantity)
          : item,
    };
    _syncToSignalR(state);
  }

  void removeProduct(String key) {
    final newState = Map<String, DraftItem>.from(state);
    newState.remove(key);
    state = newState;
    _syncToSignalR(state);
  }

  void updateQuantity(String key, int quantity) {
    if (quantity <= 0) {
      removeProduct(key);
      return;
    }
    if (state.containsKey(key)) {
      state = {...state, key: state[key]!.copyWith(quantity: quantity)};
      _syncToSignalR(state);
    }
  }

  void clearCart() {
    state = {};
    _syncToSignalR(state);
  }

  void _syncToSignalR(Map<String, DraftItem> cart) {
    final signalRService = ref.read(posSignalRServiceProvider);
    if (signalRService.currentSessionId == null) return;

    final items = cart.values
        .map(
          (i) => PosOrderDetailListItem(
            variantId: i.variantId,
            variantName: i.variantName,
            imageUrl: i.imageUrl,
            quantity: i.quantity,
            unitPrice: i.price,
            batchCode: i.batchCode,
            subTotal: i.price * i.quantity,
            finalTotal: i.price * i.quantity,
          ),
        )
        .toList();

    final subTotal = items.fold<double>(0.0, (sum, i) => sum + (i.subTotal?.toDouble() ?? 0.0));

    signalRService.syncCartToCustomerDisplay(
      CartDisplayDto(
        items: items,
        subTotal: subTotal,
        totalPrice: subTotal, // TODO: Add tax/discount logic if needed
      ),
    );
  }
}

@riverpod
double cartTotal(Ref ref) {
  final cart = ref.watch(posCartProvider);
  return cart.values.fold<double>(
    0.0,
    (double sum, DraftItem item) => sum + (item.price * item.quantity),
  );
}
