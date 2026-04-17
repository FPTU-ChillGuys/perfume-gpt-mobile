import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:perfumegpt_api_client/perfumegpt_api_client.dart';
import 'package:perfumegpt_common/perfumegpt_common.dart';
import '../providers/return_request_providers.dart';

final _currencyFmt = NumberFormat.currency(
  locale: 'vi_VN',
  symbol: '₫',
  decimalDigits: 0,
);
final _dateFmt = DateFormat('dd/MM/yyyy HH:mm');

class ReturnRequestDetailScreen extends ConsumerWidget {
  final String id;
  const ReturnRequestDetailScreen({required this.id, super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final dataAsync = ref.watch(staffReturnRequestDetailProvider(id));

    return Scaffold(
      appBar: AppBar(
        title: const Text('Chi tiết yêu cầu trả hàng'),
        actions: [
          IconButton(
            icon: const Icon(Icons.refresh),
            tooltip: 'Làm mới',
            onPressed: () =>
                ref.invalidate(staffReturnRequestDetailProvider(id)),
          ),
        ],
      ),
      body: dataAsync.when(
        data: (request) =>
            _ReturnRequestDetailBody(requestId: id, request: request),
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (e, _) => Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Icon(Icons.error_outline, size: 48, color: Colors.grey),
              const SizedBox(height: 12),
              Text(e.toString(), textAlign: TextAlign.center),
              const SizedBox(height: 8),
              TextButton(
                onPressed: () =>
                    ref.invalidate(staffReturnRequestDetailProvider(id)),
                child: const Text('Thử lại'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _ReturnRequestDetailBody extends ConsumerWidget {
  final String requestId;
  final OrderReturnRequestResponse request;
  const _ReturnRequestDetailBody({
    required this.requestId,
    required this.request,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final status = request.status;

    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // ── Status badge ──
          _StatusBanner(request: request),
          const SizedBox(height: 16),

          // ── Info ──
          _SectionCard(
            title: 'Thông tin chung',
            children: [
              _InfoRow(label: 'Mã đơn hàng', value: request.orderCode),
              _InfoRow(
                label: 'Khách hàng',
                value: request.customerEmail ?? '—',
              ),
              _InfoRow(label: 'Lý do', value: _reasonLabel(request.reason)),
              if (request.customerNote?.isNotEmpty == true)
                _InfoRow(label: 'Ghi chú khách', value: request.customerNote!),
              _InfoRow(
                label: 'Ngày tạo',
                value: request.createdAt != null
                    ? _dateFmt.format(request.createdAt!)
                    : '—',
              ),
              if (request.updatedAt != null)
                _InfoRow(
                  label: 'Cập nhật',
                  value: _dateFmt.format(request.updatedAt!),
                ),
            ],
          ),
          const SizedBox(height: 12),

          // ── Refund amounts ──
          _SectionCard(
            title: 'Thông tin hoàn tiền',
            children: [
              _InfoRow(
                label: 'Yêu cầu hoàn',
                value: _currencyFmt.format(request.requestedRefundAmount ?? 0),
              ),
              if (request.approvedRefundAmount != null)
                _InfoRow(
                  label: 'Được duyệt hoàn',
                  value: _currencyFmt.format(request.approvedRefundAmount),
                ),
              if (request.refundBankName?.isNotEmpty == true) ...[
                const Divider(height: 16),
                const Text(
                  'Tài khoản hoàn tiền',
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                    color: Colors.grey,
                  ),
                ),
                const SizedBox(height: 4),
                _InfoRow(label: 'Ngân hàng', value: request.refundBankName!),
                if (request.refundAccountNumber?.isNotEmpty == true)
                  _InfoRow(
                    label: 'Số tài khoản',
                    value: request.refundAccountNumber!,
                  ),
                if (request.refundAccountName?.isNotEmpty == true)
                  _InfoRow(
                    label: 'Chủ tài khoản',
                    value: request.refundAccountName!,
                  ),
              ],
            ],
          ),
          const SizedBox(height: 12),

          // ── Shipping info ──
          if (request.returnShippingInfo != null) ...[
            _ShippingInfoCard(shipping: request.returnShippingInfo!),
            const SizedBox(height: 12),
          ],

          // ── Staff / Inspection notes ──
          if (status != null &&
              (status == ReturnRequestStatus.rejected ||
                  status == ReturnRequestStatus.requestMoreInfo) &&
              request.staffNote?.isNotEmpty == true) ...[
            _SectionCard(
              title: 'Ghi chú nhân viên',
              children: [
                Text(request.staffNote!, style: const TextStyle(fontSize: 14)),
              ],
            ),
            const SizedBox(height: 12),
          ],
          if (request.inspectionNote?.isNotEmpty == true) ...[
            _SectionCard(
              title: 'Ghi chú kiểm tra',
              children: [
                Text(
                  request.inspectionNote!,
                  style: const TextStyle(fontSize: 14),
                ),
                if (request.isRestocked == true) ...[
                  const SizedBox(height: 6),
                  Row(
                    children: [
                      const Icon(
                        Icons.inventory_2_outlined,
                        size: 16,
                        color: Colors.green,
                      ),
                      const SizedBox(width: 4),
                      const Text(
                        'Đã nhập kho lại',
                        style: TextStyle(fontSize: 13, color: Colors.green),
                      ),
                    ],
                  ),
                ],
              ],
            ),
            const SizedBox(height: 12),
          ],

          // ── Return items ──
          if (request.returnDetails?.isNotEmpty == true) ...[
            _ItemsSection(details: request.returnDetails!),
            const SizedBox(height: 12),
          ],

          // ── Proof images ──
          if (request.proofImages?.isNotEmpty == true) ...[
            _ProofImagesSection(images: request.proofImages!),
            const SizedBox(height: 12),
          ],

          // ── Actions ──
          _ActionsSection(requestId: requestId, request: request),
          const SizedBox(height: 32),
        ],
      ),
    );
  }
}

// ── Status Banner ──

class _StatusBanner extends StatelessWidget {
  final OrderReturnRequestResponse request;
  const _StatusBanner({required this.request});

  @override
  Widget build(BuildContext context) {
    final info = _statusInfo(request.status);
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      decoration: BoxDecoration(
        color: info.color.withValues(alpha: 0.1),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: info.color.withValues(alpha: 0.4)),
      ),
      child: Row(
        children: [
          Icon(Icons.info_outline, color: info.color),
          const SizedBox(width: 8),
          Expanded(
            child: Text(
              info.label,
              style: TextStyle(
                color: info.color,
                fontWeight: FontWeight.w600,
                fontSize: 15,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// ── Section Card ──

class _SectionCard extends StatelessWidget {
  final String title;
  final List<Widget> children;
  const _SectionCard({required this.title, required this.children});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 1,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(14),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: const TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.bold,
                color: Colors.grey,
              ),
            ),
            const Divider(height: 16),
            ...children,
          ],
        ),
      ),
    );
  }
}

class _InfoRow extends StatelessWidget {
  final String label;
  final String value;
  const _InfoRow({required this.label, required this.value});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 3),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 130,
            child: Text(
              label,
              style: const TextStyle(fontSize: 13, color: Colors.grey),
            ),
          ),
          Expanded(
            child: Text(
              value,
              style: const TextStyle(fontSize: 13, fontWeight: FontWeight.w500),
            ),
          ),
        ],
      ),
    );
  }
}

// ── Shipping Info ──

class _ShippingInfoCard extends StatelessWidget {
  final ReturnShippingInfoResponse shipping;
  const _ShippingInfoCard({required this.shipping});

  @override
  Widget build(BuildContext context) {
    return _SectionCard(
      title: 'Thông tin vận chuyển',
      children: [
        if (shipping.carrierName != null)
          _InfoRow(label: 'Nhà vận chuyển', value: shipping.carrierName!.value),
        if (shipping.trackingNumber?.isNotEmpty == true)
          _InfoRow(label: 'Mã vận đơn', value: shipping.trackingNumber!),
        if (shipping.status != null)
          _InfoRow(label: 'Trạng thái', value: shipping.status!.value),
        _InfoRow(
          label: 'Phí vận chuyển',
          value: _currencyFmt.format(shipping.shippingFee ?? 0),
        ),
        if (shipping.estimatedDeliveryDate != null)
          _InfoRow(
            label: 'Dự kiến về',
            value: DateFormat(
              'dd/MM/yyyy',
            ).format(shipping.estimatedDeliveryDate!),
          ),
      ],
    );
  }
}

// ── Items ──

class _ItemsSection extends StatelessWidget {
  final List<OrderReturnRequestDetailResponse> details;
  const _ItemsSection({required this.details});

  @override
  Widget build(BuildContext context) {
    return _SectionCard(
      title: 'Sản phẩm yêu cầu trả (${details.length})',
      children: details
          .map(
            (d) => Padding(
              padding: const EdgeInsets.symmetric(vertical: 6),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Biến thể: ${d.variantId ?? "—"}',
                          style: const TextStyle(fontSize: 13),
                        ),
                        const SizedBox(height: 2),
                        Text(
                          'SL: ${d.requestedQuantity}  |  '
                          'Đơn giá: ${_currencyFmt.format(d.unitPrice ?? 0)}  |  '
                          'Hoàn: ${_currencyFmt.format(d.refundableAmount ?? 0)}',
                          style: const TextStyle(
                            fontSize: 12,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )
          .toList(),
    );
  }
}

// ── Proof Images ──

class _ProofImagesSection extends StatelessWidget {
  final List<MediaResponse> images;
  const _ProofImagesSection({required this.images});

  @override
  Widget build(BuildContext context) {
    return _SectionCard(
      title: 'Ảnh/Video bằng chứng',
      children: [
        SizedBox(
          height: 80,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemCount: images.length,
            separatorBuilder: (context, index) => const SizedBox(width: 8),
            itemBuilder: (context, i) {
              final img = images[i];
              return ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.network(
                  img.url,
                  width: 80,
                  height: 80,
                  fit: BoxFit.cover,
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}

// ── Actions ──

class _ActionsSection extends ConsumerWidget {
  final String requestId;
  final OrderReturnRequestResponse request;
  const _ActionsSection({required this.requestId, required this.request});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final status = request.status;
    final actions = <Widget>[];

    if (status == ReturnRequestStatus.pending) {
      actions.add(
        _ActionButton(
          label: 'Duyệt yêu cầu',
          icon: Icons.check_circle_outline,
          color: Colors.green,
          onPressed: () => _showReviewDialog(context, ref),
        ),
      );
    }

    if (status == ReturnRequestStatus.requestMoreInfo) {
      actions.add(
        _ActionButton(
          label: 'Gửi lại duyệt',
          icon: Icons.rate_review_outlined,
          color: Colors.orange,
          onPressed: () => _showReviewDialog(context, ref),
        ),
      );
    }

    if (status == ReturnRequestStatus.approvedForReturn) {
      actions.add(
        _ActionButton(
          label: 'Bắt đầu kiểm tra',
          icon: Icons.search,
          color: Colors.blue,
          onPressed: () => _confirmStartInspection(context, ref),
        ),
      );
      if (request.customerId?.isNotEmpty == true) {
        actions.add(const SizedBox(height: 8));
        actions.add(
          _ActionButton(
            label: 'Đồng bộ trạng thái vận chuyển',
            icon: Icons.sync,
            color: Colors.indigo,
            onPressed: () => _syncShipping(context, ref),
          ),
        );
      }
    }

    if (status == ReturnRequestStatus.inspecting) {
      actions.add(
        _ActionButton(
          label: 'Hoàn tất kiểm tra',
          icon: Icons.task_alt,
          color: Colors.teal,
          onPressed: () => _showCompleteInspectionDialog(context, ref),
        ),
      );
      actions.add(const SizedBox(height: 8));
      actions.add(
        _ActionButton(
          label: 'Từ chối kiểm tra',
          icon: Icons.cancel_outlined,
          color: Colors.red,
          onPressed: () => _showFailInspectionDialog(context, ref),
        ),
      );
    }

    if (status == ReturnRequestStatus.readyForRefund) {
      actions.add(
        _ActionButton(
          label: 'Xử lý hoàn tiền',
          icon: Icons.payments_outlined,
          color: Colors.purple,
          onPressed: () => _showRefundDialog(context, ref),
        ),
      );
    }

    if (actions.isEmpty) return const SizedBox.shrink();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: actions,
    );
  }

  // ── Review dialog ──
  Future<void> _showReviewDialog(BuildContext context, WidgetRef ref) async {
    final staffNoteController = TextEditingController();
    _ReviewAction? action = _ReviewAction.approve;

    await showDialog<void>(
      context: context,
      builder: (ctx) => StatefulBuilder(
        builder: (ctx, setDialogState) => AlertDialog(
          title: const Text('Xử lý yêu cầu'),
          content: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                RadioGroup<_ReviewAction>(
                  groupValue: action,
                  onChanged: (v) => setDialogState(() => action = v),
                  child: Column(
                    children: [
                      RadioListTile<_ReviewAction>(
                        title: const Text('Duyệt'),
                        value: _ReviewAction.approve,
                      ),
                      RadioListTile<_ReviewAction>(
                        title: const Text('Yêu cầu bổ sung'),
                        value: _ReviewAction.requestMore,
                      ),
                      RadioListTile<_ReviewAction>(
                        title: const Text('Từ chối'),
                        value: _ReviewAction.reject,
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 8),
                TextField(
                  controller: staffNoteController,
                  decoration: const InputDecoration(
                    labelText: 'Ghi chú nhân viên (tuỳ chọn)',
                    border: OutlineInputBorder(),
                  ),
                  maxLines: 3,
                ),
              ],
            ),
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(ctx).pop(),
              child: const Text('Huỷ'),
            ),
            FilledButton(
              onPressed: () async {
                Navigator.of(ctx).pop();
                await _submitReview(
                  context,
                  ref,
                  action!,
                  staffNoteController.text.trim(),
                );
              },
              child: const Text('Xác nhận'),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _submitReview(
    BuildContext context,
    WidgetRef ref,
    _ReviewAction action,
    String staffNote,
  ) async {
    final apiClient = ref.read(apiClientProvider);
    try {
      await apiClient
          .getOrderReturnRequestsApi()
          .apiOrderreturnrequestsIdReviewPost(
            id: requestId,
            processInitialReturnDto: ProcessInitialReturnDto(
              isApproved: action == _ReviewAction.approve,
              isRequestMoreInfo: action == _ReviewAction.requestMore,
              staffNote: staffNote.isNotEmpty ? staffNote : null,
            ),
          );
      ref.invalidate(staffReturnRequestDetailProvider(requestId));
      if (context.mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Đã xử lý yêu cầu thành công')),
        );
      }
    } catch (e) {
      if (context.mounted) {
        ScaffoldMessenger.of(
          context,
        ).showSnackBar(SnackBar(content: Text('Lỗi: ${e.toString()}')));
      }
    }
  }

  // ── Start inspection ──
  Future<void> _confirmStartInspection(
    BuildContext context,
    WidgetRef ref,
  ) async {
    final confirmed = await showDialog<bool>(
      context: context,
      builder: (ctx) => AlertDialog(
        title: const Text('Bắt đầu kiểm tra'),
        content: const Text('Xác nhận bắt đầu quy trình kiểm tra hàng trả?'),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(ctx).pop(false),
            child: const Text('Huỷ'),
          ),
          FilledButton(
            onPressed: () => Navigator.of(ctx).pop(true),
            child: const Text('Bắt đầu'),
          ),
        ],
      ),
    );
    if (confirmed != true) return;

    final apiClient = ref.read(apiClientProvider);
    try {
      await apiClient
          .getOrderReturnRequestsApi()
          .apiOrderreturnrequestsIdStartInspectionPost(
            id: requestId,
            startInspectionDto: StartInspectionDto(),
          );
      ref.invalidate(staffReturnRequestDetailProvider(requestId));
      if (context.mounted) {
        ScaffoldMessenger.of(
          context,
        ).showSnackBar(const SnackBar(content: Text('Đã bắt đầu kiểm tra')));
      }
    } catch (e) {
      if (context.mounted) {
        ScaffoldMessenger.of(
          context,
        ).showSnackBar(SnackBar(content: Text('Lỗi: ${e.toString()}')));
      }
    }
  }

  // ── Sync shipping ──
  Future<void> _syncShipping(BuildContext context, WidgetRef ref) async {
    final apiClient = ref.read(apiClientProvider);
    try {
      await apiClient
          .getShippingsApi()
          .apiShippingsUserUserIdSyncShippingStatusPost(
            userId: request.customerId!,
          );
      if (context.mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Đã đồng bộ trạng thái vận chuyển')),
        );
      }
    } catch (e) {
      if (context.mounted) {
        ScaffoldMessenger.of(
          context,
        ).showSnackBar(SnackBar(content: Text('Lỗi: ${e.toString()}')));
      }
    }
  }

  // ── Complete inspection dialog ──
  Future<void> _showCompleteInspectionDialog(
    BuildContext context,
    WidgetRef ref,
  ) async {
    final amountController = TextEditingController(
      text: request.requestedRefundAmount?.toStringAsFixed(0) ?? '0',
    );
    final noteController = TextEditingController();
    bool isRestocked = false;

    await showDialog<void>(
      context: context,
      builder: (ctx) => StatefulBuilder(
        builder: (ctx, setDialogState) => AlertDialog(
          title: const Text('Hoàn tất kiểm tra'),
          content: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                TextField(
                  controller: amountController,
                  decoration: const InputDecoration(
                    labelText: 'Số tiền hoàn duyệt (₫)',
                    border: OutlineInputBorder(),
                  ),
                  keyboardType: TextInputType.number,
                ),
                const SizedBox(height: 12),
                CheckboxListTile(
                  title: const Text('Nhập kho lại'),
                  value: isRestocked,
                  onChanged: (v) =>
                      setDialogState(() => isRestocked = v ?? false),
                  controlAffinity: ListTileControlAffinity.leading,
                  contentPadding: EdgeInsets.zero,
                ),
                const SizedBox(height: 8),
                TextField(
                  controller: noteController,
                  decoration: const InputDecoration(
                    labelText: 'Ghi chú kiểm tra (tuỳ chọn)',
                    border: OutlineInputBorder(),
                  ),
                  maxLines: 3,
                ),
              ],
            ),
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(ctx).pop(),
              child: const Text('Huỷ'),
            ),
            FilledButton(
              onPressed: () async {
                final amount =
                    double.tryParse(
                      amountController.text.replaceAll(RegExp(r'[^0-9.]'), ''),
                    ) ??
                    0;
                Navigator.of(ctx).pop();
                await _submitCompleteInspection(
                  context,
                  ref,
                  amount,
                  isRestocked,
                  noteController.text.trim(),
                );
              },
              child: const Text('Xác nhận'),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _submitCompleteInspection(
    BuildContext context,
    WidgetRef ref,
    double amount,
    bool isRestocked,
    String note,
  ) async {
    final apiClient = ref.read(apiClientProvider);
    try {
      await apiClient
          .getOrderReturnRequestsApi()
          .apiOrderreturnrequestsIdCompleteInspectionPost(
            id: requestId,
            recordInspectionDto: RecordInspectionDto(
              approvedRefundAmount: amount,
              isRestocked: isRestocked,
              inspectionNote: note.isNotEmpty ? note : null,
            ),
          );
      ref.invalidate(staffReturnRequestDetailProvider(requestId));
      if (context.mounted) {
        ScaffoldMessenger.of(
          context,
        ).showSnackBar(const SnackBar(content: Text('Kiểm tra hoàn tất')));
      }
    } catch (e) {
      if (context.mounted) {
        ScaffoldMessenger.of(
          context,
        ).showSnackBar(SnackBar(content: Text('Lỗi: ${e.toString()}')));
      }
    }
  }

  // ── Fail inspection dialog ──
  Future<void> _showFailInspectionDialog(
    BuildContext context,
    WidgetRef ref,
  ) async {
    final noteController = TextEditingController();

    await showDialog<void>(
      context: context,
      builder: (ctx) => AlertDialog(
        title: const Text('Từ chối kiểm tra'),
        content: TextField(
          controller: noteController,
          decoration: const InputDecoration(
            labelText: 'Lý do từ chối *',
            border: OutlineInputBorder(),
          ),
          maxLines: 3,
          autofocus: true,
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(ctx).pop(),
            child: const Text('Huỷ'),
          ),
          FilledButton(
            onPressed: () async {
              final note = noteController.text.trim();
              if (note.isEmpty) return;
              Navigator.of(ctx).pop();
              await _submitFailInspection(context, ref, note);
            },
            child: const Text('Từ chối'),
          ),
        ],
      ),
    );
  }

  Future<void> _submitFailInspection(
    BuildContext context,
    WidgetRef ref,
    String note,
  ) async {
    final apiClient = ref.read(apiClientProvider);
    try {
      await apiClient
          .getOrderReturnRequestsApi()
          .apiOrderreturnrequestsIdFailInspectionPost(
            id: requestId,
            rejectInspectionDto: RejectInspectionDto(note: note),
          );
      ref.invalidate(staffReturnRequestDetailProvider(requestId));
      if (context.mounted) {
        ScaffoldMessenger.of(
          context,
        ).showSnackBar(const SnackBar(content: Text('Đã từ chối kiểm tra')));
      }
    } catch (e) {
      if (context.mounted) {
        ScaffoldMessenger.of(
          context,
        ).showSnackBar(SnackBar(content: Text('Lỗi: ${e.toString()}')));
      }
    }
  }

  // ── Refund dialog ──
  Future<void> _showRefundDialog(BuildContext context, WidgetRef ref) async {
    PaymentMethod selectedMethod = PaymentMethod.externalBankTransfer;
    final refController = TextEditingController();
    final noteController = TextEditingController();

    await showDialog<void>(
      context: context,
      builder: (ctx) => StatefulBuilder(
        builder: (ctx, setDialogState) => AlertDialog(
          title: const Text('Xử lý hoàn tiền'),
          content: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                if (request.approvedRefundAmount != null)
                  Text(
                    'Số tiền hoàn: ${_currencyFmt.format(request.approvedRefundAmount)}',
                    style: const TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 15,
                    ),
                  ),
                const SizedBox(height: 12),
                const Text(
                  'Phương thức hoàn tiền',
                  style: TextStyle(fontSize: 13, fontWeight: FontWeight.w500),
                ),
                const SizedBox(height: 6),
                DropdownButtonFormField<PaymentMethod>(
                  initialValue: selectedMethod,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                  ),
                  items: PaymentMethod.values
                      .map(
                        (m) => DropdownMenuItem(
                          value: m,
                          child: Text(_paymentMethodLabel(m)),
                        ),
                      )
                      .toList(),
                  onChanged: (v) => setDialogState(
                    () => selectedMethod = v ?? selectedMethod,
                  ),
                ),
                const SizedBox(height: 12),
                TextField(
                  controller: refController,
                  decoration: const InputDecoration(
                    labelText: 'Mã giao dịch (tuỳ chọn)',
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 8),
                TextField(
                  controller: noteController,
                  decoration: const InputDecoration(
                    labelText: 'Ghi chú (tuỳ chọn)',
                    border: OutlineInputBorder(),
                  ),
                  maxLines: 2,
                ),
              ],
            ),
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(ctx).pop(),
              child: const Text('Huỷ'),
            ),
            FilledButton(
              onPressed: () async {
                Navigator.of(ctx).pop();
                await _submitRefund(
                  context,
                  ref,
                  selectedMethod,
                  refController.text.trim(),
                  noteController.text.trim(),
                );
              },
              child: const Text('Xác nhận hoàn tiền'),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _submitRefund(
    BuildContext context,
    WidgetRef ref,
    PaymentMethod method,
    String reference,
    String note,
  ) async {
    final apiClient = ref.read(apiClientProvider);
    try {
      await apiClient
          .getOrderReturnRequestsApi()
          .apiOrderreturnrequestsIdRefundPost(
            id: requestId,
            processRefundRequest: ProcessRefundRequest(
              refundMethod: method,
              manualTransactionReference: reference.isNotEmpty
                  ? reference
                  : null,
              note: note.isNotEmpty ? note : null,
            ),
          );
      ref.invalidate(staffReturnRequestDetailProvider(requestId));
      if (context.mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Đã xử lý hoàn tiền thành công')),
        );
      }
    } catch (e) {
      if (context.mounted) {
        ScaffoldMessenger.of(
          context,
        ).showSnackBar(SnackBar(content: Text('Lỗi: ${e.toString()}')));
      }
    }
  }
}

// ── Action Button ──

class _ActionButton extends StatelessWidget {
  final String label;
  final IconData icon;
  final Color color;
  final VoidCallback onPressed;
  const _ActionButton({
    required this.label,
    required this.icon,
    required this.color,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return FilledButton.icon(
      style: FilledButton.styleFrom(
        backgroundColor: color,
        minimumSize: const Size(double.infinity, 48),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      ),
      icon: Icon(icon, size: 20),
      label: Text(label),
      onPressed: onPressed,
    );
  }
}

// ── Helpers ──

enum _ReviewAction { approve, requestMore, reject }

({String label, Color color}) _statusInfo(ReturnRequestStatus? status) {
  switch (status) {
    case ReturnRequestStatus.pending:
      return (label: 'Chờ duyệt', color: Colors.orange);
    case ReturnRequestStatus.requestMoreInfo:
      return (label: 'Bổ sung bằng chứng', color: Colors.amber.shade700);
    case ReturnRequestStatus.approvedForReturn:
      return (label: 'Đã duyệt', color: Colors.green.shade600);
    case ReturnRequestStatus.inspecting:
      return (label: 'Đang kiểm tra', color: Colors.blue.shade600);
    case ReturnRequestStatus.readyForRefund:
      return (label: 'Chờ hoàn tiền', color: Colors.purple.shade600);
    case ReturnRequestStatus.completed:
      return (label: 'Đã hoàn tiền', color: Colors.teal.shade600);
    case ReturnRequestStatus.rejected:
      return (label: 'Từ chối', color: Colors.red.shade600);
    default:
      return (label: status?.value ?? 'Không rõ', color: Colors.grey);
  }
}

String _reasonLabel(String reason) {
  switch (reason) {
    case 'DamagedProduct':
      return 'Sản phẩm bị hư hỏng';
    case 'WrongItemReceived':
      return 'Nhận sai sản phẩm';
    case 'ItemNotAsDescribed':
      return 'Không đúng mô tả';
    case 'ChangedMind':
      return 'Đổi ý';
    case 'AllergicReaction':
      return 'Dị ứng sản phẩm';
    default:
      return reason.isNotEmpty ? reason : '—';
  }
}

String _paymentMethodLabel(PaymentMethod method) {
  switch (method) {
    case PaymentMethod.cashOnDelivery:
      return 'Tiền mặt (COD)';
    case PaymentMethod.vnPay:
      return 'VNPay';
    case PaymentMethod.momo:
      return 'MoMo';
    case PaymentMethod.cashInStore:
      return 'Tiền mặt tại cửa hàng';
    case PaymentMethod.externalBankTransfer:
      return 'Chuyển khoản ngân hàng';
    case PaymentMethod.payOs:
      return 'PayOS';
  }
}
