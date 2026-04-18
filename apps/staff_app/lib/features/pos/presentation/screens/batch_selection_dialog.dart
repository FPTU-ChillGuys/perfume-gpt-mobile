import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import '../providers/counter_checkout_providers.dart';

class BatchSelectionDialog extends ConsumerWidget {
  final String variantId;
  final String variantName;

  const BatchSelectionDialog({
    super.key,
    required this.variantId,
    required this.variantName,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final batchesAsync = ref.watch(productBatchesProvider(variantId));

    return AlertDialog(
      title: Text('Chọn lô hàng - $variantName'),
      content: SizedBox(
        width: double.maxFinite,
        child: batchesAsync.when(
          data: (batches) {
            if (batches.isEmpty) {
              return const Center(
                child: Text('Không có lô hàng nào khả dụng cho sản phẩm này.'),
              );
            }
            return ListView.separated(
              shrinkWrap: true,
              itemCount: batches.length,
              separatorBuilder: (context, index) => const Divider(),
              itemBuilder: (context, index) {
                final batch = batches[index];
                final expiryDate = batch.expiryDate;
                final remaining = batch.remainingQuantity ?? 0;
                final isExpired = batch.isExpired ?? false;

                return ListTile(
                  title: Text('Mã lô: ${batch.batchCode}'),
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Số lượng còn lại: $remaining'),
                      if (expiryDate != null)
                        Text(
                          'Hạn sử dụng: ${DateFormat('dd/MM/yyyy').format(expiryDate)}',
                          style: TextStyle(
                            color: isExpired ? Colors.red : null,
                            fontWeight: isExpired ? FontWeight.bold : null,
                          ),
                        ),
                    ],
                  ),
                  trailing: const Icon(Icons.chevron_right),
                  onTap: remaining > 0
                      ? () => Navigator.pop(context, batch.batchCode)
                      : null,
                  enabled: remaining > 0,
                );
              },
            );
          },
          loading: () => const Center(
            child: Padding(
              padding: EdgeInsets.all(20.0),
              child: CircularProgressIndicator(),
            ),
          ),
          error: (error, stack) => Center(child: Text('Lỗi: $error')),
        ),
      ),
      actions: [
        TextButton(
          onPressed: () => Navigator.pop(context),
          child: const Text('Hủy'),
        ),
      ],
    );
  }
}
