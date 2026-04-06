import 'package:perfumegpt_common/perfumegpt_common.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../../../data/repositories/cart_repository_impl.dart';
import '../../../../domain/entities/cart_item.dart';
import '../../../../domain/entities/cart_total.dart';
import '../../../../domain/repositories/cart_repository.dart';

part 'cart_provider.g.dart';

@riverpod
CartRepository cartRepository(Ref ref) {
  final apiClient = ref.watch(apiClientProvider);
  return CartRepositoryImpl(apiClient.dio);
}

@riverpod
class Cart extends _$Cart {
  @override
  FutureOr<List<CartItem>> build() {
    return ref.watch(cartRepositoryProvider).getItems();
  }

  CartRepository get _repo => ref.read(cartRepositoryProvider);

  Future<void> addItem(String variantId, {int quantity = 1}) async {
    final repo = _repo;
    await repo.addItem(variantId, quantity: quantity);
    if (!ref.mounted) return;
    ref.invalidateSelf();
  }

  Future<void> updateItem(String cartItemId, int quantity) async {
    if (quantity <= 0) {
      await removeItem(cartItemId);
      return;
    }
    final repo = _repo;
    await repo.updateItem(cartItemId, quantity);
    if (!ref.mounted) return;
    ref.invalidateSelf();
  }

  Future<void> removeItem(String cartItemId) async {
    final repo = _repo;
    await repo.removeItem(cartItemId);
    if (!ref.mounted) return;
    ref.invalidateSelf();
  }

  Future<void> clearCart() async {
    final repo = _repo;
    await repo.clearCart();
    if (!ref.mounted) return;
    ref.invalidateSelf();
  }
}

@riverpod
FutureOr<CartTotal> cartTotal(Ref ref) {
  ref.watch(cartProvider);
  return ref.watch(cartRepositoryProvider).getTotal();
}

