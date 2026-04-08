import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';
import '../../../../core/theme/app_colors.dart';
import '../../../../domain/entities/return_request.dart';
import '../providers/return_request_providers.dart';

final _currencyFmt = NumberFormat.currency(locale: 'vi_VN', symbol: '₫', decimalDigits: 0);
final _dateFmt = DateFormat('dd/MM/yyyy HH:mm');

const _statusTabs = <(String? value, String label, IconData icon)>[
  (null, 'Tất cả', Icons.list_alt_rounded),
  ('Pending', 'Chờ duyệt', Icons.hourglass_empty_rounded),
  ('RequestMoreInfo', 'Bổ sung', Icons.info_outline_rounded),
  ('ApprovedForReturn', 'Đã duyệt', Icons.check_circle_outline_rounded),
  ('Inspecting', 'Kiểm tra', Icons.search_rounded),
  ('ReadyForRefund', 'Chờ hoàn', Icons.account_balance_wallet_outlined),
  ('Completed', 'Hoàn tất', Icons.done_all_rounded),
  ('Rejected', 'Từ chối', Icons.cancel_outlined),
];

class ReturnRequestListPage extends ConsumerStatefulWidget {
  const ReturnRequestListPage({super.key});

  @override
  ConsumerState<ReturnRequestListPage> createState() => _State();
}

class _State extends ConsumerState<ReturnRequestListPage>
    with SingleTickerProviderStateMixin {
  late final TabController _tabCtrl;
  int _page = 1;
  int _pageSize = 10;

  String? get _status => _statusTabs[_tabCtrl.index].$1;

  @override
  void initState() {
    super.initState();
    _tabCtrl = TabController(length: _statusTabs.length, vsync: this);
    _tabCtrl.addListener(() {
      if (!_tabCtrl.indexIsChanging) setState(() => _page = 1);
    });
  }

  @override
  void dispose() {
    _tabCtrl.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final dataAsync = ref.watch(
      myReturnRequestsProvider(status: _status, page: _page, pageSize: _pageSize),
    );

    return Scaffold(
      backgroundColor: AppColors.surface,
      body: NestedScrollView(
        headerSliverBuilder: (_, s) => [
          SliverAppBar(
            expandedHeight: 140,
            pinned: true,
            floating: true,
            backgroundColor: AppColors.primaryDark,
            flexibleSpace: FlexibleSpaceBar(
              titlePadding: const EdgeInsets.only(left: 16, bottom: 50),
              title: const Text(
                'Yêu cầu trả hàng',
                style: TextStyle(color: Colors.white, fontWeight: FontWeight.w700, fontSize: 18),
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
            bottom: TabBar(
              controller: _tabCtrl,
              isScrollable: true,
              indicatorColor: Colors.white,
              indicatorWeight: 3,
              labelColor: Colors.white,
              unselectedLabelColor: Colors.white60,
              labelStyle: const TextStyle(fontSize: 12.5, fontWeight: FontWeight.w600),
              tabAlignment: TabAlignment.start,
              dividerColor: Colors.transparent,
              tabs: _statusTabs.map((t) => Tab(
                height: 40,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(t.$3, size: 15),
                    const SizedBox(width: 5),
                    Text(t.$2),
                  ],
                ),
              )).toList(),
            ),
          ),
        ],
        body: dataAsync.when(
          data: (paginated) {
            if (paginated.items.isEmpty) return _buildEmpty();
            return RefreshIndicator(
              color: AppColors.primary,
              onRefresh: () async => ref.invalidate(
                myReturnRequestsProvider(status: _status, page: _page, pageSize: _pageSize),
              ),
              child: ListView.builder(
                padding: const EdgeInsets.fromLTRB(16, 16, 16, 32),
                itemCount: paginated.items.length + 1,
                itemBuilder: (_, i) {
                  if (i == paginated.items.length) {
                    return _PaginationBar(
                      currentPage: _page,
                      totalPages: paginated.totalPages,
                      pageSize: _pageSize,
                      onPageChanged: (p) => setState(() => _page = p),
                      onPageSizeChanged: (s) => setState(() { _pageSize = s; _page = 1; }),
                    );
                  }
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 12),
                    child: _ReturnRequestCard(request: paginated.items[i]),
                  );
                },
              ),
            );
          },
          loading: () => const Center(child: CircularProgressIndicator(color: AppColors.primary)),
          error: (e, _) => _buildError(e),
        ),
      ),
    );
  }

  Widget _buildEmpty() {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            padding: const EdgeInsets.all(24),
            decoration: BoxDecoration(
              color: AppColors.primaryLight,
              shape: BoxShape.circle,
            ),
            child: const Icon(Icons.assignment_return_outlined, size: 48, color: AppColors.primary),
          ),
          const SizedBox(height: 20),
          const Text('Chưa có yêu cầu trả hàng',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600, color: AppColors.textPrimary)),
          const SizedBox(height: 6),
          const Text('Các yêu cầu trả hàng sẽ hiển thị ở đây',
              style: TextStyle(fontSize: 13, color: AppColors.textSecondary)),
        ],
      ),
    );
  }

  Widget _buildError(Object e) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(32),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Icon(Icons.cloud_off_rounded, size: 48, color: AppColors.textSecondary),
            const SizedBox(height: 16),
            const Text('Không thể tải dữ liệu',
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600, color: AppColors.textPrimary)),
            const SizedBox(height: 12),
            FilledButton.icon(
              onPressed: () => ref.invalidate(
                myReturnRequestsProvider(status: _status, page: _page, pageSize: _pageSize),
              ),
              icon: const Icon(Icons.refresh, size: 18),
              label: const Text('Thử lại'),
              style: FilledButton.styleFrom(backgroundColor: AppColors.primary),
            ),
          ],
        ),
      ),
    );
  }
}

// ─────────────────────────────────────────────────────────────────────────────
// Card
// ─────────────────────────────────────────────────────────────────────────────

class _ReturnRequestCard extends StatelessWidget {
  final ReturnRequest request;
  const _ReturnRequestCard({required this.request});

  @override
  Widget build(BuildContext context) {
    final si = _statusInfo(request.status);
    final reasonLabel = _reasonLabel(request.reason);

    return Material(
      color: Colors.white,
      borderRadius: BorderRadius.circular(14),
      clipBehavior: Clip.antiAlias,
      elevation: 0,
      child: InkWell(
        onTap: () => context.push('/return-requests/${request.id}'),
        borderRadius: BorderRadius.circular(14),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(14),
            border: Border.all(color: AppColors.border),
          ),
          child: Column(
            children: [
              // Top accent bar
              Container(height: 3, color: si.color),
              Padding(
                padding: const EdgeInsets.fromLTRB(14, 12, 14, 14),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Header
                    Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            color: si.color.withValues(alpha: 0.1),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Icon(si.icon, color: si.color, size: 18),
                        ),
                        const SizedBox(width: 10),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                request.orderCode ?? '#${request.orderId.length > 8 ? request.orderId.substring(0, 8) : request.orderId}',
                                style: const TextStyle(fontWeight: FontWeight.w700, fontSize: 14, color: AppColors.textPrimary),
                              ),
                              const SizedBox(height: 2),
                              Text(_dateFmt.format(request.createdAt),
                                  style: const TextStyle(fontSize: 11.5, color: AppColors.textSecondary)),
                            ],
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                          decoration: BoxDecoration(
                            color: si.color.withValues(alpha: 0.1),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Text(si.label,
                              style: TextStyle(fontSize: 11, fontWeight: FontWeight.w700, color: si.color)),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: Divider(height: 1, color: AppColors.border.withValues(alpha: 0.6)),
                    ),
                    // Details
                    if (reasonLabel != null) ...[
                      Row(
                        children: [
                          const Icon(Icons.help_outline, size: 13, color: AppColors.textSecondary),
                          const SizedBox(width: 6),
                          Flexible(
                            child: Text(reasonLabel,
                                style: const TextStyle(fontSize: 12.5, color: AppColors.textSecondary),
                                overflow: TextOverflow.ellipsis),
                          ),
                        ],
                      ),
                    ],
                    if (request.requestedRefundAmount > 0) ...[
                      if (reasonLabel != null) const SizedBox(height: 6),
                      Row(
                        children: [
                          Icon(Icons.payments_outlined, size: 15, color: AppColors.primary.withValues(alpha: 0.7)),
                          const SizedBox(width: 6),
                          Text(
                            _currencyFmt.format(request.requestedRefundAmount),
                            style: const TextStyle(fontSize: 15, fontWeight: FontWeight.w700, color: AppColors.primary),
                          ),
                        ],
                      ),
                    ],
                    const SizedBox(height: 8),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text('Xem chi tiết',
                              style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500, color: AppColors.primary.withValues(alpha: 0.8))),
                          const SizedBox(width: 2),
                          Icon(Icons.arrow_forward_ios_rounded, size: 11, color: AppColors.primary.withValues(alpha: 0.6)),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// ─────────────────────────────────────────────────────────────────────────────
// Pagination
// ─────────────────────────────────────────────────────────────────────────────

class _PaginationBar extends StatelessWidget {
  final int currentPage, totalPages, pageSize;
  final ValueChanged<int> onPageChanged;
  final ValueChanged<int> onPageSizeChanged;

  const _PaginationBar({
    required this.currentPage,
    required this.totalPages,
    required this.pageSize,
    required this.onPageChanged,
    required this.onPageSizeChanged,
  });

  @override
  Widget build(BuildContext context) {
    if (totalPages <= 1) return const SizedBox.shrink();
    return Padding(
      padding: const EdgeInsets.only(top: 8, bottom: 4),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: AppColors.border),
              borderRadius: BorderRadius.circular(10),
            ),
            child: DropdownButtonHideUnderline(
              child: DropdownButton<int>(
                value: pageSize,
                isDense: true,
                style: const TextStyle(fontSize: 13, color: AppColors.textPrimary),
                items: const [
                  DropdownMenuItem(value: 5, child: Text('5 / trang')),
                  DropdownMenuItem(value: 10, child: Text('10 / trang')),
                  DropdownMenuItem(value: 20, child: Text('20 / trang')),
                ],
                onChanged: (v) { if (v != null) onPageSizeChanged(v); },
              ),
            ),
          ),
          const SizedBox(width: 12),
          _navBtn(Icons.chevron_left, currentPage > 1 ? () => onPageChanged(currentPage - 1) : null),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Text('$currentPage / $totalPages',
                style: const TextStyle(fontSize: 13, fontWeight: FontWeight.w600, color: AppColors.textPrimary)),
          ),
          _navBtn(Icons.chevron_right, currentPage < totalPages ? () => onPageChanged(currentPage + 1) : null),
        ],
      ),
    );
  }

  Widget _navBtn(IconData icon, VoidCallback? onPressed) {
    final enabled = onPressed != null;
    return Material(
      color: enabled ? Colors.white : AppColors.surface,
      borderRadius: BorderRadius.circular(8),
      child: InkWell(
        onTap: onPressed,
        borderRadius: BorderRadius.circular(8),
        child: Container(
          padding: const EdgeInsets.all(6),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            border: Border.all(color: enabled ? AppColors.border : AppColors.border.withValues(alpha: 0.5)),
          ),
          child: Icon(icon, size: 20, color: enabled ? AppColors.textPrimary : AppColors.border),
        ),
      ),
    );
  }
}

// ─────────────────────────────────────────────────────────────────────────────
// Helpers
// ─────────────────────────────────────────────────────────────────────────────

({String label, Color color, IconData icon}) _statusInfo(String status) {
  switch (status) {
    case 'Pending':
      return (label: 'Chờ duyệt', color: AppColors.statusPending, icon: Icons.hourglass_empty_rounded);
    case 'RequestMoreInfo':
      return (label: 'Bổ sung bằng chứng', color: Colors.amber.shade700, icon: Icons.info_outline_rounded);
    case 'ApprovedForReturn':
      return (label: 'Đã duyệt trả', color: AppColors.statusDelivered, icon: Icons.check_circle_outline_rounded);
    case 'Inspecting':
      return (label: 'Đang kiểm tra', color: AppColors.statusDelivering, icon: Icons.search_rounded);
    case 'ReadyForRefund':
      return (label: 'Chờ hoàn tiền', color: AppColors.statusProcessing, icon: Icons.account_balance_wallet_rounded);
    case 'Completed':
      return (label: 'Đã hoàn tiền', color: AppColors.paymentRefunded, icon: Icons.done_all_rounded);
    case 'Rejected':
      return (label: 'Từ chối', color: AppColors.statusCancelled, icon: Icons.cancel_outlined);
    default:
      return (label: status, color: Colors.grey, icon: Icons.help_outline);
  }
}

String? _reasonLabel(String? reason) {
  switch (reason) {
    case 'DamagedProduct':     return 'Sản phẩm bị hư hỏng';
    case 'WrongItemReceived':  return 'Nhận sai sản phẩm';
    case 'ItemNotAsDescribed': return 'Không đúng mô tả';
    case 'ChangedMind':        return 'Đổi ý';
    case 'AllergicReaction':   return 'Dị ứng sản phẩm';
    default:                   return reason;
  }
}
