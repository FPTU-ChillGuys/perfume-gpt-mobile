import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import '../../../../core/theme/app_colors.dart';
import '../../../../domain/entities/voucher.dart';
import '../providers/voucher_providers.dart';

final _currencyFormat = NumberFormat('#,###', 'vi_VN');

class VoucherListPage extends ConsumerStatefulWidget {
  const VoucherListPage({super.key});

  @override
  ConsumerState<VoucherListPage> createState() => _VoucherListPageState();
}

class _VoucherListPageState extends ConsumerState<VoucherListPage> with SingleTickerProviderStateMixin {
  late TabController _tabCtrl;

  @override
  void initState() {
    super.initState();
    _tabCtrl = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabCtrl.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.surface,
      body: NestedScrollView(
        headerSliverBuilder: (_, __) => [
          SliverAppBar(
            expandedHeight: 120,
            pinned: true,
            systemOverlayStyle: SystemUiOverlayStyle.light,
            backgroundColor: AppColors.primaryDark,
            flexibleSpace: FlexibleSpaceBar(
              title: const Text('Voucher',
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
              controller: _tabCtrl,
              indicatorColor: Colors.white,
              labelColor: Colors.white,
              unselectedLabelColor: Colors.white60,
              tabs: const [
                Tab(text: 'Có sẵn'),
                Tab(text: 'Voucher của tôi'),
              ],
            ),
          ),
        ],
        body: TabBarView(
          controller: _tabCtrl,
          children: [
            _AvailableTab(),
            _MyVouchersTab(),
          ],
        ),
      ),
    );
  }
}

class _AvailableTab extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final vouchersAsync = ref.watch(availableVouchersProvider);

    return vouchersAsync.when(
      data: (vouchers) {
        if (vouchers.isEmpty) return _EmptyState(icon: Icons.local_offer_outlined, text: 'Không có voucher khả dụng');
        return ListView.separated(
          padding: const EdgeInsets.all(16),
          itemCount: vouchers.length,
          separatorBuilder: (_, __) => const SizedBox(height: 12),
          itemBuilder: (_, i) => _VoucherCard(voucher: vouchers[i], showRedeem: true),
        );
      },
      loading: () => const Center(child: CircularProgressIndicator(color: AppColors.primary)),
      error: (e, _) => Center(
        child: Column(mainAxisSize: MainAxisSize.min, children: [
          const Text('Lỗi khi tải voucher'),
          TextButton(onPressed: () => ref.invalidate(availableVouchersProvider), child: const Text('Thử lại')),
        ]),
      ),
    );
  }
}

class _MyVouchersTab extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final vouchersAsync = ref.watch(myVouchersProvider);

    return vouchersAsync.when(
      data: (vouchers) {
        if (vouchers.isEmpty) return _EmptyState(icon: Icons.card_giftcard_outlined, text: 'Bạn chưa có voucher nào');
        return ListView.separated(
          padding: const EdgeInsets.all(16),
          itemCount: vouchers.length,
          separatorBuilder: (_, __) => const SizedBox(height: 12),
          itemBuilder: (_, i) => _VoucherCard(voucher: vouchers[i], showRedeem: false),
        );
      },
      loading: () => const Center(child: CircularProgressIndicator(color: AppColors.primary)),
      error: (e, _) => Center(
        child: Column(mainAxisSize: MainAxisSize.min, children: [
          const Text('Lỗi khi tải voucher'),
          TextButton(onPressed: () => ref.invalidate(myVouchersProvider), child: const Text('Thử lại')),
        ]),
      ),
    );
  }
}

class _VoucherCard extends ConsumerWidget {
  final Voucher voucher;
  final bool showRedeem;

  const _VoucherCard({required this.voucher, required this.showRedeem});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isExpired = voucher.endDate != null && voucher.endDate!.isBefore(DateTime.now());

    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: isExpired ? Colors.grey.shade300 : AppColors.border),
        boxShadow: [
          BoxShadow(color: Colors.black.withValues(alpha: 0.04), blurRadius: 8, offset: const Offset(0, 2)),
        ],
      ),
      child: Row(
        children: [
          // ── Left badge ──
          Container(
            width: 80,
            padding: const EdgeInsets.symmetric(vertical: 20),
            decoration: BoxDecoration(
              color: isExpired ? Colors.grey.shade300 : AppColors.primaryLight,
              borderRadius: const BorderRadius.only(topLeft: Radius.circular(16), bottomLeft: Radius.circular(16)),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.local_offer, color: isExpired ? Colors.grey : AppColors.primary, size: 28),
                const SizedBox(height: 4),
                Text(
                  voucher.discountLabel,
                  style: TextStyle(
                    fontWeight: FontWeight.w800,
                    fontSize: 16,
                    color: isExpired ? Colors.grey : AppColors.primary,
                  ),
                ),
              ],
            ),
          ),

          // ── Info ──
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Text(voucher.code,
                            style: const TextStyle(fontWeight: FontWeight.w700, fontSize: 14, color: AppColors.textPrimary, letterSpacing: 1)),
                      ),
                      if (isExpired)
                        Container(
                          padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                          decoration: BoxDecoration(color: Colors.grey.shade200, borderRadius: BorderRadius.circular(6)),
                          child: const Text('Hết hạn', style: TextStyle(fontSize: 10, color: Colors.grey)),
                        ),
                    ],
                  ),
                  if (voucher.description != null) ...[
                    const SizedBox(height: 4),
                    Text(voucher.description!, style: const TextStyle(fontSize: 12, color: AppColors.textSecondary)),
                  ],
                  const SizedBox(height: 6),
                  Row(
                    children: [
                      if (voucher.minOrderValue != null)
                        Text('Đơn tối thiểu: ${_currencyFormat.format(voucher.minOrderValue)}đ',
                            style: const TextStyle(fontSize: 11, color: AppColors.textSecondary)),
                      const Spacer(),
                      if (voucher.endDate != null)
                        Text('HSD: ${DateFormat('dd/MM/yyyy').format(voucher.endDate!)}',
                            style: const TextStyle(fontSize: 11, color: AppColors.textSecondary)),
                    ],
                  ),
                  if (showRedeem && !isExpired) ...[
                    const SizedBox(height: 8),
                    SizedBox(
                      height: 32,
                      child: ElevatedButton(
                        onPressed: () => _redeemVoucher(context, ref),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: AppColors.primary,
                          foregroundColor: Colors.white,
                          padding: const EdgeInsets.symmetric(horizontal: 16),
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                        ),
                        child: const Text('Nhận voucher', style: TextStyle(fontSize: 12, fontWeight: FontWeight.w600)),
                      ),
                    ),
                  ],
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  void _redeemVoucher(BuildContext context, WidgetRef ref) async {
    try {
      await ref.read(voucherRepositoryProvider).redeem(voucher.code);
      ref.invalidate(availableVouchersProvider);
      ref.invalidate(myVouchersProvider);
      if (context.mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Đã nhận voucher ${voucher.code}')),
        );
      }
    } catch (e) {
      if (context.mounted) {
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Lỗi: $e')));
      }
    }
  }
}

class _EmptyState extends StatelessWidget {
  final IconData icon;
  final String text;
  const _EmptyState({required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon, size: 64, color: AppColors.textSecondary.withValues(alpha: 0.5)),
          const SizedBox(height: 16),
          Text(text, style: const TextStyle(fontSize: 16, color: AppColors.textSecondary)),
        ],
      ),
    );
  }
}
