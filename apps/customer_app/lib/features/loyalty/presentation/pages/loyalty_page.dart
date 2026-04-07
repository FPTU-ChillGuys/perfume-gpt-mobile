import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import '../../../../core/theme/app_colors.dart';
import '../../../../domain/entities/loyalty.dart';
import '../providers/loyalty_providers.dart';

final _numberFormat = NumberFormat('#,###', 'vi_VN');

class LoyaltyPage extends ConsumerWidget {
  const LoyaltyPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final totalAsync = ref.watch(loyaltyTotalProvider);
    final historyAsync = ref.watch(loyaltyHistoryProvider);

    return Scaffold(
      backgroundColor: AppColors.surface,
      body: CustomScrollView(
        slivers: [
          // ── Hero AppBar with points summary ──
          SliverAppBar(
            expandedHeight: 200,
            pinned: true,
            systemOverlayStyle: SystemUiOverlayStyle.light,
            backgroundColor: AppColors.primaryDark,
            flexibleSpace: FlexibleSpaceBar(
              background: Container(
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    colors: [AppColors.heroStart, AppColors.heroEnd],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                ),
                child: SafeArea(
                  child: totalAsync.when(
                    data: (total) => Padding(
                      padding: const EdgeInsets.fromLTRB(24, 56, 24, 24),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          const Text('Điểm tích lũy',
                              style: TextStyle(color: Colors.white70, fontSize: 14)),
                          const SizedBox(height: 8),
                          Text(
                            _numberFormat.format(total.totalPoints),
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 48,
                              fontWeight: FontWeight.w800,
                              letterSpacing: -1,
                            ),
                          ),
                          const SizedBox(height: 4),
                          const Text('điểm', style: TextStyle(color: Colors.white70, fontSize: 14)),
                          const SizedBox(height: 16),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              _PointBadge(
                                label: 'Đã kiếm',
                                points: total.earnedPoints,
                                icon: Icons.arrow_upward_rounded,
                                color: Colors.greenAccent,
                              ),
                              const SizedBox(width: 24),
                              _PointBadge(
                                label: 'Đã dùng',
                                points: total.redeemedPoints,
                                icon: Icons.arrow_downward_rounded,
                                color: Colors.amberAccent,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    loading: () => const Center(
                      child: CircularProgressIndicator(color: Colors.white),
                    ),
                    error: (_, __) => const Center(
                      child: Text('Lỗi tải điểm', style: TextStyle(color: Colors.white70)),
                    ),
                  ),
                ),
              ),
            ),
          ),

          // ── History header ──
          const SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.fromLTRB(16, 20, 16, 8),
              child: Text('Lịch sử giao dịch',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700, color: AppColors.textPrimary)),
            ),
          ),

          // ── History list ──
          historyAsync.when(
            data: (transactions) {
              if (transactions.isEmpty) {
                return SliverFillRemaining(
                  child: Center(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(Icons.history, size: 64,
                            color: AppColors.textSecondary.withValues(alpha: 0.5)),
                        const SizedBox(height: 16),
                        const Text('Chưa có giao dịch nào',
                            style: TextStyle(fontSize: 16, color: AppColors.textSecondary)),
                      ],
                    ),
                  ),
                );
              }
              return SliverPadding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                sliver: SliverList.separated(
                  itemCount: transactions.length,
                  separatorBuilder: (_, __) => const SizedBox(height: 8),
                  itemBuilder: (_, i) => _TransactionCard(transaction: transactions[i]),
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
                    const Text('Lỗi khi tải lịch sử'),
                    TextButton(
                      onPressed: () => ref.invalidate(loyaltyHistoryProvider),
                      child: const Text('Thử lại'),
                    ),
                  ],
                ),
              ),
            ),
          ),

          // bottom padding
          const SliverToBoxAdapter(child: SizedBox(height: 24)),
        ],
      ),
    );
  }
}

class _PointBadge extends StatelessWidget {
  final String label;
  final int points;
  final IconData icon;
  final Color color;

  const _PointBadge({required this.label, required this.points, required this.icon, required this.color});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(icon, size: 16, color: color),
        const SizedBox(width: 4),
        Text('$label: ', style: const TextStyle(color: Colors.white60, fontSize: 13)),
        Text(_numberFormat.format(points),
            style: TextStyle(color: color, fontWeight: FontWeight.w700, fontSize: 14)),
      ],
    );
  }
}

class _TransactionCard extends StatelessWidget {
  final LoyaltyTransaction transaction;
  const _TransactionCard({required this.transaction});

  @override
  Widget build(BuildContext context) {
    final isEarned = transaction.type == 'Earned';
    final isRedeemed = transaction.type == 'Redeemed';
    final color = isEarned ? Colors.green : (isRedeemed ? Colors.red : Colors.orange);
    final sign = isEarned ? '+' : (isRedeemed ? '-' : '');
    final icon = isEarned
        ? Icons.add_circle_outline
        : (isRedeemed ? Icons.remove_circle_outline : Icons.swap_horiz);

    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: AppColors.border),
      ),
      padding: const EdgeInsets.all(14),
      child: Row(
        children: [
          Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              color: color.withValues(alpha: 0.1),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Icon(icon, color: color, size: 20),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  _typeLabel(transaction.type),
                  style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 13, color: AppColors.textPrimary),
                ),
                if (transaction.description != null) ...[
                  const SizedBox(height: 2),
                  Text(transaction.description!,
                      style: const TextStyle(fontSize: 12, color: AppColors.textSecondary),
                      maxLines: 1, overflow: TextOverflow.ellipsis),
                ],
                const SizedBox(height: 2),
                Text(DateFormat('dd/MM/yyyy HH:mm').format(transaction.createdAt),
                    style: const TextStyle(fontSize: 11, color: AppColors.textSecondary)),
              ],
            ),
          ),
          Text('$sign${_numberFormat.format(transaction.points.abs())}',
              style: TextStyle(fontWeight: FontWeight.w700, fontSize: 15, color: color)),
        ],
      ),
    );
  }

  String _typeLabel(String type) {
    switch (type) {
      case 'Earned': return 'Tích điểm';
      case 'Redeemed': return 'Đổi điểm';
      case 'Adjusted': return 'Điều chỉnh';
      default: return type;
    }
  }
}
