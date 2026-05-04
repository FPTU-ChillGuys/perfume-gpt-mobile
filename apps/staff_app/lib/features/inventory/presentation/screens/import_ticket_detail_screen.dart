import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:perfumegpt_api_client/perfumegpt_api_client.dart';
import 'package:perfumegpt_common/perfumegpt_common.dart';
import 'package:collection/collection.dart';
import '../../../../core/widgets/scanner_screen.dart';
import '../providers/import_verification_provider.dart';
import '../providers/import_verification_state.dart';

class ImportTicketDetailScreen extends ConsumerStatefulWidget {
  const ImportTicketDetailScreen({super.key, required this.ticketId});

  final String ticketId;

  @override
  ConsumerState<ImportTicketDetailScreen> createState() =>
      _ImportTicketDetailScreenState();
}

class _ImportTicketDetailScreenState extends ConsumerState<ImportTicketDetailScreen> {
  final ScrollController _scrollController = ScrollController();
  final Map<String, GlobalKey> _itemKeys = {};

  @override
  void initState() {
    super.initState();
    Future.microtask(() {
      ref.read(importVerificationProvider.notifier).loadTicket(widget.ticketId);
    });
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  Future<void> _scanProduct() async {
    final barcode = await Navigator.push<String>(
      context,
      MaterialPageRoute(builder: (context) => const ScannerScreen()),
    );

    if (barcode != null && mounted) {
      try {
        final dio = ref.read(apiClientProvider).dio;
        final api = ProductVariantsApi(dio);
        final response = await api.apiProductvariantsForPosGet(keyword: barcode);
        final variantId = response.data?.payload?.id;

        if (variantId != null) {
          final notifier = ref.read(importVerificationProvider.notifier);
          notifier.expandProductByVariantId(variantId);

          final state = ref.read(importVerificationProvider);
          final product =
              state.products.firstWhereOrNull((p) => p.variantId == variantId);

          if (product != null) {
            final key = _itemKeys[product.importDetailId];
            if (key != null && key.currentContext != null) {
              await Scrollable.ensureVisible(
                key.currentContext!,
                duration: const Duration(milliseconds: 500),
                alignment: 0.1,
              );
            }
          } else {
            if (mounted) {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text('Sản phẩm không có trong đơn nhập này'),
                  backgroundColor: Colors.orange,
                ),
              );
            }
          }
        } else {
          if (mounted) {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Text('Không tìm thấy thông tin sản phẩm'),
                backgroundColor: Colors.red,
              ),
            );
          }
        }
      } catch (e) {
        if (mounted) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text('Lỗi: $e'), backgroundColor: Colors.red),
          );
        }
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(importVerificationProvider);

    if (state.isLoading && state.products.isEmpty) {
      return Scaffold(
        appBar: AppBar(
          title: Text(
            'Chi tiết đơn - ${widget.ticketId.length > 8 ? widget.ticketId.substring(0, 8) : widget.ticketId}',
          ),
        ),
        body: const Center(child: CircularProgressIndicator()),
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Xác nhận nhập hàng - PO #${widget.ticketId.length > 8 ? widget.ticketId.substring(0, 8).toUpperCase() : widget.ticketId.toUpperCase()}',
        ),
        actions: [
          if (state.status == ImportStatus.inProgress)
            IconButton(
              icon: const Icon(Icons.qr_code_scanner),
              onPressed: _scanProduct,
              tooltip: 'Quét sản phẩm',
            ),
        ],
      ),
      body: CustomScrollView(
        controller: _scrollController,
        slivers: [
          _buildHeader(state),
          _buildProductList(state),
          _buildStaffNote(state),
          _buildSummary(state),
          const SliverPadding(padding: EdgeInsets.only(bottom: 120)),
        ],
      ),
      floatingActionButton: state.status == ImportStatus.inProgress
          ? FloatingActionButton.extended(
              onPressed: _scanProduct,
              label: const Text('Quét sản phẩm'),
              icon: const Icon(Icons.qr_code_scanner),
              backgroundColor: Colors.red,
              foregroundColor: Colors.white,
            )
          : null,
      bottomSheet: _buildBottomActions(state),
    );
  }

  Widget _buildHeader(ImportVerificationState state) {
    return SliverToBoxAdapter(
      child: Card(
        margin: const EdgeInsets.all(16),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                state.supplierName ?? 'Đang tải...',
                style: Theme.of(context).textTheme.titleLarge?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
              ),
              const SizedBox(height: 8),
              Row(
                children: [
                  const Icon(Icons.calendar_today, size: 16, color: Colors.grey),
                  const SizedBox(width: 8),
                  Text(
                    state.importDate != null
                        ? DateFormat('dd/MM/yyyy').format(state.importDate!)
                        : '...',
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                  const Spacer(),
                  _buildStatusChip(state.status),
                ],
              ),
              if (state.status == ImportStatus.pending) ...[
                const SizedBox(height: 16),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () =>
                        ref.read(importVerificationProvider.notifier).startChecking(),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red,
                      foregroundColor: Colors.white,
                    ),
                    child: const Text('BẮT ĐẦU KIỂM TRA'),
                  ),
                ),
              ],
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildStatusChip(ImportStatus? status) {
    Color color = Colors.grey;
    String label = status?.value ?? 'Unknown';

    switch (status) {
      case ImportStatus.pending:
        color = Colors.orange;
        label = 'Chờ xử lý';
        break;
      case ImportStatus.inProgress:
        color = Colors.blue;
        label = 'Đang kiểm tra';
        break;
      case ImportStatus.completed:
        color = Colors.green;
        label = 'Hoàn thành';
        break;
      case ImportStatus.cancelled:
        color = Colors.red;
        label = 'Đã hủy';
        break;
      default:
        break;
    }

    return Chip(
      label: Text(
        label,
        style: const TextStyle(fontSize: 12, color: Colors.white),
      ),
      backgroundColor: color,
      padding: EdgeInsets.zero,
      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
    );
  }

  Widget _buildProductList(ImportVerificationState state) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (context, index) {
          final product = state.products[index];
          final key = _itemKeys.putIfAbsent(
            product.importDetailId,
            () => GlobalKey(),
          );
          return _ProductVerificationCard(
            key: key,
            product: product,
            isEditable: state.status == ImportStatus.inProgress,
          );
        },
        childCount: state.products.length,
      ),
    );
  }

  Widget _buildStaffNote(ImportVerificationState state) {
    if (state.status != ImportStatus.inProgress) {
      return const SliverToBoxAdapter(child: SizedBox.shrink());
    }

    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'GHI CHÚ NHÂN VIÊN',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 12,
                color: Colors.grey,
              ),
            ),
            const SizedBox(height: 8),
            TextField(
              maxLines: 3,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Mô tả bất kỳ sự cố nào...',
              ),
              onChanged: (val) =>
                  ref.read(importVerificationProvider.notifier).updateStaffNote(val),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSummary(ImportVerificationState state) {
    final totalExpected =
        state.products.fold(0, (sum, p) => sum + p.expectedQuantity);
    final totalReceived = state.products.fold(
      0,
      (sum, p) => sum + p.batches.fold(0, (s, b) => s + b.quantity),
    );
    final damagedCount = (totalExpected - totalReceived).clamp(0, totalExpected);

    return SliverToBoxAdapter(
      child: Container(
        margin: const EdgeInsets.all(16),
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Colors.red.shade50,
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: Colors.red.shade200),
        ),
        child: Column(
          children: [
            const Text(
              'Tổng quan xác nhận',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
            const Divider(),
            _buildSummaryRow('Tổng SKU', state.products.length.toString()),
            _buildSummaryRow(
              'Đã xác nhận',
              state.products.where((p) => p.batches.isNotEmpty).length.toString(),
              color: Colors.green,
            ),
            _buildSummaryRow(
              'Thiếu/Hỏng',
              damagedCount.toString(),
              color: Colors.red,
            ),
            _buildSummaryRow('Tổng SP dự kiến', totalExpected.toString()),
          ],
        ),
      ),
    );
  }

  Widget _buildSummaryRow(String label, String value, {Color? color}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(label, style: const TextStyle(fontWeight: FontWeight.w500)),
          Text(
            value,
            style: TextStyle(fontWeight: FontWeight.bold, color: color),
          ),
        ],
      ),
    );
  }

  Widget _buildBottomActions(ImportVerificationState state) {
    if (state.status != ImportStatus.inProgress) return const SizedBox.shrink();

    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 4,
            offset: const Offset(0, -2),
          ),
        ],
      ),
      child: SafeArea(
        child: SizedBox(
          width: double.infinity,
          height: 50,
          child: ElevatedButton(
            onPressed: () async {
              final success = await ref
                  .read(importVerificationProvider.notifier)
                  .confirmVerification();
              if (success && mounted) {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text('Xác nhận nhập hàng thành công!'),
                    backgroundColor: Colors.green,
                  ),
                );
                Navigator.of(context).pop();
              }
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.red,
              foregroundColor: Colors.white,
            ),
            child: state.isLoading
                ? const SizedBox(
                    height: 20,
                    width: 20,
                    child: CircularProgressIndicator(
                      color: Colors.white,
                      strokeWidth: 2,
                    ),
                  )
                : const Text(
                    'XÁC NHẬN NHẬP HÀNG',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
          ),
        ),
      ),
    );
  }
}

class _ProductVerificationCard extends ConsumerWidget {
  const _ProductVerificationCard({
    super.key,
    required this.product,
    required this.isEditable,
  });

  final ProductVerificationState product;
  final bool isEditable;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final totalReceived = product.batches.fold(0, (sum, b) => sum + b.quantity);
    final isOverReceived = totalReceived > product.expectedQuantity;

    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Column(
        children: [
          ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.grey.shade200,
              child: const Icon(Icons.inventory_2, color: Colors.grey),
            ),
            title: Text(
              product.variantName,
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: Text(product.variantSku),
            trailing: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  'Dự kiến: ${product.expectedQuantity}',
                  style: const TextStyle(fontSize: 12),
                ),
                Text(
                  'Nhận: $totalReceived',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: isOverReceived
                        ? Colors.red
                        : (totalReceived == product.expectedQuantity
                            ? Colors.green
                            : Colors.orange),
                  ),
                ),
              ],
            ),
            onTap: isEditable
                ? () => ref
                    .read(importVerificationProvider.notifier)
                    .toggleExpand(product.importDetailId)
                : null,
          ),
          if (product.isExpanded && isEditable) ...[
            const Divider(),
            ...product.batches.map(
              (batch) => _BatchInputRow(
                productDetailId: product.importDetailId,
                batch: batch,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextButton.icon(
                onPressed: () => ref
                    .read(importVerificationProvider.notifier)
                    .addBatch(product.importDetailId),
                icon: const Icon(Icons.add),
                label: const Text('Thêm Batch'),
              ),
            ),
          ],
        ],
      ),
    );
  }
}

class _BatchInputRow extends ConsumerWidget {
  const _BatchInputRow({required this.productDetailId, required this.batch});

  final String productDetailId;
  final BatchInputState batch;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                flex: 2,
                child: TextField(
                  decoration: const InputDecoration(
                    labelText: 'Mã batch',
                    isDense: true,
                  ),
                  controller: TextEditingController(text: batch.batchCode)
                    ..selection = TextSelection.fromPosition(
                      TextPosition(offset: batch.batchCode.length),
                    ),
                  onChanged: (val) => ref
                      .read(importVerificationProvider.notifier)
                      .updateBatch(productDetailId, batch.tempId, batchCode: val),
                ),
              ),
              const SizedBox(width: 8),
              Expanded(
                flex: 1,
                child: TextField(
                  decoration: const InputDecoration(
                    labelText: 'SL',
                    isDense: true,
                  ),
                  keyboardType: TextInputType.number,
                  controller: TextEditingController(text: batch.quantity.toString())
                    ..selection = TextSelection.fromPosition(
                      TextPosition(offset: batch.quantity.toString().length),
                    ),
                  onChanged: (val) => ref
                      .read(importVerificationProvider.notifier)
                      .updateBatch(
                        productDetailId,
                        batch.tempId,
                        quantity: int.tryParse(val) ?? 0,
                      ),
                ),
              ),
              IconButton(
                icon: const Icon(Icons.delete, color: Colors.red),
                onPressed: () => ref
                    .read(importVerificationProvider.notifier)
                    .deleteBatch(productDetailId, batch.tempId),
              ),
            ],
          ),
          const SizedBox(height: 8),
          Row(
            children: [
              Expanded(
                child: InkWell(
                  onTap: () async {
                    final date = await showDatePicker(
                      context: context,
                      initialDate: batch.manufactureDate ?? DateTime.now(),
                      firstDate: DateTime(2000),
                      lastDate: DateTime(2100),
                    );
                    if (date != null) {
                      ref
                          .read(importVerificationProvider.notifier)
                          .updateBatch(productDetailId, batch.tempId,
                              manufactureDate: date);
                    }
                  },
                  child: InputDecorator(
                    decoration: const InputDecoration(
                      labelText: 'NSX',
                      isDense: true,
                      border: OutlineInputBorder(),
                    ),
                    child: Text(
                      batch.manufactureDate != null
                          ? DateFormat('dd/MM/yy').format(batch.manufactureDate!)
                          : 'Chọn',
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 8),
              Expanded(
                child: InkWell(
                  onTap: () async {
                    final date = await showDatePicker(
                      context: context,
                      initialDate: batch.expiryDate ??
                          DateTime.now().add(const Duration(days: 365 * 5)),
                      firstDate: DateTime(2000),
                      lastDate: DateTime(2100),
                    );
                    if (date != null) {
                      ref
                          .read(importVerificationProvider.notifier)
                          .updateBatch(productDetailId, batch.tempId,
                              expiryDate: date);
                    }
                  },
                  child: InputDecorator(
                    decoration: const InputDecoration(
                      labelText: 'HSD',
                      isDense: true,
                      border: OutlineInputBorder(),
                    ),
                    child: Text(
                      batch.expiryDate != null
                          ? DateFormat('dd/MM/yy').format(batch.expiryDate!)
                          : 'Chọn',
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 8),
          const Divider(),
        ],
      ),
    );
  }
}
