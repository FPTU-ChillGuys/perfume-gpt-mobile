import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../../../data/repositories/product_repository_impl.dart';
import '../../../../core/utils/price_formatter.dart';
import '../providers/cart_providers.dart';
import '../providers/counter_checkout_providers.dart';
import 'scanner_screen.dart';
import 'batch_selection_dialog.dart';

class PosScreen extends ConsumerWidget {
  const PosScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // Watch cart sync to push to SignalR
    ref.watch(posCartSyncLegacyProvider);

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
                        title: Text(item.product.name),
                        subtitle: Text(
                          'SKU: ${item.product.sku} | Batch: ${item.batchCode} | ${PriceFormatter.format(item.product.price)}',
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
                    onPressed:
                        cart.isEmpty ? null : () => _showCheckoutSheet(context),
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
      builder: (context) => const CheckoutBottomSheet(),
    );
  }
}

class CheckoutBottomSheet extends ConsumerWidget {
  const CheckoutBottomSheet({super.key});

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
    final draftItems = cart.values
        .map(
          (item) => DraftItem(
            variantId: item.product.id,
            barcode: '', // Repo will handle barcode lookup if needed
            batchCode: item.batchCode,
            sku: item.product.sku,
            variantName: item.product.name,
            price: item.product.price,
            quantity: item.quantity,
          ),
        )
        .toList();

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

    if (method == 'CashInStore') {
      if (paymentId != null) {
        final success = await ref
            .read(counterCheckoutNotifier.notifier)
            .confirmPayment(paymentId);
        if (context.mounted) {
          if (success) {
            ref.read(posCartProvider.notifier).clearCart();
            Navigator.pop(context); // Close sheet
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Text('Thanh toán thành công!'),
                backgroundColor: Colors.green,
              ),
            );
          } else {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Text('Xác nhận thanh toán thất bại'),
                backgroundColor: Colors.red,
              ),
            );
          }
        }
      }
    } else {
      // For VNPay/Momo
      if (context.mounted) {
        Navigator.pop(context); // Close sheet
        ref.read(posCartProvider.notifier).clearCart();

        if (paymentId != null) {
          _showQrPayment(context, ref, paymentId, method);
        }
      }
    }
  }

  Future<void> _showQrPayment(
    BuildContext context,
    WidgetRef ref,
    String paymentId,
    String method,
  ) async {
    final url = await ref
        .read(counterCheckoutNotifier.notifier)
        .retryPayment(paymentId, method);

    if (url != null && url.isNotEmpty && context.mounted) {
      showDialog(
        context: context,
        builder: (ctx) => AlertDialog(
          title: Text('Thanh toán $method'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Text('Quét mã QR để thanh toán:'),
              const SizedBox(height: 16),
              ConstrainedBox(
                constraints: const BoxConstraints(
                  maxWidth: 250,
                  maxHeight: 250,
                ),
                child: AspectRatio(
                  aspectRatio: 1,
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
              ),
              const SizedBox(height: 12),
              TextButton.icon(
                onPressed: () async {
                  final uri = Uri.parse(url);
                  if (await canLaunchUrl(uri)) {
                    await launchUrl(uri, mode: LaunchMode.externalApplication);
                  }
                },
                icon: const Icon(Icons.open_in_browser),
                label: const Text('Mở link thanh toán'),
              ),
            ],
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
