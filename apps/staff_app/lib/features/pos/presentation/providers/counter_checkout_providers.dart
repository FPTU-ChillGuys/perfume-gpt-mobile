import 'package:flutter/foundation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../../../data/repositories/order_repository_impl.dart';

part 'counter_checkout_providers.g.dart';

class DraftItem {
  final String variantId;
  final String variantName;
  final String? imageUrl;
  final double price;
  final int quantity;

  const DraftItem({
    required this.variantId,
    required this.variantName,
    this.imageUrl,
    required this.price,
    required this.quantity,
  });

  DraftItem copyWith({int? quantity}) {
    return DraftItem(
      variantId: variantId,
      variantName: variantName,
      imageUrl: imageUrl,
      price: price,
      quantity: quantity ?? this.quantity,
    );
  }
}

@riverpod
class DraftItems extends _$DraftItems {
  @override
  List<DraftItem> build() => [];

  void addItem(DraftItem item) {
    final idx = state.indexWhere((e) => e.variantId == item.variantId);
    if (idx >= 0) {
      final updated = List<DraftItem>.from(state);
      updated[idx] = updated[idx].copyWith(quantity: updated[idx].quantity + item.quantity);
      state = updated;
    } else {
      state = [...state, item];
    }
  }

  void removeItem(int index) {
    final updated = List<DraftItem>.from(state);
    updated.removeAt(index);
    state = updated;
  }

  void updateQuantity(int index, int quantity) {
    if (quantity <= 0) {
      removeItem(index);
      return;
    }
    final updated = List<DraftItem>.from(state);
    updated[index] = updated[index].copyWith(quantity: quantity);
    state = updated;
  }

  void clear() => state = [];
}

@riverpod
double draftTotal(Ref ref) {
  final items = ref.watch(draftItemsProvider);
  return items.fold(0.0, (sum, item) => sum + item.price * item.quantity);
}

@riverpod
class LoadedOrder extends _$LoadedOrder {
  @override
  Map<String, dynamic>? build() => null;

  void setOrder(Map<String, dynamic>? order) => state = order;
  void clear() => state = null;
}

@riverpod
class SelectedPaymentMethod extends _$SelectedPaymentMethod {
  @override
  String build() => 'CashInStore';

  void setMethod(String method) => state = method;
}

@riverpod
class CounterCheckoutNotifier extends _$CounterCheckoutNotifier {
  @override
  AsyncValue<void> build() => const AsyncData(null);

  Future<void> loadOrder(String orderCode) async {
    state = const AsyncLoading();
    try {
      final repo = ref.read(orderRepositoryProvider);
      final order = await repo.getOrderById(orderCode);
      if (order != null) {
        ref.read(loadedOrderProvider.notifier).setOrder(order);
        _syncPaymentMethod(order);
      }
      state = const AsyncData(null);
    } catch (e, s) {
      state = AsyncError(e, s);
    }
  }

  Future<String?> createInStoreOrder({
    required List<DraftItem> items,
    required String paymentMethod,
    String? voucherCode,
    String? recipientName,
    String? recipientPhone,
    String? recipientAddress,
  }) async {
    state = const AsyncLoading();
    try {
      final repo = ref.read(orderRepositoryProvider);
      final orderDetails = items
          .map((i) => {
                'variantId': i.variantId,
                'quantity': i.quantity,
              })
          .toList();

      Map<String, dynamic>? recipient;
      if (recipientName != null && recipientName.isNotEmpty) {
        recipient = {
          'contactName': recipientName,
          'contactPhoneNumber': recipientPhone ?? '',
          'districtName': '',
          'wardCode': '',
          'wardName': '',
          'provinceName': '',
          'fullAddress': recipientAddress ?? '',
        };
      }

      final orderId = await repo.checkoutInStore(
        orderDetails: orderDetails,
        paymentMethod: paymentMethod,
        voucherCode: voucherCode,
        recipient: recipient,
      );

      if (orderId != null) {
        final order = await repo.getOrderById(orderId);
        if (order != null) {
          ref.read(loadedOrderProvider.notifier).setOrder(order);
          _syncPaymentMethod(order);
        }
        ref.read(draftItemsProvider.notifier).clear();
      }

      state = const AsyncData(null);
      return orderId;
    } catch (e, s) {
      state = AsyncError(e, s);
      return null;
    }
  }

  Future<String?> retryPayment(String paymentId, String method) async {
    try {
      final repo = ref.read(orderRepositoryProvider);
      final url = await repo.retryPayment(paymentId, method);
      return url;
    } catch (e) {
      debugPrint('retryPayment error: $e');
      return null;
    }
  }

  Future<bool> confirmPayment(String paymentId) async {
    state = const AsyncLoading();
    try {
      final repo = ref.read(orderRepositoryProvider);
      final success = await repo.confirmPayment(paymentId, true);
      if (success) {
        final order = ref.read(loadedOrderProvider);
        if (order != null && order['id'] != null) {
          final refreshed = await repo.getOrderById(order['id']);
          if (refreshed != null) {
            ref.read(loadedOrderProvider.notifier).setOrder(refreshed);
          }
        }
      }
      state = const AsyncData(null);
      return success;
    } catch (e, s) {
      state = AsyncError(e, s);
      return false;
    }
  }

  Future<DraftItem?> lookupVariant(String variantId) async {
    try {
      final repo = ref.read(orderRepositoryProvider);
      final data = await repo.getVariantById(variantId);
      if (data != null) {
        return DraftItem(
          variantId: data['id'] ?? variantId,
          variantName: data['name'] ?? data['variantName'] ?? 'Unknown',
          imageUrl: data['imageUrl'] as String?,
          price: ((data['retailPrice'] ?? data['basePrice'] ?? 0) as num).toDouble(),
          quantity: 1,
        );
      }
    } catch (e) {
      debugPrint('lookupVariant error: $e');
    }
    return null;
  }

  void _syncPaymentMethod(Map<String, dynamic> order) {
    final transactions = order['paymentTransactions'] as List<dynamic>?;
    if (transactions != null && transactions.isNotEmpty) {
      final first = transactions.first as Map<String, dynamic>;
      final method = first['paymentMethod'] as String?;
      if (method != null) {
        ref.read(selectedPaymentMethodProvider.notifier).setMethod(method);
      }
    }
  }

  void resetAll() {
    ref.read(loadedOrderProvider.notifier).clear();
    ref.read(draftItemsProvider.notifier).clear();
    ref.read(selectedPaymentMethodProvider.notifier).setMethod('CashInStore');
  }
}
