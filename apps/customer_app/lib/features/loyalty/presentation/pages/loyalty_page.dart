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
      body: RefreshIndicator(
        color: Colors.white,
        backgroundColor: AppColors.primary,
        onRefresh: () async {
          ref.invalidate(loyaltyTotalProvider);
          ref.invalidate(loyaltyHistoryProvider);
        },
        child: CustomScrollView(
          slivers: [
            // ── Hero AppBar ──
            SliverAppBar(
              expandedHeight: 220,
              pinned: true,
              systemOverlayStyle: SystemUiOverlayStyle.light,
              backgroundColor: AppColors.primaryDark,
              title: const Text('Điểm tích lũy',
                  style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600)),
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
                        padding: const EdgeInsets.fromLTRB(24, 60, 24, 20),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            FittedBox(
                              fit: BoxFit.scaleDown,
                              child: Text(
                                _numberFormat.format(total.totalPoints),
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 44,
                                  fontWeight: FontWeight.w800,
                                  letterSpacing: -1,
                                ),
                                maxLines: 1,
                              ),
                            ),
                            const SizedBox(height: 2),
                            const Text('điểm hiện có',
                                style: TextStyle(color: Colors.white70, fontSize: 13)),
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
                      error: (e, _) => Center(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            const Icon(Icons.error_outline, color: Colors.white70, size: 32),
                            const SizedBox(height: 8),
                            const Text('Không thể tải điểm',
                                style: TextStyle(color: Colors.white70, fontSize: 14)),
                            const SizedBox(height: 8),
                            TextButton(
                              onPressed: () => ref.invalidate(loyaltyTotalProvider),
                              child: const Text('Thử lại',
                                  style: TextStyle(color: Colors.white)),
                            ),
                          ],
                        ),
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
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        color: AppColors.textPrimary)),
              ),
            ),

            // ── History list ──
            historyAsync.when(
              data: (transactions) {
                if (transactions.isEmpty) {
                  return const SliverFillRemaining(
                    child: Center(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(Icons.history, size: 64, color: AppColors.textSecondary),
                          SizedBox(height: 16),
                          Text('Chưa có giao dịch nào',
                              style: TextStyle(
                                  fontSize: 16, color: AppColors.textSecondary)),
                        ],
                      ),
                    ),
                  );
                }
                return SliverPadding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  sliver: SliverList.separated(
                    itemCount: transactions.length,
                    separatorBuilder: (_, _) => const SizedBox(height: 8),
                    itemBuilder: (_, i) =>
                        _TransactionCard(transaction: transactions[i]),
                  ),
                );
              },
              loading: () => const SliverFillRemaining(
                child: Center(
                    child: CircularProgressIndicator(color: AppColors.primary)),
              ),
              error: (e, _) => SliverFillRemaining(
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const Icon(Icons.error_outline,
                          size: 48, color: AppColors.textSecondary),
                      const SizedBox(height: 12),
                      const Text('Lỗi khi tải lịch sử',
                          style: TextStyle(color: AppColors.textSecondary)),
                      const SizedBox(height: 8),
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
      ),
    );
  }
}

// ─── Point Badge ────────────────────────────────────────────────────────────

class _PointBadge extends StatelessWidget {
  final String label;
  final int points;
  final IconData icon;
  final Color color;

  const _PointBadge(
      {required this.label,
      required this.points,
      required this.icon,
      required this.color});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(icon, size: 16, color: color),
        const SizedBox(width: 4),
        Text('$label: ',
            style: const TextStyle(color: Colors.white60, fontSize: 13)),
        Text(_numberFormat.format(points),
            style: TextStyle(
                color: color, fontWeight: FontWeight.w700, fontSize: 14)),
      ],
    );
  }
}

// ─── Transaction Card ───────────────────────────────────────────────────────

class _TransactionCard extends StatelessWidget {
  final LoyaltyTransaction transaction;
  const _TransactionCard({required this.transaction});

  @override
  Widget build(BuildContext context) {
    final isEarned = transaction.type == 'Earn';
    final isSpent = transaction.type == 'Spend';
    final color =
        isEarned ? Colors.green : (isSpent ? Colors.red : Colors.orange);
    final sign = isEarned ? '+' : '-';
    final icon = isEarned
        ? Icons.add_circle_outline
        : (isSpent ? Icons.remove_circle_outline : Icons.swap_horiz);

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
              color: color.withAlpha(25),
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
                  style: const TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 13,
                      color: AppColors.textPrimary),
                ),
                if (transaction.description != null &&
                    transaction.description!.isNotEmpty) ...[
                  const SizedBox(height: 2),
                  Text(transaction.description!,
                      style: const TextStyle(
                          fontSize: 12, color: AppColors.textSecondary),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis),
                ],
                if (transaction.createdAt != null) ...[
                  const SizedBox(height: 2),
                  Text(
                      DateFormat('dd/MM/yyyy HH:mm')
                          .format(transaction.createdAt!),
                      style: const TextStyle(
                          fontSize: 11, color: AppColors.textSecondary)),
                ],
              ],
            ),
          ),
          const SizedBox(width: 8),
          Text('$sign${_numberFormat.format(transaction.points.abs())}',
              style: TextStyle(
                  fontWeight: FontWeight.w700, fontSize: 15, color: color)),
        ],
      ),
    );
  }

  String _typeLabel(String type) {
    switch (type) {
      case 'Earn':
        return 'Tích điểm';
      case 'Spend':
        return 'Đổi điểm';
      default:
        return type;
    }
  }
}
