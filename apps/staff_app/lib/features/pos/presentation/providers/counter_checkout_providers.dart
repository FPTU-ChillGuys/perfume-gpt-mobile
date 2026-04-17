import 'package:flutter/foundation.dart';
import 'package:perfumegpt_api_client/perfumegpt_api_client.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../../../data/repositories/order_repository_impl.dart';
import '../../data/models/signalr_dtos.dart';
import '../../data/services/pos_signalr_service.dart';

part 'counter_checkout_providers.g.dart';

class DraftItem {
  final String variantId;
  final String barcode;
  final String batchCode;
  final String sku;
  final String variantName;
  final String? imageUrl;
  final double price;
  final int quantity;

  const DraftItem({
    required this.variantId,
    required this.barcode,
    required this.batchCode,
    required this.sku,
    required this.variantName,
    this.imageUrl,
    required this.price,
    required this.quantity,
  });

  DraftItem copyWith({int? quantity}) {
    return DraftItem(
      variantId: variantId,
      barcode: barcode,
      batchCode: batchCode,
      sku: sku,
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
    final idx = state.indexWhere(
      (e) => e.variantId == item.variantId && e.batchCode == item.batchCode,
    );
    if (idx >= 0) {
      final updated = List<DraftItem>.from(state);
      updated[idx] = updated[idx].copyWith(
        quantity: updated[idx].quantity + item.quantity,
      );
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
void posCartSync(Ref ref) {
  final items = ref.watch(draftItemsProvider);
  final signalRService = ref.read(posSignalRServiceProvider);

  if (signalRService.currentSessionId == null) return;

  final dtos = items
      .map(
        (i) => CartItemDto(
          id: i.variantId,
          name: i.variantName,
          imageUrl: i.imageUrl ?? '',
          quantity: i.quantity,
          price: i.price,
          total: i.price * i.quantity,
        ),
      )
      .toList();

  final total = dtos.fold(0.0, (sum, i) => sum + i.total);

  signalRService.syncCartToCustomerDisplay(
    CartDisplayDto(items: dtos, totalAmount: total),
  );
}

@riverpod
class LoadedOrder extends _$LoadedOrder {
  @override
  UserOrderResponse? build() => null;

  void setOrder(UserOrderResponse? order) => state = order;
  void clear() => state = null;
}

@riverpod
class SelectedPaymentMethod extends _$SelectedPaymentMethod {
  @override
  String build() => 'CashInStore';

  void setMethod(String method) => state = method;
}

@Riverpod(name: 'counterCheckoutNotifier')
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

  Future<CreatePaymentResponseDto?> createInStoreOrder({
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
      final scannedItems = items
          .map(
            (i) => PosScanItemRequest(
              barcode: i.barcode,
              batchCode:
                  'DEFAULT', // Note: Need batch selection in UI eventually
              quantity: i.quantity,
            ),
          )
          .toList();

      ContactAddressInformation? recipient;
      if (recipientName != null && recipientName.isNotEmpty) {
        recipient = ContactAddressInformation(
          contactName: recipientName,
          contactPhoneNumber: recipientPhone ?? '',
          fullAddress: recipientAddress ?? '',
          provinceName: 'N/A', // TODO: Add real location selection
          districtName: 'N/A',
          wardName: 'N/A',
          wardCode: 'N/A',
        );
      }

      final responseDto = await repo.checkoutInStore(
        scannedItems: scannedItems,
        paymentMethod: paymentMethod,
        voucherCode: voucherCode,
        recipient: recipient,
        expectedTotalPrice: ref.read(draftTotalProvider),
      );

      final orderId = responseDto?.orderId;
      if (orderId != null) {
        final order = await repo.getOrderById(orderId);
        if (order != null) {
          ref.read(loadedOrderProvider.notifier).setOrder(order);
          _syncPaymentMethod(order);
        }
        ref.read(draftItemsProvider.notifier).clear();
      }

      state = const AsyncData(null);
      return responseDto;
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
        if (order != null && order.id != null) {
          final refreshed = await repo.getOrderById(order.id!);
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
          variantId: data.id ?? variantId,
          barcode: data.barcode,
          batchCode: 'DEFAULT', // Temporary placeholder
          sku: data.sku,
          variantName: data.displayName,
          imageUrl: data.primaryImageUrl,
          price: (data.basePrice ?? 0).toDouble(),
          quantity: 1,
        );
      }
    } catch (e) {
      debugPrint('lookupVariant error: $e');
    }
    return null;
  }

  void _syncPaymentMethod(UserOrderResponse order) {
    final transactions = order.paymentTransactions;
    if (transactions != null && transactions.isNotEmpty) {
      final method = transactions.first.paymentMethod;
      if (method != null) {
        // Map API PaymentMethod to String for provider
        ref
            .read(selectedPaymentMethodProvider.notifier)
            .setMethod(method.value);
      }
    }
  }

  void resetAll() {
    ref.read(loadedOrderProvider.notifier).clear();
    ref.read(draftItemsProvider.notifier).clear();
    ref.read(selectedPaymentMethodProvider.notifier).setMethod('CashInStore');
  }
}
