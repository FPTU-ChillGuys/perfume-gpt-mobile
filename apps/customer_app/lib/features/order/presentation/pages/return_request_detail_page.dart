import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl/intl.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:video_thumbnail/video_thumbnail.dart';
import '../../../../core/theme/app_colors.dart';
import '../../../../core/utils/date_time_helper.dart';
import '../../../../core/utils/image_url_helper.dart';
import '../../../../domain/entities/order.dart';
import '../../../../domain/entities/return_request.dart';
import '../../../../domain/repositories/return_request_repository.dart';
import '../providers/return_request_providers.dart';
import '../../../profile/presentation/widgets/resolved_user_avatar.dart';

final _currencyFmt = NumberFormat.currency(
  locale: 'vi_VN',
  symbol: '₫',
  decimalDigits: 0,
);
const int _maxVideoBytes = 50 * 1024 * 1024;

class ReturnRequestDetailPage extends ConsumerStatefulWidget {
  final String requestId;
  const ReturnRequestDetailPage({super.key, required this.requestId});

  @override
  ConsumerState<ReturnRequestDetailPage> createState() => _State();
}

class _State extends ConsumerState<ReturnRequestDetailPage> {
  final _noteController = TextEditingController();
  final List<PendingUploadMedia> _newImages = [];
  final List<PendingUploadMedia> _newVideos = [];
  final Set<String> _removeMediaIds = {};
  bool _isSubmitting = false;
  bool _isSyncing = false;
  bool _isPrintingLabel = false;

  @override
  void dispose() {
    _noteController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final detailAsync = ref.watch(
      returnRequestWithOrderProvider(widget.requestId),
    );

    return Scaffold(
      backgroundColor: AppColors.surface,
      body: detailAsync.when(
        data: (data) => _buildBody(context, data.$1, data.$2),
        loading: () => CustomScrollView(
          slivers: [
            _appBar(null),
            const SliverFillRemaining(
              child: Center(
                child: CircularProgressIndicator(color: AppColors.primary),
              ),
            ),
          ],
        ),
        error: (e, _) => CustomScrollView(
          slivers: [
            _appBar(null),
            SliverFillRemaining(
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.all(32),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const Icon(
                        Icons.cloud_off_rounded,
                        size: 48,
                        color: AppColors.textSecondary,
                      ),
                      const SizedBox(height: 16),
                      const Text(
                        'Không thể tải chi tiết',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                          color: AppColors.textPrimary,
                        ),
                      ),
                      const SizedBox(height: 12),
                      FilledButton.icon(
                        onPressed: () => ref.invalidate(
                          returnRequestWithOrderProvider(widget.requestId),
                        ),
                        icon: const Icon(Icons.refresh, size: 18),
                        label: const Text('Thử lại'),
                        style: FilledButton.styleFrom(
                          backgroundColor: AppColors.primary,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // ─────────────────────────────────────────────────────────────────────────
  // Body
  // ─────────────────────────────────────────────────────────────────────────

  Widget _buildBody(
    BuildContext context,
    ReturnRequest req,
    OrderDetail? order,
  ) {
    final si = _statusInfo(req.status);
    final canAddEvidence = req.status == 'RequestMoreInfo';
    final items = _buildRequestItems(req, order);

    return RefreshIndicator(
      color: AppColors.primary,
      onRefresh: () async =>
          ref.invalidate(returnRequestWithOrderProvider(widget.requestId)),
      child: CustomScrollView(
        slivers: [
          _appBar(req),
          SliverPadding(
            padding: const EdgeInsets.fromLTRB(16, 16, 16, 40),
            sliver: SliverList(
              delegate: SliverChildListDelegate([
                _statusBanner(req, si),
                const SizedBox(height: 16),
                _infoCard(req),
                const SizedBox(height: 16),
                if (req.status == 'Pending') ...[
                  _refundBankCard(req),
                  const SizedBox(height: 16),
                ],
                if (req.returnShippingInfo != null) ...[
                  _shippingCard(req.returnShippingInfo!),
                  const SizedBox(height: 16),
                ],
                if (items.isNotEmpty) ...[
                  _itemsCard(items),
                  const SizedBox(height: 16),
                ],
                if (req.proofImages.isNotEmpty) ...[
                  _proofCard(req.proofImages, canAddEvidence),
                  const SizedBox(height: 16),
                ],
                if (canAddEvidence) ...[
                  _evidenceUploadCard(req),
                  const SizedBox(height: 16),
                ],
              ]),
            ),
          ),
        ],
      ),
    );
  }

  // ─────────────────────────────────────────────────────────────────────────
  // App bar
  // ─────────────────────────────────────────────────────────────────────────

  SliverAppBar _appBar(ReturnRequest? req) {
    return SliverAppBar(
      expandedHeight: 100,
      pinned: true,
      systemOverlayStyle: SystemUiOverlayStyle.light,
      backgroundColor: AppColors.primaryDark,
      actions: [
        const ProfileAvatarAppBarAction(forDarkAppBar: true),
        if (req != null && req.returnShippingInfo?.trackingNumber != null)
          _appBarAction(
            loading: _isPrintingLabel,
            icon: Icons.print_rounded,
            tooltip: 'In nhãn vận chuyển',
            onPressed: () => _printLabel(req),
          ),
        if (req != null)
          _appBarAction(
            loading: _isSyncing,
            icon: Icons.sync_rounded,
            tooltip: 'Đồng bộ vận chuyển',
            onPressed: _syncShipping,
          ),
      ],
      flexibleSpace: FlexibleSpaceBar(
        title: Text(
          req?.orderCode ?? 'Chi tiết yêu cầu',
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w700,
            fontSize: 16,
          ),
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

  Widget _appBarAction({
    required bool loading,
    required IconData icon,
    required String tooltip,
    required VoidCallback onPressed,
  }) {
    return IconButton(
      icon: loading
          ? const SizedBox(
              width: 20,
              height: 20,
              child: CircularProgressIndicator(
                strokeWidth: 2,
                color: Colors.white,
              ),
            )
          : Icon(icon, color: Colors.white),
      tooltip: tooltip,
      onPressed: loading ? null : onPressed,
    );
  }

  // ─────────────────────────────────────────────────────────────────────────
  // Status banner
  // ─────────────────────────────────────────────────────────────────────────

  Widget _statusBanner(
    ReturnRequest req,
    ({String label, Color color, IconData icon}) si,
  ) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            si.color.withValues(alpha: 0.08),
            si.color.withValues(alpha: 0.03),
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(14),
        border: Border.all(color: si.color.withValues(alpha: 0.25)),
      ),
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: si.color.withValues(alpha: 0.12),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Icon(si.icon, color: si.color, size: 24),
          ),
          const SizedBox(width: 14),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  si.label,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                    color: si.color,
                  ),
                ),
                const SizedBox(height: 3),
                Text(
                  'Mã đơn: ${req.orderCode ?? '-'}',
                  style: const TextStyle(
                    fontSize: 13,
                    color: AppColors.textSecondary,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  // ─────────────────────────────────────────────────────────────────────────
  // Info card
  // ─────────────────────────────────────────────────────────────────────────

  Widget _infoCard(ReturnRequest req) {
    final showStaffNote =
        req.status == 'Rejected' || req.status == 'RequestMoreInfo';
    return _Card(
      title: 'Thông tin yêu cầu',
      icon: Icons.info_outline_rounded,
      child: Column(
        children: [
          _Row(
            'Mã yêu cầu',
            req.id.length > 8 ? '${req.id.substring(0, 8)}…' : req.id,
          ),
          _Row('Trạng thái', _statusInfo(req.status).label),
          if (req.requestedByEmail != null)
            _Row('Người yêu cầu', req.requestedByEmail!),
          _Row('Ngày tạo', DateTimeHelper.formatDateTime(req.createdAt)),
          if (req.updatedAt != null)
            _Row('Cập nhật', DateTimeHelper.formatDateTime(req.updatedAt!)),
          const Divider(height: 20),
          _AmountRow('Số tiền yêu cầu', req.requestedRefundAmount),
          if (req.approvedRefundAmount != null && req.approvedRefundAmount! > 0)
            _AmountRow('Số tiền duyệt', req.approvedRefundAmount!),
          if (req.processedByName != null)
            _Row('Người xử lý', req.processedByName!),
          if (req.inspectedByName != null)
            _Row('Người kiểm tra', req.inspectedByName!),
          const Divider(height: 20),
          _Row('Lý do', _reasonLabel(req.reason) ?? '-'),
          if (req.customerNote != null && req.customerNote!.isNotEmpty) ...[
            const SizedBox(height: 4),
            _NoteBlock(label: 'Ghi chú khách hàng', text: req.customerNote!),
          ],
          if (showStaffNote) ...[
            if (req.staffNote != null && req.staffNote!.isNotEmpty) ...[
              const SizedBox(height: 4),
              _NoteBlock(
                label: 'Ghi chú nhân viên',
                text: req.staffNote!,
                color: Colors.orange,
              ),
            ],
            if (req.inspectionNote != null &&
                req.inspectionNote!.isNotEmpty) ...[
              const SizedBox(height: 4),
              _NoteBlock(
                label: 'Ghi chú kiểm tra',
                text: req.inspectionNote!,
                color: Colors.blue,
              ),
            ],
          ],
        ],
      ),
    );
  }

  // ─────────────────────────────────────────────────────────────────────────
  // Shipping card
  // ─────────────────────────────────────────────────────────────────────────

  Widget _shippingCard(ReturnShippingInfo s) {
    return _Card(
      title: 'Vận chuyển',
      icon: Icons.local_shipping_outlined,
      child: Column(
        children: [
          if (s.carrierName != null) _Row('Đơn vị', s.carrierName!),
          if (s.trackingNumber != null) _Row('Mã vận đơn', s.trackingNumber!),
          if (s.status != null)
            _Row('Trạng thái', _shippingStatusLabel(s.status!)),
          _Row('Phí vận chuyển', _currencyFmt.format(s.shippingFee)),
        ],
      ),
    );
  }

  Widget _refundBankCard(ReturnRequest req) {
    return _Card(
      title: 'Thông tin ngân hàng hoàn tiền',
      icon: Icons.account_balance_outlined,
      child: Column(
        children: [
          _Row(
            'Ngân hàng',
            req.refundBankName?.isNotEmpty == true ? req.refundBankName! : '-',
          ),
          _Row(
            'Số tài khoản',
            req.refundAccountNumber?.isNotEmpty == true
                ? req.refundAccountNumber!
                : '-',
          ),
          _Row(
            'Chủ tài khoản',
            req.refundAccountName?.isNotEmpty == true
                ? req.refundAccountName!
                : '-',
          ),
        ],
      ),
    );
  }

  // ─────────────────────────────────────────────────────────────────────────
  // Items card
  // ─────────────────────────────────────────────────────────────────────────

  Widget _itemsCard(List<_RequestItem> items) {
    return _Card(
      title: 'Sản phẩm trả (${items.length})',
      icon: Icons.inventory_2_outlined,
      child: Column(
        children: items.asMap().entries.map((entry) {
          final i = entry.key;
          final item = entry.value;
          return Column(
            children: [
              if (i > 0) const Divider(height: 20),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: item.imageUrl != null
                        ? Image.network(
                            ImageUrlHelper.resolve(item.imageUrl!),
                            width: 64,
                            height: 64,
                            fit: BoxFit.cover,
                            errorBuilder: (_, a, b) => _imgPlaceholder(),
                          )
                        : _imgPlaceholder(),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          item.name,
                          style: const TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 13.5,
                          ),
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                        const SizedBox(height: 4),
                        Row(
                          children: [
                            _chip('x${item.quantity}'),
                            const SizedBox(width: 6),
                            if (item.unitPrice > 0)
                              Text(
                                _currencyFmt.format(item.unitPrice),
                                style: const TextStyle(
                                  fontSize: 12,
                                  color: AppColors.textSecondary,
                                ),
                              ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  if (item.totalItem > 0)
                    Text(
                      _currencyFmt.format(item.totalItem),
                      style: const TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 14,
                        color: AppColors.primary,
                      ),
                    ),
                ],
              ),
            ],
          );
        }).toList(),
      ),
    );
  }

  Widget _imgPlaceholder() {
    return Container(
      width: 64,
      height: 64,
      decoration: BoxDecoration(
        color: AppColors.skeleton,
        borderRadius: BorderRadius.circular(10),
      ),
      child: const Icon(
        Icons.image_outlined,
        color: AppColors.textSecondary,
        size: 24,
      ),
    );
  }

  Widget _chip(String text) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
      decoration: BoxDecoration(
        color: AppColors.primaryLight,
        borderRadius: BorderRadius.circular(6),
      ),
      child: Text(
        text,
        style: const TextStyle(
          fontSize: 11,
          fontWeight: FontWeight.w600,
          color: AppColors.primary,
        ),
      ),
    );
  }

  // ─────────────────────────────────────────────────────────────────────────
  // Proof media card
  // ─────────────────────────────────────────────────────────────────────────

  Widget _proofCard(List<ProofMedia> media, bool canRemove) {
    final visible = media
        .where((m) => !_removeMediaIds.contains(m.id))
        .toList();
    return _Card(
      title: 'Bằng chứng (${visible.length})',
      icon: Icons.photo_library_outlined,
      child: Wrap(
        spacing: 8,
        runSpacing: 8,
        children: visible.map((m) {
          final isVideo = m.mimeType?.startsWith('video') == true;
          return GestureDetector(
            onTap: () => _previewMedia(context, m),
            child: Stack(
              children: [
                Container(
                  width: 80,
                  height: 80,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: AppColors.border),
                  ),
                  clipBehavior: Clip.antiAlias,
                  child: isVideo
                      ? Container(
                          color: Colors.grey.shade100,
                          child: const Center(
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Icon(
                                  Icons.play_circle_filled_rounded,
                                  size: 32,
                                  color: AppColors.primary,
                                ),
                                SizedBox(height: 2),
                                Text(
                                  'Video',
                                  style: TextStyle(
                                    fontSize: 10,
                                    color: AppColors.textSecondary,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        )
                      : Image.network(
                          ImageUrlHelper.resolve(m.url ?? ''),
                          fit: BoxFit.cover,
                          errorBuilder: (_, a, b) => Container(
                            color: Colors.grey.shade100,
                            child: const Center(
                              child: Icon(
                                Icons.broken_image_outlined,
                                color: AppColors.textSecondary,
                              ),
                            ),
                          ),
                        ),
                ),
                if (canRemove && m.id != null)
                  Positioned(
                    top: -2,
                    right: -2,
                    child: GestureDetector(
                      onTap: () => setState(() => _removeMediaIds.add(m.id!)),
                      child: Container(
                        padding: const EdgeInsets.all(3),
                        decoration: const BoxDecoration(
                          color: Colors.red,
                          shape: BoxShape.circle,
                        ),
                        child: const Icon(
                          Icons.close,
                          size: 12,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
              ],
            ),
          );
        }).toList(),
      ),
    );
  }

  // ─────────────────────────────────────────────────────────────────────────
  // Evidence upload card
  // ─────────────────────────────────────────────────────────────────────────

  Widget _evidenceUploadCard(ReturnRequest req) {
    final hasChanges =
        _newImages.isNotEmpty ||
        _newVideos.isNotEmpty ||
        _removeMediaIds.isNotEmpty ||
        _noteController.text.isNotEmpty;

    return _Card(
      title: 'Bổ sung bằng chứng',
      icon: Icons.upload_file_rounded,
      accentColor: Colors.amber.shade700,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextField(
            controller: _noteController,
            decoration: InputDecoration(
              hintText: 'Nhập ghi chú bổ sung…',
              hintStyle: TextStyle(
                color: AppColors.textSecondary.withValues(alpha: 0.6),
              ),
              filled: true,
              fillColor: AppColors.surface,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(color: AppColors.border),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(color: AppColors.border),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: const BorderSide(
                  color: AppColors.primary,
                  width: 1.5,
                ),
              ),
              contentPadding: const EdgeInsets.symmetric(
                horizontal: 14,
                vertical: 12,
              ),
            ),
            maxLines: 3,
          ),
          const SizedBox(height: 14),
          Row(
            children: [
              Expanded(
                child: _pickBtn(
                  Icons.photo_rounded,
                  'Ảnh (${_newImages.length})',
                  _pickImages,
                ),
              ),
              const SizedBox(width: 10),
              Expanded(
                child: _pickBtn(
                  Icons.videocam_rounded,
                  'Video (${_newVideos.length})',
                  _pickVideos,
                ),
              ),
            ],
          ),
          if (_newImages.isNotEmpty || _newVideos.isNotEmpty) ...[
            const SizedBox(height: 14),
            Wrap(
              spacing: 8,
              runSpacing: 8,
              children: [
                ..._newImages.asMap().entries.map(
                  (e) => _thumbPicked(
                    e.value.bytes,
                    isVideo: false,
                    onRemove: () => setState(() => _newImages.removeAt(e.key)),
                  ),
                ),
                ..._newVideos.asMap().entries.map(
                  (e) => _thumbPicked(
                    e.value.bytes,
                    isVideo: true,
                    videoPath: e.value.filePath,
                    onRemove: () => setState(() => _newVideos.removeAt(e.key)),
                  ),
                ),
              ],
            ),
          ],
          const SizedBox(height: 18),
          SizedBox(
            width: double.infinity,
            child: FilledButton.icon(
              onPressed: hasChanges && !_isSubmitting
                  ? () => _submitEvidence(req)
                  : null,
              icon: _isSubmitting
                  ? const SizedBox(
                      width: 16,
                      height: 16,
                      child: CircularProgressIndicator(
                        strokeWidth: 2,
                        color: Colors.white,
                      ),
                    )
                  : const Icon(Icons.send_rounded, size: 18),
              label: Text(_isSubmitting ? 'Đang gửi…' : 'Gửi bổ sung'),
              style: FilledButton.styleFrom(
                backgroundColor: AppColors.primary,
                disabledBackgroundColor: AppColors.primary.withValues(
                  alpha: 0.4,
                ),
                padding: const EdgeInsets.symmetric(vertical: 14),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _pickBtn(IconData icon, String label, VoidCallback onPressed) {
    return OutlinedButton.icon(
      onPressed: onPressed,
      icon: Icon(icon, size: 18),
      label: Text(label, style: const TextStyle(fontSize: 13)),
      style: OutlinedButton.styleFrom(
        foregroundColor: AppColors.primary,
        side: const BorderSide(color: AppColors.primaryBorder),
        padding: const EdgeInsets.symmetric(vertical: 10),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      ),
    );
  }

  Widget _thumbPicked(
    Uint8List? bytes, {
    required bool isVideo,
    String? videoPath,
    required VoidCallback onRemove,
  }) {
    return Stack(
      children: [
        Container(
          width: 68,
          height: 68,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: AppColors.border),
          ),
          clipBehavior: Clip.antiAlias,
          child: isVideo
              ? _VideoThumbnailView(videoPath: videoPath)
              : (bytes != null
                    ? Image.memory(bytes, fit: BoxFit.cover)
                    : Container(
                        color: Colors.grey.shade100,
                        child: const Center(
                          child: Icon(
                            Icons.image_rounded,
                            size: 24,
                            color: AppColors.textSecondary,
                          ),
                        ),
                      )),
        ),
        Positioned(
          top: -2,
          right: -2,
          child: GestureDetector(
            onTap: onRemove,
            child: Container(
              padding: const EdgeInsets.all(3),
              decoration: const BoxDecoration(
                color: Colors.red,
                shape: BoxShape.circle,
              ),
              child: const Icon(Icons.close, size: 11, color: Colors.white),
            ),
          ),
        ),
      ],
    );
  }

  // ─────────────────────────────────────────────────────────────────────────
  // Actions
  // ─────────────────────────────────────────────────────────────────────────

  void _previewMedia(BuildContext context, ProofMedia media) {
    final isVideo = media.mimeType?.startsWith('video') == true;
    if (isVideo) {
      final url = ImageUrlHelper.resolve(media.url ?? '');
      if (url.isNotEmpty) {
        launchUrl(Uri.parse(url), mode: LaunchMode.externalApplication);
      }
      return;
    }
    showDialog(
      context: context,
      builder: (_) => Dialog(
        backgroundColor: Colors.black,
        insetPadding: const EdgeInsets.all(16),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        child: Stack(
          children: [
            Center(
              child: InteractiveViewer(
                child: Image.network(
                  ImageUrlHelper.resolve(media.url ?? ''),
                  errorBuilder: (_, a, b) => const Center(
                    child: Icon(
                      Icons.broken_image,
                      color: Colors.white54,
                      size: 64,
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              top: 8,
              right: 8,
              child: IconButton(
                icon: const Icon(Icons.close_rounded, color: Colors.white),
                onPressed: () => Navigator.pop(context),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _pickImages() async {
    final files = await ImagePicker().pickMultiImage(imageQuality: 80);
    final picked = <PendingUploadMedia>[];
    for (final f in files) {
      final bytes = await f.readAsBytes();
      picked.add((filename: f.name, bytes: bytes, filePath: f.path));
    }
    if (picked.isNotEmpty && mounted) {
      setState(() => _newImages.addAll(picked));
    }
  }

  Future<void> _pickVideos() async {
    final file = await ImagePicker().pickVideo(source: ImageSource.gallery);
    if (file != null) {
      final sizeBytes = await File(file.path).length();
      if (sizeBytes > _maxVideoBytes) {
        if (!mounted) return;
        final sizeMb = (sizeBytes / (1024 * 1024)).toStringAsFixed(1);
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(
              'Video quá lớn ($sizeMb MB). Vui lòng chọn video <= 50 MB.',
            ),
            backgroundColor: Colors.orange,
          ),
        );
        return;
      }
      setState(
        () => _newVideos.add((
          filename: file.name,
          bytes: null,
          filePath: file.path,
        )),
      );
    }
  }

  Future<void> _submitEvidence(ReturnRequest req) async {
    setState(() => _isSubmitting = true);
    try {
      final repo = ref.read(returnRequestRepositoryProvider);
      List<String> tempIds = [];
      if (_newImages.isNotEmpty || _newVideos.isNotEmpty) {
        tempIds = await repo.uploadTemporaryMedia(
          images: _newImages.isNotEmpty ? _newImages : null,
          videos: _newVideos.isNotEmpty ? _newVideos : null,
        );
        final expectedMediaCount = _newImages.length + _newVideos.length;
        if (tempIds.length < expectedMediaCount) {
          throw Exception(
            'Chưa tải đủ media (${tempIds.length}/$expectedMediaCount). Vui lòng thử lại.',
          );
        }
      }
      await repo.update(
        id: req.id,
        customerNote: _noteController.text.isNotEmpty
            ? _noteController.text
            : null,
        temporaryMediaIds: tempIds.isNotEmpty ? tempIds : null,
        removeMediaIds: _removeMediaIds.isNotEmpty
            ? _removeMediaIds.toList()
            : null,
      );
      ref.invalidate(returnRequestWithOrderProvider(widget.requestId));
      _newImages.clear();
      _newVideos.clear();
      _removeMediaIds.clear();
      _noteController.clear();
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('Đã gửi bổ sung bằng chứng'),
            backgroundColor: Colors.green,
          ),
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
      ref.invalidate(returnRequestWithOrderProvider(widget.requestId));
      await ref.read(returnRequestWithOrderProvider(widget.requestId).future);
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('Đã đồng bộ trạng thái vận chuyển'),
            backgroundColor: Colors.green,
          ),
        );
      }
    } catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Lỗi: $e'), backgroundColor: Colors.red),
        );
      }
    } finally {
      if (mounted) setState(() => _isSyncing = false);
    }
  }

  Future<void> _printLabel(ReturnRequest req) async {
    final tracking = req.returnShippingInfo?.trackingNumber;
    if (tracking == null) return;
    setState(() => _isPrintingLabel = true);
    try {
      final url = await ref
          .read(returnRequestRepositoryProvider)
          .getOrderInfoUrl(tracking);
      if (url != null && url.isNotEmpty && mounted) {
        final uri = Uri.tryParse(url);
        if (uri != null && await canLaunchUrl(uri)) {
          await launchUrl(uri, mode: LaunchMode.externalApplication);
        } else if (mounted) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text('Không thể mở link'),
              backgroundColor: Colors.red,
            ),
          );
        }
      } else if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('Không có link nhãn'),
            backgroundColor: Colors.orange,
          ),
        );
      }
    } catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Lỗi: $e'), backgroundColor: Colors.red),
        );
      }
    } finally {
      if (mounted) setState(() => _isPrintingLabel = false);
    }
  }
}

// ═══════════════════════════════════════════════════════════════════════════════
// Reusable widgets
// ═══════════════════════════════════════════════════════════════════════════════

class _Card extends StatelessWidget {
  final String title;
  final IconData icon;
  final Widget child;
  final Color? accentColor;

  const _Card({
    required this.title,
    required this.icon,
    required this.child,
    this.accentColor,
  });

  @override
  Widget build(BuildContext context) {
    final color = accentColor ?? AppColors.primary;
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(14),
        border: Border.all(color: AppColors.border),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.03),
            blurRadius: 10,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 14, 16, 12),
            child: Row(
              children: [
                Container(
                  padding: const EdgeInsets.all(6),
                  decoration: BoxDecoration(
                    color: color.withValues(alpha: 0.1),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Icon(icon, size: 16, color: color),
                ),
                const SizedBox(width: 10),
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w700,
                    color: AppColors.textPrimary,
                  ),
                ),
              ],
            ),
          ),
          Divider(height: 1, color: AppColors.border.withValues(alpha: 0.6)),
          Padding(padding: const EdgeInsets.all(16), child: child),
        ],
      ),
    );
  }
}

class _Row extends StatelessWidget {
  final String label;
  final String value;
  const _Row(this.label, this.value);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 120,
            child: Text(
              label,
              style: const TextStyle(
                fontSize: 13,
                color: AppColors.textSecondary,
              ),
            ),
          ),
          Expanded(
            child: Text(
              value,
              style: const TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.w500,
                color: AppColors.textPrimary,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _AmountRow extends StatelessWidget {
  final String label;
  final double amount;
  const _AmountRow(this.label, this.amount);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 120,
            child: Text(
              label,
              style: const TextStyle(
                fontSize: 13,
                color: AppColors.textSecondary,
              ),
            ),
          ),
          Expanded(
            child: Text(
              _currencyFmt.format(amount),
              style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w700,
                color: AppColors.primary,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _NoteBlock extends StatelessWidget {
  final String label;
  final String text;
  final Color color;
  const _NoteBlock({
    required this.label,
    required this.text,
    this.color = AppColors.primary,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.only(top: 8),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: color.withValues(alpha: 0.05),
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: color.withValues(alpha: 0.15)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label,
            style: TextStyle(
              fontSize: 11,
              fontWeight: FontWeight.w600,
              color: color,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            text,
            style: const TextStyle(fontSize: 13, color: AppColors.textPrimary),
          ),
        ],
      ),
    );
  }
}

class _VideoThumbnailView extends StatelessWidget {
  final String? videoPath;

  const _VideoThumbnailView({required this.videoPath});

  @override
  Widget build(BuildContext context) {
    if (videoPath == null || videoPath!.isEmpty) {
      return _fallback();
    }
    return FutureBuilder<Uint8List?>(
      future: VideoThumbnail.thumbnailData(
        video: videoPath!,
        imageFormat: ImageFormat.JPEG,
        maxWidth: 180,
        quality: 55,
        timeMs: 0,
      ),
      builder: (context, snapshot) {
        final bytes = snapshot.data;
        if (bytes == null) return _fallback();
        return Stack(
          fit: StackFit.expand,
          children: [
            Image.memory(bytes, fit: BoxFit.cover),
            Container(color: Colors.black.withValues(alpha: 0.18)),
            const Center(
              child: Icon(
                Icons.play_circle_fill_rounded,
                color: Colors.white,
                size: 24,
              ),
            ),
          ],
        );
      },
    );
  }

  Widget _fallback() {
    return Container(
      color: Colors.grey.shade100,
      child: const Center(
        child: Icon(
          Icons.videocam_rounded,
          size: 24,
          color: AppColors.textSecondary,
        ),
      ),
    );
  }
}

// ─────────────────────────────────────────────────────────────────────────────
// Helpers
// ─────────────────────────────────────────────────────────────────────────────

class _RequestItem {
  final String name;
  final String? imageUrl;
  final int quantity;
  final double unitPrice;
  final double totalItem;
  const _RequestItem({
    required this.name,
    this.imageUrl,
    required this.quantity,
    required this.unitPrice,
    required this.totalItem,
  });
}

List<_RequestItem> _buildRequestItems(ReturnRequest req, OrderDetail? order) {
  final orderDetails = order?.orderDetails ?? [];
  final returnDetails = req.returnDetails;

  if (returnDetails.isEmpty) {
    return orderDetails.map((item) {
      final qty = item.quantity;
      final price = item.unitPrice;
      return _RequestItem(
        name: item.variantName,
        imageUrl: item.imageUrl,
        quantity: qty,
        unitPrice: price,
        totalItem: price * qty,
      );
    }).toList();
  }

  return returnDetails.map((detail) {
    final matched = orderDetails.cast<OrderDetailItem?>().firstWhere(
      (item) =>
          item?.id == detail.orderDetailId ||
          (detail.variantId != null && item?.variantId == detail.variantId),
      orElse: () => null,
    );
    final qty = detail.requestedQuantity;
    final price = detail.unitPrice > 0
        ? detail.unitPrice
        : (matched?.unitPrice ?? 0.0);
    return _RequestItem(
      name: matched?.variantName ?? 'Sản phẩm hoàn trả',
      imageUrl: matched?.imageUrl,
      quantity: qty,
      unitPrice: price,
      totalItem: price * qty,
    );
  }).toList();
}

({String label, Color color, IconData icon}) _statusInfo(String status) {
  switch (status) {
    case 'Pending':
      return (
        label: 'Chờ duyệt',
        color: AppColors.statusPending,
        icon: Icons.hourglass_empty_rounded,
      );
    case 'RequestMoreInfo':
      return (
        label: 'Cần bổ sung thông tin',
        color: Colors.amber.shade700,
        icon: Icons.info_outline_rounded,
      );
    case 'ApprovedForReturn':
      return (
        label: 'Đã duyệt trả hàng',
        color: AppColors.statusDelivered,
        icon: Icons.check_circle_outline_rounded,
      );
    case 'Inspecting':
      return (
        label: 'Đang kiểm tra',
        color: AppColors.statusDelivering,
        icon: Icons.search_rounded,
      );
    case 'ReadyForRefund':
      return (
        label: 'Sẵn sàng hoàn tiền',
        color: AppColors.statusProcessing,
        icon: Icons.account_balance_wallet_rounded,
      );
    case 'Completed':
      return (
        label: 'Hoàn tất',
        color: AppColors.paymentRefunded,
        icon: Icons.done_all_rounded,
      );
    case 'Rejected':
      return (
        label: 'Từ chối',
        color: AppColors.statusCancelled,
        icon: Icons.cancel_outlined,
      );
    default:
      return (label: status, color: Colors.grey, icon: Icons.help_outline);
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

String _shippingStatusLabel(String status) {
  switch (status) {
    case 'UnAssigned':
      return 'Chưa bàn giao';
    case 'ReadyToPick':
      return 'Chờ lấy hàng';
    case 'Delivering':
      return 'Đang giao';
    case 'Delivered':
      return 'Đã giao';
    case 'Cancelled':
      return 'Đã hủy';
    case 'Returning':
      return 'Đang trả hàng';
    case 'Returned':
      return 'Đã trả hàng';
    default:
      return status;
  }
}
