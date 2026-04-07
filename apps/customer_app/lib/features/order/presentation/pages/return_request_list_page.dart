import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import '../../../../core/theme/app_colors.dart';
import '../../../../domain/entities/return_request.dart';
import '../providers/return_request_providers.dart';

class ReturnRequestListPage extends ConsumerWidget {
  const ReturnRequestListPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final requestsAsync = ref.watch(myReturnRequestsProvider);

    return Scaffold(
      backgroundColor: AppColors.surface,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 120,
            pinned: true,
            systemOverlayStyle: SystemUiOverlayStyle.light,
            backgroundColor: AppColors.primaryDark,
            flexibleSpace: FlexibleSpaceBar(
              title: const Text('Yêu cầu trả hàng',
                  style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18)),
              background: Container(
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    colors: [AppColors.heroStart, AppColors.heroEnd],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                ),
              ),
            ),
          ),
          requestsAsync.when(
            data: (requests) {
              if (requests.isEmpty) {
                return SliverFillRemaining(
                  child: Center(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(Icons.assignment_return_outlined, size: 64,
                            color: AppColors.textSecondary.withValues(alpha: 0.5)),
                        const SizedBox(height: 16),
                        const Text('Chưa có yêu cầu trả hàng nào',
                            style: TextStyle(fontSize: 16, color: AppColors.textSecondary)),
                      ],
                    ),
                  ),
                );
              }
              return SliverPadding(
                padding: const EdgeInsets.all(16),
                sliver: SliverList.separated(
                  itemCount: requests.length,
                  separatorBuilder: (_, __) => const SizedBox(height: 12),
                  itemBuilder: (_, i) => _ReturnRequestCard(request: requests[i]),
                ),
              );
            },
            loading: () => const SliverFillRemaining(
              child: Center(child: CircularProgressIndicator(color: AppColors.primary)),
            ),
            error: (e, _) => SliverFillRemaining(
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Text('Lỗi khi tải', style: TextStyle(color: AppColors.textSecondary)),
                    TextButton(
                      onPressed: () => ref.read(myReturnRequestsProvider.notifier).refresh(),
                      child: const Text('Thử lại'),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _ReturnRequestCard extends ConsumerWidget {
  final ReturnRequest request;
  const _ReturnRequestCard({required this.request});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final statusInfo = _statusInfo(request.status);
    final canCancel = request.status == 'Pending';

    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: AppColors.border),
        boxShadow: [
          BoxShadow(color: Colors.black.withValues(alpha: 0.04), blurRadius: 8, offset: const Offset(0, 2)),
        ],
      ),
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // ── Header ──
          Row(
            children: [
              Icon(Icons.assignment_return, color: statusInfo.color, size: 20),
              const SizedBox(width: 8),
              Expanded(
                child: Text('Đơn hàng: ${request.orderCode ?? request.orderId.substring(0, 8)}',
                    style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 14, color: AppColors.textPrimary)),
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 3),
                decoration: BoxDecoration(
                  color: statusInfo.color.withValues(alpha: 0.1),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Text(statusInfo.label,
                    style: TextStyle(fontSize: 11, fontWeight: FontWeight.w600, color: statusInfo.color)),
              ),
            ],
          ),

          if (request.reason != null) ...[
            const SizedBox(height: 10),
            Text('Lý do: ${request.reason}',
                style: const TextStyle(fontSize: 13, color: AppColors.textSecondary)),
          ],

          const SizedBox(height: 10),
          Row(
            children: [
              const Icon(Icons.access_time, size: 14, color: AppColors.textSecondary),
              const SizedBox(width: 4),
              Text('Tạo: ${DateFormat('dd/MM/yyyy HH:mm').format(request.createdAt)}',
                  style: const TextStyle(fontSize: 12, color: AppColors.textSecondary)),
              if (request.updatedAt != null) ...[
                const Text('  •  ', style: TextStyle(color: AppColors.textSecondary)),
                Text('Cập nhật: ${DateFormat('dd/MM/yyyy').format(request.updatedAt!)}',
                    style: const TextStyle(fontSize: 12, color: AppColors.textSecondary)),
              ],
            ],
          ),

          if (canCancel) ...[
            const SizedBox(height: 12),
            Align(
              alignment: Alignment.centerRight,
              child: TextButton.icon(
                onPressed: () => _confirmCancel(context, ref),
                icon: const Icon(Icons.close, size: 16),
                label: const Text('Hủy yêu cầu', style: TextStyle(fontSize: 12)),
                style: TextButton.styleFrom(foregroundColor: Colors.red),
              ),
            ),
          ],
        ],
      ),
    );
  }

  void _confirmCancel(BuildContext context, WidgetRef ref) {
    showDialog(
      context: context,
      builder: (_) => AlertDialog(
        title: const Text('Hủy yêu cầu trả hàng'),
        content: const Text('Bạn có chắc muốn hủy yêu cầu trả hàng này?'),
        actions: [
          TextButton(onPressed: () => Navigator.pop(context), child: const Text('Không')),
          TextButton(
            onPressed: () {
              Navigator.pop(context);
              ref.read(myReturnRequestsProvider.notifier).cancelRequest(request.id);
            },
            child: const Text('Hủy yêu cầu', style: TextStyle(color: Colors.red)),
          ),
        ],
      ),
    );
  }

  ({String label, Color color}) _statusInfo(String status) {
    switch (status) {
      case 'Pending':
        return (label: 'Chờ duyệt', color: AppColors.statusPending);
      case 'Approved':
        return (label: 'Đã duyệt', color: AppColors.statusDelivered);
      case 'Rejected':
        return (label: 'Từ chối', color: AppColors.statusCancelled);
      case 'InspectionStarted':
        return (label: 'Đang kiểm tra', color: AppColors.statusDelivering);
      case 'InspectionCompleted':
        return (label: 'Kiểm tra xong', color: AppColors.statusProcessing);
      case 'InspectionFailed':
        return (label: 'Không đạt', color: AppColors.statusCancelled);
      case 'Refunded':
        return (label: 'Đã hoàn tiền', color: AppColors.paymentRefunded);
      case 'Cancelled':
        return (label: 'Đã hủy', color: Colors.grey);
      default:
        return (label: status, color: Colors.grey);
    }
  }
}
