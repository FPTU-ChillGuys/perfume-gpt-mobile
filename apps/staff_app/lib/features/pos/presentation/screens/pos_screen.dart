import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:staff_app/features/pos/data/services/pos_signalr_service.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../../../data/repositories/product_repository_impl.dart';
import '../../../../core/utils/price_formatter.dart';
import '../providers/cart_providers.dart';
import '../providers/counter_checkout_providers.dart';
import '../../data/models/signalr_dtos.dart';
import '../../../../core/widgets/scanner_screen.dart';
import 'batch_selection_dialog.dart';

class PosScreen extends ConsumerWidget {
  const PosScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // Listen for payment completed to show success and clear cart
    ref.listen(paymentCompletedEventProvider, (previous, next) {
      if (next.hasValue && next.value != null) {
        final event = next.value!;
        if (event.status == 'Paid') { // Updated field and check logic
          // Clear cart
          ref.read(posCartProvider.notifier).clearCart();
          
          // Show success snackbar
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text('Thanh toán thành công: ${event.orderId}'),
              backgroundColor: Colors.green,
            ),
          );
          
          // If a dialog is open (like the QR one), close it
          if (Navigator.of(context).canPop()) {
            Navigator.of(context).popUntil((route) => route.isFirst);
          }
        }
      }
    });

    // Listen for barcode from other devices (e.g. tablet receiving from mobile)
    ref.listen(barcodeReceivedEventProvider, (previous, next) {
      if (next.hasValue && next.value != null) {
        final barcode = next.value!;
        _handleBarcode(context, ref, barcode);
      }
    });

    final cart = ref.watch(posCartProvider);
    final total = ref.watch(cartTotalProvider);
    final skuController = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Mobile POS'),
        actions: [
          IconButton(
            icon: const Icon(Icons.qr_code_scanner),
            onPressed: () => _scanBarcode(context, ref),
          ),
          IconButton(
            icon: const Icon(Icons.delete_sweep),
            onPressed: () => ref.read(posCartProvider.notifier).clearCart(),
          ),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: skuController,
                    decoration: const InputDecoration(
                      hintText: 'Enter SKU',
                      border: OutlineInputBorder(),
                      isDense: true,
                    ),
                    onSubmitted: (value) {
                      _manualAdd(context, ref, value, skuController);
                    },
                  ),
                ),
                const SizedBox(width: 8),
                ElevatedButton(
                  onPressed: () {
                    _manualAdd(context, ref, skuController.text, skuController);
                  },
                  child: const Text('Add'),
                ),
              ],
            ),
          ),
          Expanded(
            child: cart.isEmpty
                ? const Center(child: Text('Cart is empty'))
                : ListView.builder(
                    itemCount: cart.length,
                    itemBuilder: (context, index) {
                      final key = cart.keys.elementAt(index);
                      final item = cart[key]!;
                      return ListTile(
                        title: Text(item.variantName),
                        subtitle: Text(
                          'SKU: ${item.sku} | Batch: ${item.batchCode} | ${PriceFormatter.format(item.price)}',
                        ),
                        trailing: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            SizedBox(
                              width: 32,
                              height: 32,
                              child: IconButton(
                                icon: const Icon(
                                  Icons.remove_circle_outline,
                                  size: 20,
                                ),
                                padding: EdgeInsets.zero,
                                onPressed: () => ref
                                    .read(posCartProvider.notifier)
                                    .updateQuantity(key, item.quantity - 1),
                              ),
                            ),
                            SizedBox(
                              width: 24,
                              child: Center(child: Text('${item.quantity}')),
                            ),
                            SizedBox(
                              width: 32,
                              height: 32,
                              child: IconButton(
                                icon: const Icon(
                                  Icons.add_circle_outline,
                                  size: 20,
                                ),
                                padding: EdgeInsets.zero,
                                onPressed: () => ref
                                    .read(posCartProvider.notifier)
                                    .updateQuantity(key, item.quantity + 1),
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
          ),
          Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.surfaceContainerHighest,
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withValues(alpha: 0.05),
                  blurRadius: 10,
                  offset: const Offset(0, -5),
                ),
              ],
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Total',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      PriceFormatter.format(total),
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Theme.of(context).colorScheme.primary,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: cart.isEmpty
                        ? null
                        : () => _showCheckoutSheet(context),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Theme.of(context).colorScheme.primary,
                      foregroundColor: Theme.of(context).colorScheme.onPrimary,
                    ),
                    child: const Text(
                      'CHECKOUT',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Future<void> _scanBarcode(BuildContext context, WidgetRef ref) async {
    final barcode = await Navigator.push<String>(
      context,
      MaterialPageRoute(builder: (context) => const ScannerScreen()),
    );

    if (barcode != null && context.mounted) {
      // Notify other clients (like a tablet display) about the scanned barcode
      ref.read(posSignalRServiceProvider).sendBarcodeFromMobile(barcode);
      
      _handleBarcode(context, ref, barcode);
    }
  }

  Future<void> _handleBarcode(
    BuildContext context,
    WidgetRef ref,
    String barcode,
  ) async {
    final product = await ref
        .read(productRepositoryProvider)
        .getProductForPos(barcode: barcode);
    if (product != null) {
      if (!context.mounted) return;
      final batchCode = await showDialog<String>(
        context: context,
        builder: (context) => BatchSelectionDialog(
          variantId: product.id,
          variantName: product.name,
        ),
      );

      if (batchCode != null) {
        ref
            .read(posCartProvider.notifier)
            .addProduct(product, batchCode: batchCode);
      }
    } else {
      if (context.mounted) {
        ScaffoldMessenger.of(
          context,
        ).showSnackBar(const SnackBar(content: Text('Product not found')));
      }
    }
  }

  Future<void> _manualAdd(
    BuildContext context,
    WidgetRef ref,
    String sku,
    TextEditingController controller,
  ) async {
    if (sku.isEmpty) return;
    final product = await ref
        .read(productRepositoryProvider)
        .getProductForPos(sku: sku);
    if (product != null) {
      if (!context.mounted) return;
      final batchCode = await showDialog<String>(
        context: context,
        builder: (context) => BatchSelectionDialog(
          variantId: product.id,
          variantName: product.name,
        ),
      );

      if (batchCode != null) {
        ref
            .read(posCartProvider.notifier)
            .addProduct(product, batchCode: batchCode);
        controller.clear();
      }
    } else {
      if (context.mounted) {
        ScaffoldMessenger.of(
          context,
        ).showSnackBar(const SnackBar(content: Text('Product not found')));
      }
    }
  }

  void _showCheckoutSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      builder: (_) => CheckoutBottomSheet(screenContext: context),
    );
  }
}

class CheckoutBottomSheet extends ConsumerWidget {
  final BuildContext screenContext;
  const CheckoutBottomSheet({super.key, required this.screenContext});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final total = ref.watch(cartTotalProvider);
    final checkoutState = ref.watch(counterCheckoutNotifier);
    final isLoading = checkoutState is AsyncLoading;

    return Padding(
      padding: EdgeInsets.only(
        bottom: MediaQuery.of(context).viewInsets.bottom,
        left: 16,
        right: 16,
        top: 24,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            'Thanh toán',
            style: Theme.of(context).textTheme.headlineSmall,
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 24),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text('Tổng cộng'),
              Text(
                PriceFormatter.format(total),
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.deepOrange,
                ),
              ),
            ],
          ),
          const SizedBox(height: 24),
          const Text('Chọn phương thức thanh toán:'),
          const SizedBox(height: 12),
          _PaymentMethodButton(
            method: 'CashInStore',
            label: 'Tiền mặt',
            icon: Icons.money,
            onTap: () => _completeSale(context, ref, 'CashInStore'),
          ),
          const SizedBox(height: 8),
          _PaymentMethodButton(
            method: 'VnPay',
            label: 'VnPay',
            icon: Icons.qr_code,
            onTap: () => _completeSale(context, ref, 'VnPay'),
          ),
          const SizedBox(height: 8),
          _PaymentMethodButton(
            method: 'Momo',
            label: 'Momo',
            icon: Icons.phone_android,
            onTap: () => _completeSale(context, ref, 'Momo'),
          ),
          const SizedBox(height: 32),
          if (isLoading)
            const Center(
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: CircularProgressIndicator(),
              ),
            ),
        ],
      ),
    );
  }

  Future<void> _completeSale(
    BuildContext context,
    WidgetRef ref,
    String method,
  ) async {
    final cart = ref.read(posCartProvider);
    final draftItems = cart.values.toList();

    final responseDto = await ref
        .read(counterCheckoutNotifier.notifier)
        .createInStoreOrder(items: draftItems, paymentMethod: method);

    if (responseDto == null) {
      if (context.mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('Tạo đơn hàng thất bại'),
            backgroundColor: Colors.red,
          ),
        );
      }
      return;
    }

    final paymentId = responseDto.paymentId;
    final orderId = responseDto.orderId;

    final parentContext = screenContext;
    if (!context.mounted || !parentContext.mounted) return;

    if (method == 'CashInStore') {
      if (paymentId != null && orderId != null) {
        final success = await ref
            .read(counterCheckoutNotifier.notifier)
            .confirmPayment(paymentId);
            
        if (!context.mounted || !parentContext.mounted) return;

        if (success) {
          ref.read(posSignalRServiceProvider).notifyPaymentSuccess(
            PosPaymentCompletedDto(
              orderId: orderId,
              paymentId: paymentId,
              status: 'Paid',
              message: 'Thanh toán tiền mặt thành công',
            ),
          );
          ref.read(posCartProvider.notifier).clearCart();
          Navigator.pop(context); // Close sheet safely
          ScaffoldMessenger.of(parentContext).showSnackBar(
            const SnackBar(
              content: Text('Thanh toán thành công!'),
              backgroundColor: Colors.green,
            ),
          );
        } else {
          ref.read(posSignalRServiceProvider).notifyPaymentFailed(
            PosPaymentCompletedDto(
              orderId: orderId,
              paymentId: paymentId,
              status: 'Failed',
              message: 'Xác nhận thanh toán thất bại',
            ),
          );
          ScaffoldMessenger.of(parentContext).showSnackBar(
            const SnackBar(
              content: Text('Xác nhận thanh toán thất bại'),
              backgroundColor: Colors.red,
            ),
          );
        }
      }
    } else {
      // For VNPay/Momo
      if (paymentId != null && orderId != null) {
        await _showQrPayment(context, ref, paymentId, method, orderId, parentContext);
      } else {
        if (context.mounted) {
          Navigator.pop(context); // Close sheet
        }
      }
    }
  }

  Future<void> _showQrPayment(
    BuildContext context,
    WidgetRef ref,
    String paymentId,
    String method,
    String orderId,
    BuildContext parentContext,
  ) async {
    final url = await ref
        .read(counterCheckoutNotifier.notifier)
        .retryPayment(paymentId, method);

    if (context.mounted) {
      if (url != null && url.isNotEmpty) {
        ref.read(posSignalRServiceProvider).notifyPaymentLinkUpdated(
          PosPaymentLinkDto(
            orderId: orderId,
            paymentId: paymentId,
            method: method,
            paymentUrl: url,
          ),
        );

        Navigator.pop(context); // Close sheet safely

        if (parentContext.mounted) {
          showDialog(
            context: parentContext,
            builder: (ctx) => AlertDialog(
              title: Text('Thanh toán $method'),
              content: SizedBox(
                width: 300,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Text('Quét mã QR để thanh toán:'),
                    const SizedBox(height: 16),
                    SizedBox(
                      width: 200,
                      height: 200,
                      child: Container(
                        padding: const EdgeInsets.all(12),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey.shade300),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: QrImageView(
                          data: url,
                          version: QrVersions.auto,
                          backgroundColor: Colors.white,
                        ),
                      ),
                    ),
                    const SizedBox(height: 12),
                    TextButton.icon(
                      onPressed: () async {
                        final uri = Uri.parse(url);
                        try {
                          final success = await launchUrl(
                            uri,
                            mode: LaunchMode.externalApplication,
                          );
                          if (!success && parentContext.mounted) {
                            ScaffoldMessenger.of(parentContext).showSnackBar(
                              const SnackBar(
                                content: Text('Không thể mở trình duyệt'),
                              ),
                            );
                          }
                        } catch (e) {
                          if (parentContext.mounted) {
                            ScaffoldMessenger.of(parentContext)
                                .showSnackBar(SnackBar(content: Text('Lỗi: $e')));
                          }
                        }
                      },
                      icon: const Icon(Icons.open_in_browser),
                      label: const Text('Mở link thanh toán'),
                    ),
                  ],
                ),
              ),
              actions: [
                TextButton(
                  onPressed: () => Navigator.pop(ctx),
                  child: const Text('Đóng'),
                ),
              ],
            ),
          );
        }
      } else {
        Navigator.pop(context); // Close sheet safely
        
        if (parentContext.mounted) {
          ScaffoldMessenger.of(parentContext).showSnackBar(
            const SnackBar(
              content: Text('Không thể tạo link thanh toán'),
              backgroundColor: Colors.red,
            ),
          );
        }
      }
    }
  }
}

class _PaymentMethodButton extends StatelessWidget {
  final String method;
  final String label;
  final IconData icon;
  final VoidCallback onTap;

  const _PaymentMethodButton({
    required this.method,
    required this.label,
    required this.icon,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey.shade300),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Row(
          children: [
            Icon(icon),
            const SizedBox(width: 16),
            Text(
              label,
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
            ),
            const Spacer(),
            const Icon(Icons.chevron_right, color: Colors.grey),
          ],
        ),
      ),
    );
  }
}
