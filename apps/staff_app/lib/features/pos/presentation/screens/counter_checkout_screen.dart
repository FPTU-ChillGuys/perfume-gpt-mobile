import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:perfumegpt_api_client/perfumegpt_api_client.dart';
import '../../../../core/utils/price_formatter.dart';
import '../providers/counter_checkout_providers.dart';
import '../../data/services/pos_signalr_service.dart';

class CounterCheckoutScreen extends ConsumerStatefulWidget {
  const CounterCheckoutScreen({super.key});

  @override
  ConsumerState<CounterCheckoutScreen> createState() =>
      _CounterCheckoutScreenState();
}

class _CounterCheckoutScreenState extends ConsumerState<CounterCheckoutScreen> {
  final _orderCodeController = TextEditingController();
  final _variantIdController = TextEditingController();
  final _voucherController = TextEditingController();
  final _recipientNameController = TextEditingController();
  final _recipientPhoneController = TextEditingController();
  final _recipientAddressController = TextEditingController();

  @override
  void dispose() {
    _orderCodeController.dispose();
    _variantIdController.dispose();
    _voucherController.dispose();
    _recipientNameController.dispose();
    _recipientPhoneController.dispose();
    _recipientAddressController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // Watch cart sync to push to SignalR
    ref.watch(posCartSyncProvider);

    final loadedOrder = ref.watch(loadedOrderProvider);
    final checkoutState = ref.watch(counterCheckoutNotifier);
    final isLoading = checkoutState is AsyncLoading;
    final sessionId = ref.watch(posSignalRServiceProvider).currentSessionId;

    ref.listen(paymentCompletedEventProvider, (prev, next) {
      next.whenData((paymentData) {
        if (paymentData.isSuccess) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text('Thanh toán thành công: ${paymentData.orderCode}'),
              backgroundColor: Colors.green,
            ),
          );
          _reloadCurrentOrder();
        }
      });
    });

    ref.listen(paymentFailedEventProvider, (prev, next) {
      next.whenData((paymentData) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Thanh toán thất bại: ${paymentData.orderCode}'),
            backgroundColor: Colors.red,
          ),
        );
        _reloadCurrentOrder();
      });
    });

    return Scaffold(
      appBar: AppBar(
        title: const Text('Thanh toán tại quầy'),
        actions: [
          IconButton(
            icon: const Icon(Icons.refresh),
            tooltip: 'Làm mới',
            onPressed: () {
              ref.read(counterCheckoutNotifier.notifier).resetAll();
              _orderCodeController.clear();
              _variantIdController.clear();
              _voucherController.clear();
              _recipientNameController.clear();
              _recipientPhoneController.clear();
              _recipientAddressController.clear();
            },
          ),
        ],
      ),
      body: isLoading
          ? const Center(child: CircularProgressIndicator())
          : SingleChildScrollView(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  if (sessionId != null) ...[
                    Container(
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: Colors.blue.shade50,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Icon(Icons.cast, color: Colors.blue, size: 20),
                          const SizedBox(width: 8),
                          Flexible(
                            child: SelectableText(
                              'Session ID: $sessionId',
                              style: const TextStyle(
                                color: Colors.blue,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 16),
                  ],
                  _buildLoadOrderSection(),
                  const SizedBox(height: 16),
                  if (loadedOrder == null) ...[_buildCreateOrderSection()],
                  if (loadedOrder != null) ...[
                    _buildOrderInfoSection(loadedOrder),
                    const SizedBox(height: 16),
                    _buildPaymentSection(loadedOrder),
                  ],
                ],
              ),
            ),
    );
  }

  Widget _buildLoadOrderSection() {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '1. Tải đơn hàng',
              style: Theme.of(
                context,
              ).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 12),
            Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _orderCodeController,
                    decoration: const InputDecoration(
                      hintText: 'Nhập mã đơn hàng...',
                      prefixIcon: Icon(Icons.search),
                      border: OutlineInputBorder(),
                      isDense: true,
                    ),
                    onSubmitted: (_) => _loadOrder(),
                  ),
                ),
                const SizedBox(width: 8),
                ElevatedButton.icon(
                  onPressed: _loadOrder,
                  icon: const Icon(Icons.download),
                  label: const Text('Tải đơn'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCreateOrderSection() {
    final draftItems = ref.watch(draftItemsProvider);
    final draftTotal = ref.watch(draftTotalProvider);
    final paymentMethod = ref.watch(selectedPaymentMethodProvider);

    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '2. Tạo đơn nhanh tại quầy',
              style: Theme.of(
                context,
              ).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 12),
            Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _variantIdController,
                    decoration: const InputDecoration(
                      hintText: 'Nhập Variant ID...',
                      prefixIcon: Icon(Icons.add_box),
                      border: OutlineInputBorder(),
                      isDense: true,
                    ),
                    onSubmitted: (_) => _addDraftItem(),
                  ),
                ),
                const SizedBox(width: 8),
                ElevatedButton(
                  onPressed: _addDraftItem,
                  child: const Text('Thêm'),
                ),
              ],
            ),
            const SizedBox(height: 12),
            if (draftItems.isNotEmpty) ...[
              ...draftItems.asMap().entries.map(
                (entry) => _buildDraftItemTile(entry.key, entry.value),
              ),
              const Divider(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Tổng cộng:',
                    style: Theme.of(context).textTheme.titleSmall,
                  ),
                  Text(
                    PriceFormatter.format(draftTotal),
                    style: Theme.of(context).textTheme.titleSmall?.copyWith(
                      fontWeight: FontWeight.bold,
                      color: Colors.deepOrange,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 12),
            ],
            ExpansionTile(
              title: const Text('Thông tin người nhận (tuỳ chọn)'),
              tilePadding: EdgeInsets.zero,
              children: [
                TextField(
                  controller: _recipientNameController,
                  decoration: const InputDecoration(
                    labelText: 'Tên người nhận',
                    border: OutlineInputBorder(),
                    isDense: true,
                  ),
                ),
                const SizedBox(height: 8),
                TextField(
                  controller: _recipientPhoneController,
                  decoration: const InputDecoration(
                    labelText: 'Số điện thoại',
                    border: OutlineInputBorder(),
                    isDense: true,
                  ),
                  keyboardType: TextInputType.phone,
                ),
                const SizedBox(height: 8),
                TextField(
                  controller: _recipientAddressController,
                  decoration: const InputDecoration(
                    labelText: 'Địa chỉ',
                    border: OutlineInputBorder(),
                    isDense: true,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 8),
            TextField(
              controller: _voucherController,
              decoration: const InputDecoration(
                labelText: 'Mã voucher (tuỳ chọn)',
                prefixIcon: Icon(Icons.confirmation_number),
                border: OutlineInputBorder(),
                isDense: true,
              ),
            ),
            const SizedBox(height: 12),
            _buildPaymentMethodSelector(paymentMethod),
            const SizedBox(height: 16),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton.icon(
                onPressed: draftItems.isEmpty ? null : _createOrder,
                icon: const Icon(Icons.shopping_cart_checkout),
                label: const Text('Tạo đơn hàng'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.deepOrange,
                  foregroundColor: Colors.white,
                  padding: const EdgeInsets.symmetric(vertical: 14),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildDraftItemTile(int index, DraftItem item) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      leading: item.imageUrl != null
          ? ClipRRect(
              borderRadius: BorderRadius.circular(4),
              child: Image.network(
                item.imageUrl!,
                width: 40,
                height: 40,
                fit: BoxFit.cover,
                errorBuilder: (_, e, st) =>
                    const Icon(Icons.image_not_supported, size: 40),
              ),
            )
          : const Icon(Icons.inventory_2, size: 40),
      title: Text(
        item.variantName,
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
      ),
      subtitle: Text(PriceFormatter.format(item.price)),
      trailing: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            width: 28,
            height: 28,
            child: IconButton(
              icon: const Icon(Icons.remove_circle_outline, size: 20),
              padding: EdgeInsets.zero,
              onPressed: () => ref
                  .read(draftItemsProvider.notifier)
                  .updateQuantity(index, item.quantity - 1),
            ),
          ),
          SizedBox(width: 24, child: Center(child: Text('${item.quantity}'))),
          SizedBox(
            width: 28,
            height: 28,
            child: IconButton(
              icon: const Icon(Icons.add_circle_outline, size: 20),
              padding: EdgeInsets.zero,
              onPressed: () => ref
                  .read(draftItemsProvider.notifier)
                  .updateQuantity(index, item.quantity + 1),
            ),
          ),
          SizedBox(
            width: 28,
            height: 28,
            child: IconButton(
              icon: const Icon(
                Icons.delete_outline,
                size: 20,
                color: Colors.red,
              ),
              padding: EdgeInsets.zero,
              onPressed: () =>
                  ref.read(draftItemsProvider.notifier).removeItem(index),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildPaymentMethodSelector(String selectedMethod) {
    const methods = [
      ('CashInStore', 'Tiền mặt', Icons.money),
      ('VnPay', 'VnPay', Icons.qr_code),
      ('Momo', 'Momo', Icons.phone_android),
    ];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Phương thức thanh toán:',
          style: Theme.of(context).textTheme.bodyMedium,
        ),
        const SizedBox(height: 8),
        SegmentedButton<String>(
          segments: methods
              .map(
                (m) => ButtonSegment<String>(
                  value: m.$1,
                  label: Text(m.$2),
                  icon: Icon(m.$3),
                ),
              )
              .toList(),
          selected: {selectedMethod},
          onSelectionChanged: (value) {
            ref
                .read(selectedPaymentMethodProvider.notifier)
                .setMethod(value.first);
          },
        ),
      ],
    );
  }

  Widget _buildOrderInfoSection(UserOrderResponse order) {
    final code = order.code;
    final status = order.status?.value ?? '';
    final paymentStatus = order.paymentStatus?.value ?? '';
    final totalAmount = (order.totalAmount ?? 0).toDouble();
    final customerName = order.recipientInfo?.recipientName;
    final details = order.orderDetails;
    final voucherCode = order.voucherCode;

    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Flexible(
                  child: Text(
                    'Thông tin đơn hàng',
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                _buildStatusChip(paymentStatus),
              ],
            ),
            const Divider(),
            _infoRow('Mã đơn', code),
            _infoRow('Trạng thái', status),
            if (customerName != null) _infoRow('Khách hàng', customerName),
            if (voucherCode != null) _infoRow('Voucher', voucherCode),
            _infoRow('Tổng tiền', PriceFormatter.format(totalAmount)),
            const Divider(),
            Text(
              'Sản phẩm:',
              style: Theme.of(
                context,
              ).textTheme.bodyMedium?.copyWith(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            ...details.map((detail) {
              final name = detail.variantName;
              final qty = detail.quantity ?? 0;
              final unitPrice = (detail.unitPrice ?? 0).toDouble();
              final imgUrl = detail.imageUrl;
              return ListTile(
                contentPadding: EdgeInsets.zero,
                leading: imgUrl != null
                    ? ClipRRect(
                        borderRadius: BorderRadius.circular(4),
                        child: Image.network(
                          imgUrl,
                          width: 40,
                          height: 40,
                          fit: BoxFit.cover,
                          errorBuilder: (_, e, st) =>
                              const Icon(Icons.image_not_supported, size: 40),
                        ),
                      )
                    : const Icon(Icons.inventory_2, size: 40),
                title: Text(name, maxLines: 1, overflow: TextOverflow.ellipsis),
                subtitle: Text('${PriceFormatter.format(unitPrice)} x $qty'),
                trailing: Text(
                  PriceFormatter.format(unitPrice * qty),
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
              );
            }),
          ],
        ),
      ),
    );
  }

  Widget _buildPaymentSection(UserOrderResponse order) {
    final paymentMethod = ref.watch(selectedPaymentMethodProvider);
    final isPaid = order.paymentStatus == PaymentStatus.paid;
    final transactions = order.paymentTransactions ?? [];
    final paymentId = transactions.isNotEmpty ? transactions.first.id : null;

    if (isPaid) {
      return Card(
        color: Colors.green.shade50,
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Row(
            children: [
              Icon(Icons.check_circle, color: Colors.green.shade700, size: 32),
              const SizedBox(width: 12),
              Expanded(
                child: Text(
                  'Đã thanh toán thành công!',
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    color: Colors.green.shade700,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    }

    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '3. Xử lý thanh toán',
              style: Theme.of(
                context,
              ).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 12),
            _buildPaymentMethodSelector(paymentMethod),
            const SizedBox(height: 16),
            if (paymentMethod == 'CashInStore') ...[
              SizedBox(
                width: double.infinity,
                child: ElevatedButton.icon(
                  onPressed: paymentId != null
                      ? () => _confirmCashPayment(paymentId)
                      : null,
                  icon: const Icon(Icons.check),
                  label: const Text('Xác nhận đã nhận tiền mặt'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                    foregroundColor: Colors.white,
                    padding: const EdgeInsets.symmetric(vertical: 14),
                  ),
                ),
              ),
            ] else ...[
              SizedBox(
                width: double.infinity,
                child: ElevatedButton.icon(
                  onPressed: paymentId != null
                      ? () => _showQrPayment(paymentId, paymentMethod)
                      : null,
                  icon: const Icon(Icons.qr_code),
                  label: Text('Thanh toán bằng $paymentMethod'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: paymentMethod == 'VnPay'
                        ? Colors.blue
                        : Colors.pink,
                    foregroundColor: Colors.white,
                    padding: const EdgeInsets.symmetric(vertical: 14),
                  ),
                ),
              ),
            ],
          ],
        ),
      ),
    );
  }

  Widget _buildStatusChip(String status) {
    Color color;
    switch (status) {
      case 'Paid':
        color = Colors.green;
      case 'Unpaid':
        color = Colors.orange;
      case 'Refunded':
      case 'Partial_Refunded':
        color = Colors.red;
      default:
        color = Colors.grey;
    }
    return Chip(
      label: Text(
        status,
        style: const TextStyle(color: Colors.white, fontSize: 12),
      ),
      backgroundColor: color,
      padding: EdgeInsets.zero,
      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
    );
  }

  Widget _infoRow(String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(label, style: const TextStyle(color: Colors.grey)),
          Flexible(
            child: Text(
              value,
              textAlign: TextAlign.end,
              style: const TextStyle(fontWeight: FontWeight.w500),
            ),
          ),
        ],
      ),
    );
  }

  Future<void> _loadOrder() async {
    final code = _orderCodeController.text.trim();
    if (code.isEmpty) return;
    await ref.read(counterCheckoutNotifier.notifier).loadOrder(code);
    final order = ref.read(loadedOrderProvider);
    if (order == null && mounted) {
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(const SnackBar(content: Text('Không tìm thấy đơn hàng')));
    }
  }

  Future<void> _addDraftItem() async {
    final variantId = _variantIdController.text.trim();
    if (variantId.isEmpty) return;

    final item = await ref
        .read(counterCheckoutNotifier.notifier)
        .lookupVariant(variantId);
    if (item != null) {
      ref.read(draftItemsProvider.notifier).addItem(item);
      _variantIdController.clear();
    } else if (mounted) {
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(const SnackBar(content: Text('Không tìm thấy sản phẩm')));
    }
  }

  Future<void> _createOrder() async {
    final items = ref.read(draftItemsProvider);
    final method = ref.read(selectedPaymentMethodProvider);

    final responseDto = await ref
        .read(counterCheckoutNotifier.notifier)
        .createInStoreOrder(
          items: items,
          paymentMethod: method,
          voucherCode: _voucherController.text.trim(),
          recipientName: _recipientNameController.text.trim(),
          recipientPhone: _recipientPhoneController.text.trim(),
          recipientAddress: _recipientAddressController.text.trim(),
        );

    final orderId = responseDto?.orderId;

    if (orderId != null && mounted) {
      _orderCodeController.text = orderId;
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Tạo đơn hàng thành công: $orderId'),
          backgroundColor: Colors.green,
        ),
      );
    } else if (mounted) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Tạo đơn hàng thất bại'),
          backgroundColor: Colors.red,
        ),
      );
    }
  }

  Future<void> _confirmCashPayment(String paymentId) async {
    final success = await ref
        .read(counterCheckoutNotifier.notifier)
        .confirmPayment(paymentId);
    if (mounted) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(
            success
                ? 'Xác nhận thanh toán thành công!'
                : 'Xác nhận thanh toán thất bại',
          ),
          backgroundColor: success ? Colors.green : Colors.red,
        ),
      );
    }
  }

  Future<void> _showQrPayment(String paymentId, String method) async {
    final url = await ref
        .read(counterCheckoutNotifier.notifier)
        .retryPayment(paymentId, method);

    if (url != null && url.isNotEmpty && mounted) {
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
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey.shade300),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Center(
                    child: SelectableText(
                      url,
                      textAlign: TextAlign.center,
                      style: const TextStyle(fontSize: 12),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 16),
              const Text(
                'Sau khi khách hàng thanh toán, nhấn xác nhận bên dưới.',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 13, color: Colors.grey),
              ),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(ctx),
              child: const Text('Đóng'),
            ),
            ElevatedButton(
              onPressed: () async {
                Navigator.pop(ctx);
                await _reloadCurrentOrder();
              },
              child: const Text('Kiểm tra trạng thái'),
            ),
          ],
        ),
      );
    } else if (mounted) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Không thể tạo link thanh toán'),
          backgroundColor: Colors.red,
        ),
      );
    }
  }

  Future<void> _reloadCurrentOrder() async {
    final order = ref.read(loadedOrderProvider);
    if (order != null && order.id != null) {
      await ref.read(counterCheckoutNotifier.notifier).loadOrder(order.id!);
    }
  }
}
