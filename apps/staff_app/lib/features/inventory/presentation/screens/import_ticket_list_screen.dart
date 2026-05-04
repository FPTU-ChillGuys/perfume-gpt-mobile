import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';
import 'package:perfumegpt_api_client/perfumegpt_api_client.dart';
import '../providers/import_tickets_provider.dart';

class ImportTicketListScreen extends ConsumerStatefulWidget {
  const ImportTicketListScreen({super.key});

  @override
  ConsumerState<ImportTicketListScreen> createState() =>
      _ImportTicketListScreenState();
}

class _ImportTicketListScreenState extends ConsumerState<ImportTicketListScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  ImportStatus? _getStatusForTabIndex(int index) {
    switch (index) {
      case 0:
        return null; // All
      case 1:
        return ImportStatus.pending;
      case 2:
        return ImportStatus.inProgress;
      default:
        return null;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Đơn nhập hàng'),
        bottom: TabBar(
          controller: _tabController,
          tabs: const [
            Tab(text: 'Tất cả'),
            Tab(text: 'Chờ xử lý'),
            Tab(text: 'Đang kiểm tra'),
          ],
          onTap: (index) {
            // Force rebuild when tab changes to fetch with new status
            setState(() {});
          },
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        physics: const NeverScrollableScrollPhysics(), // Disable swipe to avoid rebuilding twice
        children: [
          _TicketList(status: _getStatusForTabIndex(0)),
          _TicketList(status: _getStatusForTabIndex(1)),
          _TicketList(status: _getStatusForTabIndex(2)),
        ],
      ),
    );
  }
}

class _TicketList extends ConsumerWidget {
  const _TicketList({required this.status});

  final ImportStatus? status;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final ticketsAsync = ref.watch(importTicketsProvider(status: status));

    return ticketsAsync.when(
      data: (tickets) {
        if (tickets.isEmpty) {
          return const Center(child: Text('Không có đơn hàng nào'));
        }
        return ListView.builder(
          itemCount: tickets.length,
          padding: const EdgeInsets.all(8),
          itemBuilder: (context, index) {
            final ticket = tickets[index];
            return Card(
              margin: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
              child: ListTile(
                onTap: () {
                  context.push('/inventory/import-tickets/${ticket.id}');
                },
                title: Text(
                  ticket.supplierName ?? 'Không xác định',
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('ID: ${ticket.id?.substring(0, 8)}...'),
                    Text(
                      'Ngày: ${DateFormat('dd/MM/yyyy').format(ticket.actualImportDate ?? ticket.expectedArrivalDate ?? DateTime.now())}',
                    ),
                  ],
                ),
                trailing: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    _StatusBadge(status: ticket.status),
                    const SizedBox(height: 4),
                    Text(
                      NumberFormat.currency(locale: 'vi_VN', symbol: '₫').format(ticket.totalCost),
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            );
          },
        );
      },
      loading: () => const Center(child: CircularProgressIndicator()),
      error: (error, stack) => Center(child: Text('Lỗi: $error')),
    );
  }
}

class _StatusBadge extends StatelessWidget {
  const _StatusBadge({required this.status});

  final ImportStatus? status;

  @override
  Widget build(BuildContext context) {
    Color bgColor = Colors.grey.shade200;
    Color textColor = Colors.grey.shade800;
    String text = 'Không xác định';

    switch (status) {
      case ImportStatus.pending:
        bgColor = Colors.orange.shade100;
        textColor = Colors.orange.shade800;
        text = 'Chờ xử lý';
        break;
      case ImportStatus.inProgress:
        bgColor = Colors.blue.shade100;
        textColor = Colors.blue.shade800;
        text = 'Đang kiểm tra';
        break;
      case ImportStatus.completed:
        bgColor = Colors.green.shade100;
        textColor = Colors.green.shade800;
        text = 'Hoàn thành';
        break;
      case ImportStatus.cancelled:
        bgColor = Colors.red.shade100;
        textColor = Colors.red.shade800;
        text = 'Đã hủy';
        break;
      default:
        break;
    }

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Text(
        text,
        style: TextStyle(
          color: textColor,
          fontSize: 12,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
