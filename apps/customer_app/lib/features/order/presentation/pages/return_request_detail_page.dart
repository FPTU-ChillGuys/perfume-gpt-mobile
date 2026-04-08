import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl/intl.dart';
import '../../../../core/theme/app_colors.dart';
import '../../../../core/utils/image_url_helper.dart';
import '../../../../domain/entities/return_request.dart';
import '../providers/return_request_providers.dart';

final _currencyFmt = NumberFormat.currency(locale: 'vi_VN', symbol: '₫', decimalDigits: 0);
final _dateFmt = DateFormat('dd/MM/yyyy HH:mm');

class ReturnRequestDetailPage extends ConsumerStatefulWidget {
  final String requestId;
  const ReturnRequestDetailPage({super.key, required this.requestId});

  @override
  ConsumerState<ReturnRequestDetailPage> createState() => _ReturnRequestDetailPageState();
}

class _ReturnRequestDetailPageState extends ConsumerState<ReturnRequestDetailPage> {
  // Evidence upload state
  final _noteController = TextEditingController();
  final List<({String filename, Uint8List bytes})> _newImages = [];
  final List<({String filename, Uint8List bytes})> _newVideos = [];
  final Set<String> _removeMediaIds = {};
  bool _isSubmitting = false;
  bool _isSyncing = false;

  @override
  void dispose() {
    _noteController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final detailAsync = ref.watch(returnRequestDetailProvider(widget.requestId));

    return Scaffold(
      backgroundColor: AppColors.surface,
      body: detailAsync.when(
        data: (request) => _buildContent(context, request),
        loading: () => CustomScrollView(
          slivers: [
            _buildAppBar(null),
            const SliverFillRemaining(
              child: Center(child: CircularProgressIndicator(color: AppColors.primary)),
            ),
          ],
        ),
        error: (e, _) => CustomScrollView(
          slivers: [
            _buildAppBar(null),
            SliverFillRemaining(
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Icon(Icons.error_outline, size: 48, color: AppColors.textSecondary),
                    const SizedBox(height: 12),
                    const Text('Không thể tải chi tiết', style: TextStyle(color: AppColors.textSecondary)),
                    const SizedBox(height: 8),
                    TextButton(
                      onPressed: () => ref.invalidate(returnRequestDetailProvider(widget.requestId)),
                      child: const Text('Thử lại'),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildContent(BuildContext context, ReturnRequest request) {
    final statusInfo = _statusInfo(request.status);
    final canAddEvidence = request.status == 'RequestMoreInfo';

    return RefreshIndicator(
      color: AppColors.primary,
      onRefresh: () async {
        ref.invalidate(returnRequestDetailProvider(widget.requestId));
      },
      child: CustomScrollView(
        slivers: [
          _buildAppBar(request),
          SliverPadding(
            padding: const EdgeInsets.all(16),
            sliver: SliverList(
              delegate: SliverChildListDelegate([
                // ── Status header ──
                _buildStatusHeader(request, statusInfo),
                const SizedBox(height: 16),

                // ── Info section ──
                _buildInfoSection(request),
                const SizedBox(height: 16),

                // ── Shipping info ──
                if (request.returnShippingInfo != null) ...[
                  _buildShippingSection(request.returnShippingInfo!),
                  const SizedBox(height: 16),
                ],

                // ── Return items ──
                if (request.returnDetails.isNotEmpty) ...[
                  _buildItemsSection(request.returnDetails),
                  const SizedBox(height: 16),
                ],

                // ── Proof media ──
                if (request.proofImages.isNotEmpty) ...[
                  _buildProofSection(request.proofImages, canAddEvidence),
                  const SizedBox(height: 16),
                ],

                // ── Evidence upload (when RequestMoreInfo) ──
                if (canAddEvidence) ...[
                  _buildEvidenceUploadSection(request),
                  const SizedBox(height: 32),
                ],
              ]),
            ),
          ),
        ],
      ),
    );
  }

  SliverAppBar _buildAppBar(ReturnRequest? request) {
    return SliverAppBar(
      expandedHeight: 100,
      pinned: true,
      systemOverlayStyle: SystemUiOverlayStyle.light,
      backgroundColor: AppColors.primaryDark,
      actions: [
        if (request != null)
          IconButton(
            icon: _isSyncing
                ? const SizedBox(width: 20, height: 20,
                    child: CircularProgressIndicator(strokeWidth: 2, color: Colors.white))
                : const Icon(Icons.sync, color: Colors.white),
            tooltip: 'Đồng bộ vận chuyển',
            onPressed: _isSyncing ? null : () => _syncShipping(),
          ),
      ],
      flexibleSpace: FlexibleSpaceBar(
        title: Text(
          request?.orderCode ?? 'Chi tiết yêu cầu',
          style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16),
        ),
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
    );
  }

  Widget _buildStatusHeader(ReturnRequest request, ({String label, Color color}) statusInfo) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: statusInfo.color.withValues(alpha: 0.08),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: statusInfo.color.withValues(alpha: 0.3)),
      ),
      child: Row(
        children: [
          Icon(Icons.assignment_return, color: statusInfo.color, size: 28),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(statusInfo.label,
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: statusInfo.color)),
                const SizedBox(height: 2),
                Text('Mã đơn: ${request.orderCode ?? '-'}',
                    style: const TextStyle(fontSize: 13, color: AppColors.textSecondary)),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildInfoSection(ReturnRequest request) {
    return _SectionCard(
      title: 'Thông tin yêu cầu',
      icon: Icons.info_outline,
      child: Column(
        children: [
          _InfoRow('Mã yêu cầu', request.id.length > 8 ? '${request.id.substring(0, 8)}...' : request.id),
          _InfoRow('Trạng thái', _statusInfo(request.status).label),
          if (request.requestedByEmail != null)
            _InfoRow('Người yêu cầu', request.requestedByEmail!),
          _InfoRow('Ngày tạo', _dateFmt.format(request.createdAt)),
          if (request.updatedAt != null)
            _InfoRow('Cập nhật', _dateFmt.format(request.updatedAt!)),
          _InfoRow('Số tiền yêu cầu', _currencyFmt.format(request.requestedRefundAmount)),
          if (request.approvedRefundAmount != null)
            _InfoRow('Số tiền duyệt', _currencyFmt.format(request.approvedRefundAmount!)),
          if (request.processedByName != null)
            _InfoRow('Người xử lý', request.processedByName!),
          if (request.inspectedByName != null)
            _InfoRow('Người kiểm tra', request.inspectedByName!),
          _InfoRow('Lý do', _reasonLabel(request.reason) ?? '-'),
          if (request.customerNote != null && request.customerNote!.isNotEmpty) ...[
            const Divider(height: 20),
            _InfoRow('Ghi chú khách', request.customerNote!),
          ],
          if (request.staffNote != null && request.staffNote!.isNotEmpty) ...[
            const Divider(height: 20),
            _InfoRow('Ghi chú NV', request.staffNote!),
          ],
          if (request.inspectionNote != null && request.inspectionNote!.isNotEmpty) ...[
            const Divider(height: 20),
            _InfoRow('Ghi chú kiểm tra', request.inspectionNote!),
          ],
        ],
      ),
    );
  }

  Widget _buildShippingSection(ReturnShippingInfo shipping) {
    return _SectionCard(
      title: 'Thông tin vận chuyển',
      icon: Icons.local_shipping_outlined,
      child: Column(
        children: [
          if (shipping.carrierName != null)
            _InfoRow('Đơn vị vận chuyển', shipping.carrierName!),
          if (shipping.trackingNumber != null)
            _InfoRow('Mã vận đơn', shipping.trackingNumber!),
          if (shipping.status != null)
            _InfoRow('Trạng thái', shipping.status!),
          _InfoRow('Phí vận chuyển', _currencyFmt.format(shipping.shippingFee)),
        ],
      ),
    );
  }

  Widget _buildItemsSection(List<ReturnDetail> details) {
    return _SectionCard(
      title: 'Sản phẩm trả',
      icon: Icons.inventory_2_outlined,
      child: Column(
        children: details.asMap().entries.map((entry) {
          final i = entry.key;
          final d = entry.value;
          return Column(
            children: [
              if (i > 0) const Divider(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Sản phẩm ${i + 1}',
                            style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 13)),
                        const SizedBox(height: 4),
                        Text('SL: ${d.requestedQuantity} × ${_currencyFmt.format(d.unitPrice)}',
                            style: const TextStyle(fontSize: 12, color: AppColors.textSecondary)),
                      ],
                    ),
                  ),
                  Text(_currencyFmt.format(d.refundableAmount),
                      style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 13, color: AppColors.primary)),
                ],
              ),
            ],
          );
        }).toList(),
      ),
    );
  }

  Widget _buildProofSection(List<ProofMedia> media, bool canRemove) {
    // Filter out removed items
    final visibleMedia = media.where((m) => !_removeMediaIds.contains(m.id)).toList();

    return _SectionCard(
      title: 'Bằng chứng',
      icon: Icons.photo_library_outlined,
      child: Wrap(
        spacing: 8,
        runSpacing: 8,
        children: visibleMedia.map((m) {
          final isVideo = m.mimeType?.startsWith('video') == true;
          return Stack(
            children: [
              GestureDetector(
                onTap: () => _showMediaPreview(context, m),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Container(
                    width: 80,
                    height: 80,
                    color: Colors.grey.shade200,
                    child: isVideo
                        ? const Center(child: Icon(Icons.videocam, size: 32, color: AppColors.textSecondary))
                        : Image.network(
                            ImageUrlHelper.resolve(m.url ?? ''),
                            fit: BoxFit.cover,
                            errorBuilder: (_, _, _) =>
                                const Center(child: Icon(Icons.broken_image, color: AppColors.textSecondary)),
                          ),
                  ),
                ),
              ),
              if (canRemove && m.id != null)
                Positioned(
                  top: 0,
                  right: 0,
                  child: GestureDetector(
                    onTap: () => setState(() => _removeMediaIds.add(m.id!)),
                    child: Container(
                      padding: const EdgeInsets.all(2),
                      decoration: const BoxDecoration(
                        color: Colors.red,
                        shape: BoxShape.circle,
                      ),
                      child: const Icon(Icons.close, size: 14, color: Colors.white),
                    ),
                  ),
                ),
            ],
          );
        }).toList(),
      ),
    );
  }

  Widget _buildEvidenceUploadSection(ReturnRequest request) {
    return _SectionCard(
      title: 'Bổ sung bằng chứng',
      icon: Icons.upload_file,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Note field
          TextField(
            controller: _noteController,
            decoration: InputDecoration(
              hintText: 'Nhập ghi chú bổ sung...',
              border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
              contentPadding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
            ),
            maxLines: 3,
          ),
          const SizedBox(height: 12),

          // Pick buttons
          Row(
            children: [
              Expanded(
                child: OutlinedButton.icon(
                  onPressed: _pickImages,
                  icon: const Icon(Icons.photo, size: 18),
                  label: Text('Ảnh (${_newImages.length})', style: const TextStyle(fontSize: 13)),
                  style: OutlinedButton.styleFrom(foregroundColor: AppColors.primary),
                ),
              ),
              const SizedBox(width: 8),
              Expanded(
                child: OutlinedButton.icon(
                  onPressed: _pickVideos,
                  icon: const Icon(Icons.videocam, size: 18),
                  label: Text('Video (${_newVideos.length})', style: const TextStyle(fontSize: 13)),
                  style: OutlinedButton.styleFrom(foregroundColor: AppColors.primary),
                ),
              ),
            ],
          ),

          // Preview picked files
          if (_newImages.isNotEmpty || _newVideos.isNotEmpty) ...[
            const SizedBox(height: 12),
            Wrap(
              spacing: 8,
              runSpacing: 8,
              children: [
                ..._newImages.asMap().entries.map((entry) => _buildPickedThumb(
                      entry.value.bytes,
                      isVideo: false,
                      onRemove: () => setState(() => _newImages.removeAt(entry.key)),
                    )),
                ..._newVideos.asMap().entries.map((entry) => _buildPickedThumb(
                      entry.value.bytes,
                      isVideo: true,
                      onRemove: () => setState(() => _newVideos.removeAt(entry.key)),
                    )),
              ],
            ),
          ],

          const SizedBox(height: 16),

          // Submit button
          SizedBox(
            width: double.infinity,
            child: ElevatedButton.icon(
              onPressed: (_newImages.isEmpty && _newVideos.isEmpty && _removeMediaIds.isEmpty && _noteController.text.isEmpty)
                  ? null
                  : _isSubmitting
                      ? null
                      : () => _submitEvidence(request),
              icon: _isSubmitting
                  ? const SizedBox(width: 16, height: 16,
                      child: CircularProgressIndicator(strokeWidth: 2, color: Colors.white))
                  : const Icon(Icons.send, size: 18),
              label: Text(_isSubmitting ? 'Đang gửi...' : 'Gửi bổ sung'),
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.primary,
                foregroundColor: Colors.white,
                padding: const EdgeInsets.symmetric(vertical: 12),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildPickedThumb(Uint8List bytes, {required bool isVideo, required VoidCallback onRemove}) {
    return Stack(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Container(
            width: 70,
            height: 70,
            color: Colors.grey.shade200,
            child: isVideo
                ? const Center(child: Icon(Icons.videocam, size: 28, color: AppColors.textSecondary))
                : Image.memory(bytes, fit: BoxFit.cover),
          ),
        ),
        Positioned(
          top: 0,
          right: 0,
          child: GestureDetector(
            onTap: onRemove,
            child: Container(
              padding: const EdgeInsets.all(2),
              decoration: const BoxDecoration(color: Colors.red, shape: BoxShape.circle),
              child: const Icon(Icons.close, size: 12, color: Colors.white),
            ),
          ),
        ),
      ],
    );
  }

  void _showMediaPreview(BuildContext context, ProofMedia media) {
    final isVideo = media.mimeType?.startsWith('video') == true;
    showDialog(
      context: context,
      builder: (_) => Dialog(
        backgroundColor: Colors.black,
        insetPadding: const EdgeInsets.all(16),
        child: Stack(
          children: [
            Center(
              child: isVideo
                  ? const Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(Icons.videocam, size: 64, color: Colors.white70),
                        SizedBox(height: 8),
                        Text('Xem video không khả dụng', style: TextStyle(color: Colors.white70)),
                      ],
                    )
                  : InteractiveViewer(
                      child: Image.network(
                        ImageUrlHelper.resolve(media.url ?? ''),
                        errorBuilder: (_, _, _) =>
                            const Center(child: Icon(Icons.broken_image, color: Colors.white70, size: 64)),
                      ),
                    ),
            ),
            Positioned(
              top: 8,
              right: 8,
              child: IconButton(
                icon: const Icon(Icons.close, color: Colors.white),
                onPressed: () => Navigator.pop(context),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _pickImages() async {
    final picker = ImagePicker();
    final files = await picker.pickMultiImage(imageQuality: 80);
    for (final f in files) {
      final bytes = await f.readAsBytes();
      setState(() => _newImages.add((filename: f.name, bytes: bytes)));
    }
  }

  Future<void> _pickVideos() async {
    final picker = ImagePicker();
    final file = await picker.pickVideo(source: ImageSource.gallery);
    if (file != null) {
      final bytes = await file.readAsBytes();
      setState(() => _newVideos.add((filename: file.name, bytes: bytes)));
    }
  }

  Future<void> _submitEvidence(ReturnRequest request) async {
    setState(() => _isSubmitting = true);
    try {
      final repo = ref.read(returnRequestRepositoryProvider);

      // Upload new media first
      List<String> tempIds = [];
      if (_newImages.isNotEmpty || _newVideos.isNotEmpty) {
        tempIds = await repo.uploadTemporaryMedia(
          images: _newImages.isNotEmpty ? _newImages : null,
          videos: _newVideos.isNotEmpty ? _newVideos : null,
        );
      }

      // Update the request
      await repo.update(
        id: request.id,
        customerNote: _noteController.text.isNotEmpty ? _noteController.text : null,
        temporaryMediaIds: tempIds.isNotEmpty ? tempIds : null,
        removeMediaIds: _removeMediaIds.isNotEmpty ? _removeMediaIds.toList() : null,
      );

      // Refresh and clear state
      ref.invalidate(returnRequestDetailProvider(widget.requestId));
      _newImages.clear();
      _newVideos.clear();
      _removeMediaIds.clear();
      _noteController.clear();

      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Đã gửi bổ sung bằng chứng thành công'), backgroundColor: Colors.green),
        );
      }
    } catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Lỗi: $e'), backgroundColor: Colors.red),
        );
      }
    } finally {
      if (mounted) setState(() => _isSubmitting = false);
    }
  }

  Future<void> _syncShipping() async {
    setState(() => _isSyncing = true);
    try {
      await ref.read(returnRequestRepositoryProvider).syncShippingStatus();
      ref.invalidate(returnRequestDetailProvider(widget.requestId));
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Đã đồng bộ trạng thái vận chuyển'), backgroundColor: Colors.green),
        );
      }
    } catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Lỗi đồng bộ: $e'), backgroundColor: Colors.red),
        );
      }
    } finally {
      if (mounted) setState(() => _isSyncing = false);
    }
  }
}

// ── Reusable widgets ──

class _SectionCard extends StatelessWidget {
  final String title;
  final IconData icon;
  final Widget child;

  const _SectionCard({required this.title, required this.icon, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: AppColors.border),
        boxShadow: [
          BoxShadow(color: Colors.black.withValues(alpha: 0.04), blurRadius: 8, offset: const Offset(0, 2)),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(16),
            child: Row(
              children: [
                Icon(icon, size: 18, color: AppColors.primary),
                const SizedBox(width: 8),
                Text(title,
                    style: const TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: AppColors.textPrimary)),
              ],
            ),
          ),
          const Divider(height: 1),
          Padding(
            padding: const EdgeInsets.all(16),
            child: child,
          ),
        ],
      ),
    );
  }
}

class _InfoRow extends StatelessWidget {
  final String label;
  final String value;
  const _InfoRow(this.label, this.value);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 120,
            child: Text(label,
                style: const TextStyle(fontSize: 13, color: AppColors.textSecondary)),
          ),
          Expanded(
            child: Text(value,
                style: const TextStyle(fontSize: 13, fontWeight: FontWeight.w500, color: AppColors.textPrimary)),
          ),
        ],
      ),
    );
  }
}

// ── Helpers (shared with list page) ──

({String label, Color color}) _statusInfo(String status) {
  switch (status) {
    case 'Pending':
      return (label: 'Chờ duyệt', color: AppColors.statusPending);
    case 'RequestMoreInfo':
      return (label: 'Cần bổ sung thông tin', color: Colors.amber.shade700);
    case 'ApprovedForReturn':
      return (label: 'Đã duyệt trả hàng', color: AppColors.statusDelivered);
    case 'Inspecting':
      return (label: 'Đang kiểm tra', color: AppColors.statusDelivering);
    case 'ReadyForRefund':
      return (label: 'Sẵn sàng hoàn tiền', color: AppColors.statusProcessing);
    case 'Completed':
      return (label: 'Hoàn tất', color: AppColors.paymentRefunded);
    case 'Rejected':
      return (label: 'Từ chối', color: AppColors.statusCancelled);
    default:
      return (label: status, color: Colors.grey);
  }
}

String? _reasonLabel(String? reason) {
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
      return reason;
  }
}
