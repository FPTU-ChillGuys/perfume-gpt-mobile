import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';
import '../../../../core/theme/app_colors.dart';
import '../../../../domain/entities/return_request.dart';
import '../providers/return_request_providers.dart';

final _currencyFmt = NumberFormat.currency(locale: 'vi_VN', symbol: '₫', decimalDigits: 0);

const _statusTabs = <(String? value, String label)>[
  (null, 'Tất cả'),
  ('Pending', 'Chờ duyệt'),
  ('RequestMoreInfo', 'Bổ sung bằng chứng'),
  ('ApprovedForReturn', 'Đã duyệt'),
  ('Inspecting', 'Đang kiểm tra'),
  ('ReadyForRefund', 'Chờ hoàn tiền'),
  ('Completed', 'Đã hoàn tiền'),
  ('Rejected', 'Từ chối'),
];

class ReturnRequestListPage extends ConsumerStatefulWidget {
  const ReturnRequestListPage({super.key});

  @override
  ConsumerState<ReturnRequestListPage> createState() => _ReturnRequestListPageState();
}

class _ReturnRequestListPageState extends ConsumerState<ReturnRequestListPage>
    with SingleTickerProviderStateMixin {
  late final TabController _tabController;
  int _currentPage = 1;
  int _pageSize = 10;

  String? get _currentStatus => _statusTabs[_tabController.index].$1;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: _statusTabs.length, vsync: this);
    _tabController.addListener(() {
      if (!_tabController.indexIsChanging) {
        setState(() => _currentPage = 1);
      }
    });
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final dataAsync = ref.watch(
      myReturnRequestsProvider(status: _currentStatus, page: _currentPage, pageSize: _pageSize),
    );

    return Scaffold(
      backgroundColor: AppColors.surface,
      body: NestedScrollView(
        headerSliverBuilder: (_, _) => [
          SliverAppBar(
            expandedHeight: 120,
            pinned: true,
            floating: true,
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
            bottom: TabBar(
              controller: _tabController,
              isScrollable: true,
              indicatorColor: Colors.white,
              labelColor: Colors.white,
              unselectedLabelColor: Colors.white70,
              labelStyle: const TextStyle(fontSize: 13, fontWeight: FontWeight.w600),
              tabAlignment: TabAlignment.start,
              tabs: _statusTabs.map((t) => Tab(text: t.$2)).toList(),
            ),
          ),
        ],
        body: dataAsync.when(
          data: (paginated) {
            if (paginated.items.isEmpty) {
              return Center(
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
              );
            }
            return RefreshIndicator(
              color: AppColors.primary,
              onRefresh: () async {
                ref.invalidate(
                  myReturnRequestsProvider(status: _currentStatus, page: _currentPage, pageSize: _pageSize),
                );
              },
              child: ListView(
                padding: const EdgeInsets.all(16),
                children: [
                  ...paginated.items.map((r) => Padding(
                        padding: const EdgeInsets.only(bottom: 12),
                        child: _ReturnRequestCard(request: r),
                      )),
                  _PaginationBar(
                      currentPage: _currentPage,
                      totalPages: paginated.totalPages,
                      pageSize: _pageSize,
                      onPageChanged: (p) => setState(() => _currentPage = p),
                      onPageSizeChanged: (s) => setState(() {
                        _pageSize = s;
                        _currentPage = 1;
                      }),
                    ),
                ],
              ),
            );
          },
          loading: () => const Center(child: CircularProgressIndicator(color: AppColors.primary)),
          error: (e, _) => Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Icon(Icons.error_outline, size: 48, color: AppColors.textSecondary),
                const SizedBox(height: 12),
                const Text('Lỗi khi tải', style: TextStyle(color: AppColors.textSecondary)),
                const SizedBox(height: 8),
                TextButton(
                  onPressed: () => ref.invalidate(
                    myReturnRequestsProvider(status: _currentStatus, page: _currentPage, pageSize: _pageSize),
                  ),
                  child: const Text('Thử lại'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// ── Card ──

class _ReturnRequestCard extends StatelessWidget {
  final ReturnRequest request;
  const _ReturnRequestCard({required this.request});

  @override
  Widget build(BuildContext context) {
    final statusInfo = _statusInfo(request.status);
    final reasonLabel = _reasonLabel(request.reason);

    return GestureDetector(
      onTap: () => context.push('/return-requests/${request.id}'),
      child: Container(
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
            // Header
            Row(
              children: [
                Icon(Icons.assignment_return, color: statusInfo.color, size: 20),
                const SizedBox(width: 8),
                Expanded(
                  child: Text(
                    request.orderCode ?? request.orderId.substring(0, 8),
                    style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 14, color: AppColors.textPrimary),
                  ),
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

            const SizedBox(height: 10),
            Row(
              children: [
                const Icon(Icons.access_time, size: 14, color: AppColors.textSecondary),
                const SizedBox(width: 4),
                Text(DateFormat('dd/MM/yyyy HH:mm').format(request.createdAt),
                    style: const TextStyle(fontSize: 12, color: AppColors.textSecondary)),
              ],
            ),

            if (reasonLabel != null) ...[
              const SizedBox(height: 8),
              Row(
                children: [
                  const Icon(Icons.info_outline, size: 14, color: AppColors.textSecondary),
                  const SizedBox(width: 4),
                  Text('Lý do: $reasonLabel',
                      style: const TextStyle(fontSize: 13, color: AppColors.textSecondary)),
                ],
              ),
            ],

            if (request.requestedRefundAmount > 0) ...[
              const SizedBox(height: 8),
              Row(
                children: [
                  const Icon(Icons.payments_outlined, size: 14, color: AppColors.primary),
                  const SizedBox(width: 4),
                  Text('Số tiền yêu cầu: ${_currencyFmt.format(request.requestedRefundAmount)}',
                      style: const TextStyle(fontSize: 13, fontWeight: FontWeight.w500, color: AppColors.primary)),
                ],
              ),
            ],

            const SizedBox(height: 12),
            Align(
              alignment: Alignment.centerRight,
              child: TextButton.icon(
                onPressed: () => context.push('/return-requests/${request.id}'),
                icon: const Icon(Icons.visibility, size: 16),
                label: const Text('Xem chi tiết', style: TextStyle(fontSize: 12)),
                style: TextButton.styleFrom(foregroundColor: AppColors.primary),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// ── Pagination ──

class _PaginationBar extends StatelessWidget {
  final int currentPage;
  final int totalPages;
  final int pageSize;
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
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Page size selector
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            decoration: BoxDecoration(
              border: Border.all(color: AppColors.border),
              borderRadius: BorderRadius.circular(8),
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
                onChanged: (v) {
                  if (v != null) onPageSizeChanged(v);
                },
              ),
            ),
          ),
          const SizedBox(width: 12),
          IconButton(
            icon: const Icon(Icons.chevron_left),
            onPressed: currentPage > 1 ? () => onPageChanged(currentPage - 1) : null,
          ),
          Text('$currentPage / $totalPages',
              style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w500)),
          IconButton(
            icon: const Icon(Icons.chevron_right),
            onPressed: currentPage < totalPages ? () => onPageChanged(currentPage + 1) : null,
          ),
        ],
      ),
    );
  }
}

// ── Helpers ──

({String label, Color color}) _statusInfo(String status) {
  switch (status) {
    case 'Pending':
      return (label: 'Chờ duyệt', color: AppColors.statusPending);
    case 'RequestMoreInfo':
      return (label: 'Bổ sung bằng chứng', color: Colors.amber.shade700);
    case 'ApprovedForReturn':
      return (label: 'Đã duyệt trả', color: AppColors.statusDelivered);
    case 'Inspecting':
      return (label: 'Đang kiểm tra', color: AppColors.statusDelivering);
    case 'ReadyForRefund':
      return (label: 'Chờ hoàn tiền', color: AppColors.statusProcessing);
    case 'Completed':
      return (label: 'Đã hoàn tiền', color: AppColors.paymentRefunded);
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
