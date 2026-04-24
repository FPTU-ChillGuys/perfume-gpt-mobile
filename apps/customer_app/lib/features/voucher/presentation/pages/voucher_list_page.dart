import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import '../../../../core/theme/app_colors.dart';
import '../../../../domain/entities/voucher.dart';
import '../../../loyalty/presentation/providers/loyalty_providers.dart';
import '../providers/voucher_providers.dart';

final _currencyFmt = NumberFormat('#,###', 'vi_VN');
final _dateFmt = DateFormat('dd/MM/yyyy');

String _extractError(Object e) {
  if (e is DioException) {
    final data = e.response?.data;
    if (data is Map) {
      return data['message']?.toString() ?? 'Có lỗi xảy ra';
    }
  }
  if (e is Exception) {
    final s = e.toString();
    if (s.startsWith('Exception: ')) return s.substring(11);
    return s;
  }
  return 'Có lỗi xảy ra';
}

String _fmtDiscount(Voucher v) {
  if (v.discountType == 'Percentage') return '${v.discountValue.toInt()}%';
  return '${_currencyFmt.format(v.discountValue)}đ';
}

String _fmtMinOrder(Voucher v) {
  if (v.minOrderValue == null || v.minOrderValue == 0) return 'Không giới hạn';
  return '${_currencyFmt.format(v.minOrderValue)}đ';
}

// ══════════════════════════════════════════════════════════════════════════════

class VoucherListPage extends ConsumerStatefulWidget {
  const VoucherListPage({super.key});

  @override
  ConsumerState<VoucherListPage> createState() => _VoucherListPageState();
}

class _VoucherListPageState extends ConsumerState<VoucherListPage>
    with SingleTickerProviderStateMixin {
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
    final loyaltyAsync = ref.watch(loyaltyTotalProvider);
    final pointBalance = loyaltyAsync.asData?.value.totalPoints ?? 0;

    return Scaffold(
      backgroundColor: AppColors.surface,
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) => [
          SliverAppBar(
            expandedHeight: 140,
            pinned: true,
            systemOverlayStyle: SystemUiOverlayStyle.light,
            backgroundColor: AppColors.primaryDark,
            title: const Text(
              'Kho Voucher',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            actions: [
              if (pointBalance > 0)
                Center(
                  child: Container(
                    margin: const EdgeInsets.only(right: 16),
                    padding: const EdgeInsets.symmetric(
                      horizontal: 10,
                      vertical: 4,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.amber.shade700,
                      borderRadius: BorderRadius.circular(14),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const Icon(
                          Icons.stars_rounded,
                          size: 14,
                          color: Colors.white,
                        ),
                        const SizedBox(width: 4),
                        Text(
                          '${_currencyFmt.format(pointBalance)} điểm',
                          style: const TextStyle(
                            fontSize: 12,
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
            ],
            flexibleSpace: FlexibleSpaceBar(
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
                Tab(text: 'Voucher của tôi'),
                Tab(text: 'Đổi điểm lấy voucher'),
              ],
            ),
          ),
        ],
        body: TabBarView(
          controller: _tabCtrl,
          children: [
            _MyVouchersTab(onSwitchTab: () => _tabCtrl.animateTo(1)),
            _RedeemTab(),
          ],
        ),
      ),
    );
  }
}

// ══════════════════════════════════════════════════════════════════════════════
// TAB 0 – Voucher của tôi
// ══════════════════════════════════════════════════════════════════════════════

class _MyVouchersTab extends ConsumerStatefulWidget {
  final VoidCallback onSwitchTab;
  const _MyVouchersTab({required this.onSwitchTab});

  @override
  ConsumerState<_MyVouchersTab> createState() => _MyVouchersTabState();
}

enum _VoucherFilter { all, public_, member }

class _MyVouchersTabState extends ConsumerState<_MyVouchersTab> {
  _VoucherFilter _filter = _VoucherFilter.all;

  List<Voucher> _applyFilter(List<Voucher> list) {
    switch (_filter) {
      case _VoucherFilter.public_:
        return list.where((v) => v.isPublic && !v.isMemberOnly).toList();
      case _VoucherFilter.member:
        return list.where((v) => v.isMemberOnly).toList();
      case _VoucherFilter.all:
        return list;
    }
  }

  @override
  Widget build(BuildContext context) {
    final vouchersAsync = ref.watch(myVouchersProvider);

    return vouchersAsync.when(
      data: (vouchers) {
        if (vouchers.isEmpty) {
          return Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(
                  Icons.local_offer,
                  size: 48,
                  color: AppColors.textSecondary.withValues(alpha: 0.4),
                ),
                const SizedBox(height: 12),
                const Text(
                  'Bạn chưa có voucher nào.',
                  style: TextStyle(color: AppColors.textSecondary),
                ),
                const SizedBox(height: 8),
                TextButton(
                  onPressed: widget.onSwitchTab,
                  child: const Text('Đổi điểm lấy voucher'),
                ),
              ],
            ),
          );
        }

        final filtered = _applyFilter(vouchers);
        final available = filtered
            .where((v) => !v.isUsed && !v.isExpired)
            .toList();
        final usedOrExpired = filtered
            .where((v) => v.isUsed || v.isExpired)
            .toList();

        return RefreshIndicator(
          color: AppColors.primary,
          onRefresh: () async => ref.invalidate(myVouchersProvider),
          child: ListView(
            padding: const EdgeInsets.all(16),
            children: [
              // ── Filter row
              _FilterRow(
                current: _filter,
                onChanged: (f) => setState(() => _filter = f),
              ),
              const SizedBox(height: 12),
              if (available.isEmpty && usedOrExpired.isEmpty)
                Padding(
                  padding: const EdgeInsets.only(top: 40),
                  child: Center(
                    child: Text(
                      'Không có voucher ${_filter == _VoucherFilter.public_ ? 'Public' : 'Member'} nào.',
                      style: const TextStyle(color: AppColors.textSecondary),
                    ),
                  ),
                ),
              if (available.isNotEmpty) ...[
                _SectionHeader(
                  title: 'Có thể sử dụng',
                  count: available.length,
                  color: Colors.green,
                ),
                const SizedBox(height: 8),
                ...available.map(
                  (v) => Padding(
                    padding: const EdgeInsets.only(bottom: 12),
                    child: _UserVoucherCard(voucher: v),
                  ),
                ),
              ],
              if (usedOrExpired.isNotEmpty) ...[
                const SizedBox(height: 8),
                _SectionHeader(
                  title: 'Đã dùng / Hết hạn',
                  count: usedOrExpired.length,
                  color: Colors.grey,
                ),
                const SizedBox(height: 8),
                ...usedOrExpired.map(
                  (v) => Padding(
                    padding: const EdgeInsets.only(bottom: 12),
                    child: _UserVoucherCard(voucher: v),
                  ),
                ),
              ],
            ],
          ),
        );
      },
      loading: () => const Center(
        child: CircularProgressIndicator(color: AppColors.primary),
      ),
      error: (e, _) =>
          _ErrorState(onRetry: () => ref.invalidate(myVouchersProvider)),
    );
  }
}

// ══════════════════════════════════════════════════════════════════════════════
// TAB 1 – Đổi điểm lấy voucher
// ══════════════════════════════════════════════════════════════════════════════

class _RedeemTab extends ConsumerStatefulWidget {
  @override
  ConsumerState<_RedeemTab> createState() => _RedeemTabState();
}

class _RedeemTabState extends ConsumerState<_RedeemTab> {
  @override
  Widget build(BuildContext context) {
    final redeemableAsync = ref.watch(redeemableVouchersProvider);
    final myVouchersAsync = ref.watch(myVouchersProvider);
    final loyaltyAsync = ref.watch(loyaltyTotalProvider);
    final pointBalance = loyaltyAsync.asData?.value.totalPoints ?? 0;

    if (redeemableAsync.isLoading) {
      return const Center(
        child: CircularProgressIndicator(color: AppColors.primary),
      );
    }
    if (redeemableAsync.hasError) {
      return _ErrorState(
        onRetry: () {
          ref.invalidate(redeemableVouchersProvider);
        },
      );
    }

    final redeemableList = redeemableAsync.asData?.value ?? [];
    // IDs of vouchers the user already owns
    final ownedIds = (myVouchersAsync.asData?.value ?? [])
        .map((v) => v.id)
        .toSet();

    // Hide already-owned and expired vouchers
    final filteredRedeemable = redeemableList
        .where((v) => !ownedIds.contains(v.id))
        .where((v) => !v.isExpired)
        .toList();

    if (filteredRedeemable.isEmpty) {
      return Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              Icons.redeem,
              size: 48,
              color: AppColors.textSecondary.withValues(alpha: 0.4),
            ),
            const SizedBox(height: 12),
            const Text(
              'Chưa có voucher nào để đổi.',
              style: TextStyle(color: AppColors.textSecondary),
            ),
          ],
        ),
      );
    }

    return RefreshIndicator(
      color: AppColors.primary,
      onRefresh: () async {
        ref.invalidate(redeemableVouchersProvider);
        ref.invalidate(myVouchersProvider);
        ref.invalidate(loyaltyTotalProvider);
      },
      child: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          _SectionHeader(
            title: 'Đổi điểm',
            count: filteredRedeemable.length,
            color: Colors.amber.shade800,
          ),
          const SizedBox(height: 8),
          ...filteredRedeemable.map(
            (v) => Padding(
              padding: const EdgeInsets.only(bottom: 12),
              child: _RedeemableCard(voucher: v, pointBalance: pointBalance),
            ),
          ),
        ],
      ),
    );
  }
}

// ══════════════════════════════════════════════════════════════════════════════
// CARDS — matching React FE design (thin left color bar + prominent discount)
// ══════════════════════════════════════════════════════════════════════════════

class _UserVoucherCard extends StatelessWidget {
  final Voucher voucher;
  const _UserVoucherCard({required this.voucher});

  @override
  Widget build(BuildContext context) {
    final inactive = voucher.isUsed || voucher.isExpired;
    final barColor = inactive ? Colors.grey.shade400 : AppColors.primary;

    return Opacity(
      opacity: inactive ? 0.6 : 1.0,
      child: Container(
        clipBehavior: Clip.antiAlias,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(
            color: inactive ? Colors.grey.shade300 : AppColors.primary,
            width: inactive ? 1 : 1.5,
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withValues(alpha: 0.04),
              blurRadius: 8,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        child: IntrinsicHeight(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(width: 6, color: barColor),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(12),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // ── Header: code + status chip
                      Row(
                        children: [
                          Icon(
                            Icons.local_offer,
                            size: 16,
                            color: inactive ? Colors.grey : AppColors.primary,
                          ),
                          const SizedBox(width: 6),
                          Expanded(
                            child: Text(
                              voucher.code,
                              style: const TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 13,
                                fontFamily: 'monospace',
                                letterSpacing: 0.5,
                              ),
                            ),
                          ),
                          if (voucher.isMemberOnly)
                            Padding(
                              padding: const EdgeInsets.only(right: 4),
                              child: _Chip(
                                label: 'Member',
                                color: AppColors.primaryDark,
                              ),
                            )
                          else
                            Padding(
                              padding: const EdgeInsets.only(right: 4),
                              child: _Chip(
                                label: 'Public',
                                color: Colors.teal,
                                outlined: true,
                              ),
                            ),
                          if (voucher.isUsed)
                            _Chip(label: 'Đã dùng', color: Colors.grey),
                          if (voucher.isExpired && !voucher.isUsed)
                            _Chip(
                              label: 'Hết hạn',
                              color: Colors.red,
                              outlined: true,
                            ),
                          if (!inactive)
                            _Chip(label: 'Có thể dùng', color: Colors.green),
                        ],
                      ),
                      const SizedBox(height: 8),
                      // ── Discount
                      Text(
                        'Giảm ${_fmtDiscount(voucher)}',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                          color: inactive
                              ? AppColors.textSecondary
                              : AppColors.primary,
                        ),
                      ),
                      const SizedBox(height: 4),
                      // ── Min order
                      Text(
                        'Đơn tối thiểu: ${_fmtMinOrder(voucher)}',
                        style: const TextStyle(
                          fontSize: 12,
                          color: AppColors.textSecondary,
                        ),
                      ),
                      const Divider(height: 16),
                      // ── Footer: HSD + redeemedAt
                      Row(
                        children: [
                          Text(
                            'HSD: ${voucher.expiryDate != null ? _dateFmt.format(voucher.expiryDate!) : '—'}',
                            style: const TextStyle(
                              fontSize: 12,
                              color: AppColors.textSecondary,
                            ),
                          ),
                          if (voucher.redeemedAt != null) ...[
                            const SizedBox(width: 12),
                            Text(
                              'Nhận: ${_dateFmt.format(voucher.redeemedAt!)}',
                              style: const TextStyle(
                                fontSize: 12,
                                color: AppColors.textSecondary,
                              ),
                            ),
                          ],
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _RedeemableCard extends ConsumerStatefulWidget {
  final Voucher voucher;
  final int pointBalance;
  const _RedeemableCard({required this.voucher, required this.pointBalance});

  @override
  ConsumerState<_RedeemableCard> createState() => _RedeemableCardState();
}

class _RedeemableCardState extends ConsumerState<_RedeemableCard> {
  bool _loading = false;

  Future<void> _handleRedeem() async {
    final requiredPts = widget.voucher.requiredPoints ?? 0;
    if (widget.pointBalance < requiredPts) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Bạn không đủ điểm để đổi voucher này'),
          backgroundColor: Colors.red,
        ),
      );
      return;
    }
    setState(() => _loading = true);
    try {
      await ref.read(voucherRepositoryProvider).redeem(widget.voucher.id);
      ref.invalidate(myVouchersProvider);
      ref.invalidate(redeemableVouchersProvider);
      ref.invalidate(loyaltyTotalProvider);
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Đã đổi voucher ${widget.voucher.code}'),
            backgroundColor: Colors.green,
          ),
        );
      }
    } catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(_extractError(e)),
            backgroundColor: Colors.red,
          ),
        );
      }
    } finally {
      if (mounted) setState(() => _loading = false);
    }
  }

  @override
  Widget build(BuildContext context) {
    final v = widget.voucher;
    final requiredPts = v.requiredPoints ?? 0;
    final hasStock = (v.remainingQuantity ?? 1) > 0;
    final canRedeem =
        widget.pointBalance >= requiredPts && hasStock && !v.isExpired;
    final barColor = canRedeem ? Colors.green.shade600 : Colors.grey.shade400;

    return Container(
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: canRedeem ? Colors.green.shade600 : Colors.grey.shade300,
          width: canRedeem ? 1.5 : 1,
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.04),
            blurRadius: 8,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Opacity(
        opacity: v.isExpired ? 0.6 : 1.0,
        child: IntrinsicHeight(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(width: 6, color: barColor),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(12),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // ── Header: code + status chip
                      Row(
                        children: [
                          Icon(
                            Icons.local_offer,
                            size: 16,
                            color: canRedeem
                                ? Colors.green.shade600
                                : Colors.grey,
                          ),
                          const SizedBox(width: 6),
                          Expanded(
                            child: Text(
                              v.code,
                              style: const TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 13,
                                fontFamily: 'monospace',
                                letterSpacing: 0.5,
                              ),
                            ),
                          ),
                          if (v.isExpired)
                            _Chip(
                              label: 'Hết hạn',
                              color: Colors.red,
                              outlined: true,
                            )
                          else if (!hasStock)
                            _Chip(label: 'Hết voucher', color: Colors.grey)
                          else
                            _Chip(
                              label: 'Còn ${v.remainingQuantity ?? '∞'}',
                              color: Colors.blue,
                              outlined: true,
                            ),
                        ],
                      ),
                      const SizedBox(height: 8),
                      // ── Discount
                      Text(
                        'Giảm ${_fmtDiscount(v)}',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                          color: canRedeem
                              ? Colors.green.shade800
                              : AppColors.textSecondary,
                        ),
                      ),
                      const SizedBox(height: 4),
                      // ── Min order
                      Text(
                        'Đơn tối thiểu: ${_fmtMinOrder(v)}',
                        style: const TextStyle(
                          fontSize: 12,
                          color: AppColors.textSecondary,
                        ),
                      ),
                      const Divider(height: 16),
                      // ── Footer: points + button
                      Row(
                        children: [
                          Icon(
                            Icons.hourglass_empty,
                            size: 14,
                            color: Colors.amber.shade700,
                          ),
                          const SizedBox(width: 4),
                          Text(
                            '${_currencyFmt.format(requiredPts)} điểm',
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                              color: Colors.amber.shade800,
                            ),
                          ),
                          const Spacer(),
                          SizedBox(
                            height: 32,
                            child: Tooltip(
                              message:
                                  !canRedeem &&
                                      widget.pointBalance < requiredPts
                                  ? 'Chưa đủ điểm (cần ${_currencyFmt.format(requiredPts)})'
                                  : '',
                              child: ElevatedButton.icon(
                                onPressed: _loading || !canRedeem
                                    ? null
                                    : _handleRedeem,
                                icon: _loading
                                    ? const SizedBox(
                                        width: 14,
                                        height: 14,
                                        child: CircularProgressIndicator(
                                          strokeWidth: 2,
                                          color: Colors.white,
                                        ),
                                      )
                                    : const Icon(Icons.redeem, size: 16),
                                label: const Text(
                                  'Nhận ngay',
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.green.shade600,
                                  disabledBackgroundColor: Colors.grey.shade300,
                                  foregroundColor: Colors.white,
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 12,
                                  ),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// ══════════════════════════════════════════════════════════════════════════════
// SHARED WIDGETS
// ══════════════════════════════════════════════════════════════════════════════

class _FilterRow extends StatelessWidget {
  final _VoucherFilter current;
  final ValueChanged<_VoucherFilter> onChanged;
  const _FilterRow({required this.current, required this.onChanged});

  @override
  Widget build(BuildContext context) {
    Widget chip(_VoucherFilter filter, String label, IconData icon) {
      final selected = current == filter;
      return Padding(
        padding: const EdgeInsets.only(right: 8),
        child: FilterChip(
          avatar: Icon(
            icon,
            size: 16,
            color: selected ? Colors.white : AppColors.textSecondary,
          ),
          label: Text(label),
          selected: selected,
          onSelected: (_) => onChanged(filter),
          selectedColor: AppColors.primary,
          backgroundColor: Colors.white,
          side: BorderSide(
            color: selected ? AppColors.primary : Colors.grey.shade300,
          ),
          labelStyle: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w600,
            color: selected ? Colors.white : AppColors.textPrimary,
          ),
          showCheckmark: false,
          padding: const EdgeInsets.symmetric(horizontal: 4),
        ),
      );
    }

    return Row(
      children: [
        chip(_VoucherFilter.all, 'Tất cả', Icons.list_alt),
        chip(_VoucherFilter.public_, 'Public', Icons.public),
        chip(_VoucherFilter.member, 'Member', Icons.person),
      ],
    );
  }
}

class _Chip extends StatelessWidget {
  final String label;
  final Color color;
  final bool outlined;
  const _Chip({
    required this.label,
    required this.color,
    this.outlined = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 3),
      decoration: BoxDecoration(
        color: outlined ? Colors.transparent : color.withValues(alpha: 0.12),
        border: outlined ? Border.all(color: color, width: 1) : null,
        borderRadius: BorderRadius.circular(6),
      ),
      child: Text(
        label,
        style: TextStyle(
          fontSize: 10,
          fontWeight: FontWeight.w600,
          color: color,
        ),
      ),
    );
  }
}

class _SectionHeader extends StatelessWidget {
  final String title;
  final int count;
  final Color color;
  const _SectionHeader({
    required this.title,
    required this.count,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 4,
          height: 18,
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(2),
          ),
        ),
        const SizedBox(width: 8),
        Text(
          title,
          style: const TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 15,
            color: AppColors.textPrimary,
          ),
        ),
        const SizedBox(width: 6),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
          decoration: BoxDecoration(
            color: color.withValues(alpha: 0.15),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Text(
            '$count',
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w600,
              color: color,
            ),
          ),
        ),
      ],
    );
  }
}

class _ErrorState extends StatelessWidget {
  final VoidCallback onRetry;
  const _ErrorState({required this.onRetry});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Text('Lỗi khi tải voucher'),
          TextButton(onPressed: onRetry, child: const Text('Thử lại')),
        ],
      ),
    );
  }
}
