import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';
import 'package:perfumegpt_api_client/perfumegpt_api_client.dart';
import '../providers/return_request_providers.dart';

final _currencyFmt = NumberFormat.currency(
  locale: 'vi_VN',
  symbol: '₫',
  decimalDigits: 0,
);

const _statusTabs = <(ReturnRequestStatus? value, String label)>[
  (null, 'Tất cả'),
  (ReturnRequestStatus.pending, 'Chờ duyệt'),
  (ReturnRequestStatus.requestMoreInfo, 'Bổ sung bằng chứng'),
  (ReturnRequestStatus.approvedForReturn, 'Đã duyệt'),
  (ReturnRequestStatus.inspecting, 'Đang kiểm tra'),
  (ReturnRequestStatus.readyForRefund, 'Chờ hoàn tiền'),
  (ReturnRequestStatus.completed, 'Đã hoàn tiền'),
  (ReturnRequestStatus.rejected, 'Từ chối'),
];

class ReturnRequestListScreen extends ConsumerStatefulWidget {
  const ReturnRequestListScreen({super.key});

  @override
  ConsumerState<ReturnRequestListScreen> createState() =>
      _ReturnRequestListScreenState();
}

class _ReturnRequestListScreenState
    extends ConsumerState<ReturnRequestListScreen>
    with SingleTickerProviderStateMixin {
  late final TabController _tabController;
  int _currentPage = 1;
  static const int _pageSize = 10;

  ReturnRequestStatus? get _currentStatus =>
      _statusTabs[_tabController.index].$1;

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
      staffReturnRequestsProvider(
        status: _currentStatus,
        pageNumber: _currentPage,
        pageSize: _pageSize,
      ),
    );

    return Scaffold(
      appBar: AppBar(
        title: const Text('Yêu cầu trả hàng'),
        bottom: TabBar(
          controller: _tabController,
          isScrollable: true,
          tabAlignment: TabAlignment.start,
          tabs: _statusTabs.map((t) => Tab(text: t.$2)).toList(),
        ),
      ),
      body: dataAsync.when(
        data: (paged) {
          final items = paged.items;
          if (items.isEmpty) {
            return Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: const [
                  Icon(
                    Icons.assignment_return_outlined,
                    size: 64,
                    color: Colors.grey,
                  ),
                  SizedBox(height: 16),
                  Text(
                    'Không có yêu cầu trả hàng nào',
                    style: TextStyle(fontSize: 16, color: Colors.grey),
                  ),
                ],
              ),
            );
          }
          return RefreshIndicator(
            onRefresh: () async => ref.invalidate(
              staffReturnRequestsProvider(
                status: _currentStatus,
                pageNumber: _currentPage,
                pageSize: _pageSize,
              ),
            ),
            child: ListView(
              padding: const EdgeInsets.all(12),
              children: [
                ...items.map(
                  (r) => Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: _ReturnRequestCard(request: r),
                  ),
                ),
                _PaginationBar(
                  currentPage: _currentPage,
                  totalPages: paged.totalPages ?? 1,
                  onPageChanged: (p) => setState(() => _currentPage = p),
                ),
              ],
            ),
          );
        },
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (e, _) => Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Icon(Icons.error_outline, size: 48, color: Colors.grey),
              const SizedBox(height: 12),
              Text(
                e.toString(),
                textAlign: TextAlign.center,
                style: const TextStyle(color: Colors.grey),
              ),
              const SizedBox(height: 8),
              TextButton(
                onPressed: () => ref.invalidate(
                  staffReturnRequestsProvider(
                    status: _currentStatus,
                    pageNumber: _currentPage,
                    pageSize: _pageSize,
                  ),
                ),
                child: const Text('Thử lại'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// ── Card ──

class _ReturnRequestCard extends StatelessWidget {
  final OrderReturnRequestResponse request;
  const _ReturnRequestCard({required this.request});

  @override
  Widget build(BuildContext context) {
    final statusInfo = _statusInfo(request.status);
    final reasonLabel = _reasonLabel(request.reason);

    return Card(
      elevation: 1,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: InkWell(
        borderRadius: BorderRadius.circular(12),
        onTap: () => context.push('/returns/${request.id}'),
        child: Padding(
          padding: const EdgeInsets.all(14),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Icon(
                    Icons.assignment_return,
                    color: statusInfo.color,
                    size: 20,
                  ),
                  const SizedBox(width: 8),
                  Expanded(
                    child: Text(
                      request.orderCode,
                      style: const TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 14,
                      ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 8,
                      vertical: 3,
                    ),
                    decoration: BoxDecoration(
                      color: statusInfo.color.withValues(alpha: 0.12),
                      borderRadius: BorderRadius.circular(6),
                    ),
                    child: Text(
                      statusInfo.label,
                      style: TextStyle(
                        fontSize: 11,
                        fontWeight: FontWeight.w600,
                        color: statusInfo.color,
                      ),
                    ),
                  ),
                ],
              ),
              if (request.customerEmail != null) ...[
                const SizedBox(height: 6),
                Row(
                  children: [
                    const Icon(
                      Icons.person_outline,
                      size: 14,
                      color: Colors.grey,
                    ),
                    const SizedBox(width: 4),
                    Text(
                      request.customerEmail!,
                      style: const TextStyle(fontSize: 12, color: Colors.grey),
                    ),
                  ],
                ),
              ],
              const SizedBox(height: 6),
              Row(
                children: [
                  const Icon(Icons.access_time, size: 14, color: Colors.grey),
                  const SizedBox(width: 4),
                  Text(
                    request.createdAt != null
                        ? DateFormat(
                            'dd/MM/yyyy HH:mm',
                          ).format(request.createdAt!)
                        : '—',
                    style: const TextStyle(fontSize: 12, color: Colors.grey),
                  ),
                ],
              ),
              if (reasonLabel != null) ...[
                const SizedBox(height: 6),
                Text(
                  'Lý do: $reasonLabel',
                  style: const TextStyle(fontSize: 12, color: Colors.grey),
                ),
              ],
              if ((request.requestedRefundAmount ?? 0) > 0) ...[
                const SizedBox(height: 6),
                Text(
                  'Yêu cầu hoàn: ${_currencyFmt.format(request.requestedRefundAmount)}',
                  style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w500,
                    color: Colors.indigo.shade700,
                  ),
                ),
              ],
            ],
          ),
        ),
      ),
    );
  }
}

// ── Pagination ──

class _PaginationBar extends StatelessWidget {
  final int currentPage;
  final int totalPages;
  final ValueChanged<int> onPageChanged;

  const _PaginationBar({
    required this.currentPage,
    required this.totalPages,
    required this.onPageChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          IconButton(
            icon: const Icon(Icons.chevron_left),
            onPressed: currentPage > 1
                ? () => onPageChanged(currentPage - 1)
                : null,
          ),
          Text(
            '$currentPage / $totalPages',
            style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
          ),
          IconButton(
            icon: const Icon(Icons.chevron_right),
            onPressed: currentPage < totalPages
                ? () => onPageChanged(currentPage + 1)
                : null,
          ),
        ],
      ),
    );
  }
}

// ── Helpers ──

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

String? _reasonLabel(String reason) {
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
      return reason.isNotEmpty ? reason : null;
  }
}
