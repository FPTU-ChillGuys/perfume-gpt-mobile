import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';
import 'package:perfumegpt_api_client/perfumegpt_api_client.dart';
import '../../../notification/presentation/providers/notification_providers.dart';
import '../../../order/presentation/providers/cart_provider.dart';
import '../../../../core/theme/app_colors.dart';
import '../../../../core/utils/price_formatter.dart';
import '../../../../domain/entities/product.dart';
import '../providers/banner_providers.dart';
import '../providers/home_providers.dart';
import '../widgets/home_banner_slider.dart';

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final cartItemCount = ref.watch(cartItemCountProvider);
    final unreadNotifications = ref.watch(unreadNotificationsCountProvider);
    final newArrivalsAsync = ref.watch(newArrivalsProvider);
    final bestSellersAsync = ref.watch(bestSellersProvider);
    final bannersAsync = ref.watch(homeHeroBannersProvider);
    final campaignsAsync = ref.watch(activeCampaignsProvider);

    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: true,
            elevation: 0,
            automaticallyImplyLeading: false,
            backgroundColor: AppColors.heroStart,
            titleSpacing: 16,
            title: const Text(
              'PerfumeGPT',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.w700,
              ),
            ),
            actions: [
              Padding(
                padding: const EdgeInsets.only(right: 8),
                child: _circleButton(
                  Icons.notifications_none_rounded,
                  () => _openNotificationsSheet(context, ref),
                  context: context,
                  badgeCount: unreadNotifications,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 16),
                child: _circleButton(
                  Icons.shopping_cart_outlined,
                  () => context.push('/cart'),
                  context: context,
                  badgeCount: cartItemCount,
                ),
              ),
            ],
          ),
          // ── Banner Slider ─────────────────────────────────────────────
          SliverToBoxAdapter(
            child: bannersAsync.when(
              data: (banners) => banners.isNotEmpty
                  ? Padding(
                      padding: const EdgeInsets.only(bottom: 8),
                      child: HomeBannerSlider(banners: banners),
                    )
                  : const SizedBox.shrink(),
              loading: () => const _BannerSkeleton(),
              error: (_, _) => const SizedBox.shrink(),
            ),
          ),

          // ── AI Feature Card ───────────────────────────────────────────
          SliverToBoxAdapter(child: _buildAiCard(context)),

          // ── Quick links ───────────────────────────────────────────────
          SliverToBoxAdapter(child: _buildQuickLinks(context)),

          // ── Campaign Sections ─────────────────────────────────────────
          ...campaignsAsync.when(
            data: (campaigns) => campaigns.map(
              (campaign) => SliverToBoxAdapter(
                child: _CampaignSection(
                  campaignId: campaign.id,
                  campaignName: campaign.name,
                ),
              ),
            ),
            loading: () => [const SliverToBoxAdapter(child: SizedBox.shrink())],
            error: (_, _) => [
              const SliverToBoxAdapter(child: SizedBox.shrink()),
            ],
          ),

          // ── New Arrivals ──────────────────────────────────────────────
          SliverToBoxAdapter(
            child: _buildSection(
              context,
              title: 'Hàng mới về',
              asyncValue: newArrivalsAsync,
              onViewAll: () => context.push(
                '/store?source=new-arrivals&sourceLabel=H%C3%A0ng%20m%E1%BB%9Bi%20v%E1%BB%81',
              ),
              isNew: true,
            ),
          ),

          // ── Best Sellers ──────────────────────────────────────────────
          SliverToBoxAdapter(
            child: _buildSection(
              context,
              title: 'Bán chạy nhất',
              asyncValue: bestSellersAsync,
              onViewAll: () => context.push(
                '/store?source=bestsellers&sourceLabel=B%C3%A1n%20ch%E1%BA%A1y%20nh%E1%BA%A5t',
              ),
            ),
          ),

          const SliverToBoxAdapter(child: SizedBox(height: 32)),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        onTap: (index) {
          switch (index) {
            case 0:
              context.go('/');
              break;
            case 1:
              context.push('/store');
              break;
            case 2:
              context.push('/profile');
              break;
          }
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Trang chủ'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Cửa hàng'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Hồ sơ'),
        ],
      ),
    );
  }

  void _openNotificationsSheet(BuildContext context, WidgetRef ref) {
    const pageSize = 8;
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (sheetContext) {
        var page = 1;
        var markingAll = false;
        return StatefulBuilder(
          builder: (context, setSheetState) {
            final notificationsAsync = ref.watch(customerNotificationsProvider);
            final unreadCount = ref.watch(unreadNotificationsCountProvider);
            return Container(
              height: MediaQuery.of(context).size.height * 0.72,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
              ),
              child: notificationsAsync.when(
                loading: () => const Center(
                  child: CircularProgressIndicator(color: AppColors.primary),
                ),
                error: (error, _) => Center(
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Text('Không tải được thông báo: $error'),
                  ),
                ),
                data: (notifications) {
                  final totalPages = (notifications.length / pageSize).ceil().clamp(
                    1,
                    9999,
                  );
                  if (page > totalPages) {
                    page = totalPages;
                  }
                  final start = (page - 1) * pageSize;
                  final end = (start + pageSize).clamp(0, notifications.length);
                  final paged = notifications.sublist(start, end);

                  Future<void> markAllRead() async {
                    if (markingAll || unreadCount == 0) return;
                    setSheetState(() => markingAll = true);
                    try {
                      await ref
                          .read(notificationsApiProvider)
                          .apiNotificationsReadAllPatch();
                      ref.invalidate(customerNotificationsProvider);
                    } finally {
                      if (context.mounted) {
                        setSheetState(() => markingAll = false);
                      }
                    }
                  }

                  Future<void> onTapItem(NotificationListItemResponse item) async {
                    final id = item.id;
                    if (id != null && id.isNotEmpty && item.isRead != true) {
                      await ref
                          .read(notificationsApiProvider)
                          .apiNotificationsIdReadPatch(id: id);
                      ref.invalidate(customerNotificationsProvider);
                    }
                    if (!context.mounted) return;
                    Navigator.pop(context);
                    final refId = item.referenceId;
                    if (refId == null || refId.isEmpty) return;
                    switch (item.referenceType) {
                      case NotifiReferecneType.order:
                        context.push('/orders/$refId');
                        break;
                      case NotifiReferecneType.orderReturnRequest:
                        context.push('/return-requests/$refId');
                        break;
                      case NotifiReferecneType.orderCancelRequest:
                        context.push('/cancel-requests/$refId');
                        break;
                      default:
                        break;
                    }
                  }

                  return Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(16, 14, 8, 8),
                        child: Row(
                          children: [
                            const Text(
                              'Thông báo',
                              style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            const SizedBox(width: 8),
                            if (unreadCount > 0)
                              Container(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 8,
                                  vertical: 2,
                                ),
                                decoration: BoxDecoration(
                                  color: Colors.red,
                                  borderRadius: BorderRadius.circular(999),
                                ),
                                child: Text(
                                  '$unreadCount',
                                  style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 11,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ),
                            const Spacer(),
                            IconButton(
                              onPressed: unreadCount == 0 || markingAll
                                  ? null
                                  : markAllRead,
                              icon: markingAll
                                  ? const SizedBox(
                                      width: 16,
                                      height: 16,
                                      child: CircularProgressIndicator(
                                        strokeWidth: 2,
                                      ),
                                    )
                                  : const Icon(Icons.done_all_rounded),
                            ),
                            IconButton(
                              onPressed: () => Navigator.pop(context),
                              icon: const Icon(Icons.close_rounded),
                            ),
                          ],
                        ),
                      ),
                      const Divider(height: 1),
                      Expanded(
                        child: notifications.isEmpty
                            ? const Center(
                                child: Text(
                                  'Không có thông báo mới.',
                                  style: TextStyle(color: AppColors.textSecondary),
                                ),
                              )
                            : ListView.separated(
                                padding: const EdgeInsets.all(12),
                                itemCount: paged.length,
                                separatorBuilder: (_, _) => const SizedBox(height: 8),
                                itemBuilder: (_, index) {
                                  final item = paged[index];
                                  final cfg = _typeStyle(item.referenceType?.value);
                                  final isUnread = item.isRead != true;
                                  return InkWell(
                                    onTap: () => onTapItem(item),
                                    borderRadius: BorderRadius.circular(12),
                                    child: Container(
                                      padding: const EdgeInsets.all(12),
                                      decoration: BoxDecoration(
                                        color: isUnread
                                            ? AppColors.primaryLight
                                            : Colors.white,
                                        border: Border.all(color: AppColors.border),
                                        borderRadius: BorderRadius.circular(12),
                                      ),
                                      child: Row(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            width: 34,
                                            height: 34,
                                            decoration: BoxDecoration(
                                              color: cfg.$2,
                                              borderRadius: BorderRadius.circular(17),
                                            ),
                                            child: Icon(cfg.$1, color: cfg.$3, size: 18),
                                          ),
                                          const SizedBox(width: 10),
                                          Expanded(
                                            child: Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  (item.title?.trim().isNotEmpty == true)
                                                      ? item.title!.trim()
                                                      : 'Thông báo',
                                                  maxLines: 1,
                                                  overflow: TextOverflow.ellipsis,
                                                  style: TextStyle(
                                                    fontSize: 13.5,
                                                    fontWeight: isUnread
                                                        ? FontWeight.w700
                                                        : FontWeight.w600,
                                                  ),
                                                ),
                                                const SizedBox(height: 2),
                                                Text(
                                                  item.message ?? '',
                                                  maxLines: 2,
                                                  overflow: TextOverflow.ellipsis,
                                                  style: const TextStyle(
                                                    fontSize: 12.5,
                                                    color: AppColors.textSecondary,
                                                    height: 1.35,
                                                  ),
                                                ),
                                                const SizedBox(height: 4),
                                                Text(
                                                  _formatRelativeTime(item.createdAt),
                                                  style: const TextStyle(
                                                    fontSize: 11,
                                                    color: AppColors.textSecondary,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          if (isUnread)
                                            Container(
                                              width: 7,
                                              height: 7,
                                              margin: const EdgeInsets.only(top: 3),
                                              decoration: const BoxDecoration(
                                                color: AppColors.primary,
                                                shape: BoxShape.circle,
                                              ),
                                            ),
                                        ],
                                      ),
                                    ),
                                  );
                                },
                              ),
                      ),
                      if (notifications.length > pageSize)
                        Padding(
                          padding: const EdgeInsets.fromLTRB(12, 4, 12, 12),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              IconButton(
                                onPressed: page > 1
                                    ? () => setSheetState(() => page--)
                                    : null,
                                icon: const Icon(Icons.chevron_left_rounded),
                              ),
                              Text('$page / $totalPages'),
                              IconButton(
                                onPressed: page < totalPages
                                    ? () => setSheetState(() => page++)
                                    : null,
                                icon: const Icon(Icons.chevron_right_rounded),
                              ),
                            ],
                          ),
                        ),
                    ],
                  );
                },
              ),
            );
          },
        );
      },
    );
  }

  String _formatRelativeTime(DateTime? date) {
    if (date == null) return '';
    final now = DateTime.now().toUtc().add(const Duration(hours: 7));
    final target = (date.isUtc ? date : date.toUtc()).add(const Duration(hours: 7));
    final diff = now.difference(target);
    if (diff.inSeconds < 60) return 'Vừa xong';
    if (diff.inMinutes < 60) return '${diff.inMinutes} phút trước';
    if (diff.inHours < 24) return '${diff.inHours} giờ trước';
    if (diff.inDays < 30) return '${diff.inDays} ngày trước';
    return DateFormat('dd/MM/yyyy').format(target);
  }

  (IconData, Color, Color) _typeStyle(String? type) {
    switch (type) {
      case 'Order':
        return (Icons.shopping_bag_outlined, const Color(0x1A3B82F6), const Color(0xFF3B82F6));
      case 'OrderCancelRequest':
        return (Icons.cancel_outlined, const Color(0x1AEF4444), const Color(0xFFEF4444));
      case 'OrderReturnRequest':
        return (Icons.assignment_return_outlined, const Color(0x1AF59E0B), const Color(0xFFF59E0B));
      case 'ImportTicket':
        return (Icons.inventory_2_outlined, const Color(0x1A10B981), const Color(0xFF10B981));
      case 'Adjustment':
        return (Icons.tune_rounded, const Color(0x1A8B5CF6), const Color(0xFF8B5CF6));
      default:
        return (Icons.notifications_none_rounded, const Color(0x1A6B7280), const Color(0xFF6B7280));
    }
  }

  // ═══════════════════════════════════════════════════════════════════════
  // Hero
  // ═══════════════════════════════════════════════════════════════════════

  Widget _circleButton(
    IconData icon,
    VoidCallback onTap, {
    required BuildContext context,
    int badgeCount = 0,
  }) {
    final displayCount = badgeCount > 99 ? '99+' : '$badgeCount';
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 38,
        height: 38,
        decoration: BoxDecoration(
          color: Colors.white.withValues(alpha: 0.12),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            Center(child: Icon(icon, color: Colors.white, size: 18)),
            if (badgeCount > 0)
              Positioned(
                right: -4,
                top: -4,
                child: Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 5,
                    vertical: 1,
                  ),
                  decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.error,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.white, width: 1.2),
                  ),
                  constraints: const BoxConstraints(
                    minWidth: 16,
                    minHeight: 16,
                  ),
                  alignment: Alignment.center,
                  child: Text(
                    displayCount,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 9,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }

  // ═══════════════════════════════════════════════════════════════════════
  // AI Feature Card (matches list page's toolbar styling)
  // ═══════════════════════════════════════════════════════════════════════

  Widget _buildAiCard(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(16, 0, 16, 8),
      transform: Matrix4.translationValues(0, -20, 0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(24),
        border: Border.all(color: AppColors.borderLight),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.05),
            blurRadius: 16,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Container(
              width: 56,
              height: 56,
              decoration: BoxDecoration(
                color: AppColors.primaryLight,
                borderRadius: BorderRadius.circular(16),
              ),
              child: const Icon(
                Icons.auto_awesome,
                color: AppColors.primary,
                size: 28,
              ),
            ),
            const SizedBox(height: 14),
            const Text(
              'Tìm hương thơm hoàn hảo với AI',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: AppColors.textPrimary,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 6),
            Text(
              'AI sẽ gợi ý mùi hương phù hợp dựa trên sở thích của bạn',
              style: TextStyle(fontSize: 13, color: Colors.grey.shade500),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 18),
            Row(
              children: [
                Expanded(
                  child: FilledButton.icon(
                    onPressed: () => context.push('/chat'),
                    icon: const Icon(Icons.chat_bubble_outline, size: 16),
                    label: const Text('Tư vấn AI'),
                    style: FilledButton.styleFrom(
                      backgroundColor: AppColors.primary,
                      padding: const EdgeInsets.symmetric(vertical: 12),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(14),
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: OutlinedButton.icon(
                    onPressed: () => context.push('/survey'),
                    icon: const Icon(Icons.assignment_outlined, size: 16),
                    label: const Text('Khảo sát'),
                    style: OutlinedButton.styleFrom(
                      foregroundColor: AppColors.primary,
                      padding: const EdgeInsets.symmetric(vertical: 12),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(14),
                      ),
                      side: const BorderSide(color: AppColors.primaryBorder),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  // ═══════════════════════════════════════════════════════════════════════
  // Quick links
  // ═══════════════════════════════════════════════════════════════════════

  Widget _buildQuickLinks(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
      child: Row(
        children: [
          _quickLink(
            icon: Icons.local_fire_department,
            label: 'Bán chạy',
            onTap: () => context.push(
              '/store?source=bestsellers&sourceLabel=B%C3%A1n%20ch%E1%BA%A1y%20nh%E1%BA%A5t',
            ),
          ),
          const SizedBox(width: 12),
          _quickLink(
            icon: Icons.fiber_new_outlined,
            label: 'Hàng mới',
            onTap: () => context.push(
              '/store?source=new-arrivals&sourceLabel=H%C3%A0ng%20m%E1%BB%9Bi%20v%E1%BB%81',
            ),
          ),
          const SizedBox(width: 12),
          _quickLink(
            icon: Icons.storefront,
            label: 'Tất cả',
            onTap: () => context.push('/store'),
          ),
          const SizedBox(width: 12),
          _quickLink(
            icon: Icons.receipt_long,
            label: 'Đơn hàng',
            onTap: () => context.push('/orders'),
          ),
        ],
      ),
    );
  }

  Widget _quickLink({
    required IconData icon,
    required String label,
    required VoidCallback onTap,
  }) {
    return Expanded(
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 14),
          decoration: BoxDecoration(
            color: AppColors.primaryLight,
            borderRadius: BorderRadius.circular(16),
            border: Border.all(color: AppColors.primaryBorder),
          ),
          child: Column(
            children: [
              Icon(icon, color: AppColors.primary, size: 22),
              const SizedBox(height: 6),
              Text(
                label,
                style: const TextStyle(
                  fontSize: 11,
                  fontWeight: FontWeight.w600,
                  color: AppColors.primaryDark,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // ═══════════════════════════════════════════════════════════════════════
  // Product section (horizontal list)
  // ═══════════════════════════════════════════════════════════════════════

  Widget _buildSection(
    BuildContext context, {
    required String title,
    required AsyncValue<List<Product>> asyncValue,
    required VoidCallback onViewAll,
    bool isNew = false,
  }) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 8, 16, 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Header
          Row(
            children: [
              Text(
                title,
                style: const TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w700,
                  color: AppColors.textPrimary,
                ),
              ),
              const Spacer(),
              GestureDetector(
                onTap: onViewAll,
                child: Row(
                  children: [
                    Text(
                      'Xem tất cả',
                      style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w600,
                        color: AppColors.primary,
                      ),
                    ),
                    const SizedBox(width: 2),
                    const Icon(
                      Icons.arrow_forward_ios,
                      size: 12,
                      color: AppColors.primary,
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 14),
          // Content
          asyncValue.when(
            data: (products) {
              if (products.isEmpty) return const SizedBox.shrink();
              return SizedBox(
                height: 260,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemCount: products.length,
                  separatorBuilder: (_, _) => const SizedBox(width: 12),
                  itemBuilder: (_, index) =>
                      _HomeProductCard(product: products[index], isNew: isNew),
                ),
              );
            },
            loading: () => SizedBox(
              height: 260,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemCount: 4,
                separatorBuilder: (_, _) => const SizedBox(width: 12),
                itemBuilder: (_, _) => const _SkeletonCard(),
              ),
            ),
            error: (error, _) => Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(vertical: 32),
              decoration: BoxDecoration(
                border: Border.all(color: AppColors.border),
                borderRadius: BorderRadius.circular(16),
              ),
              child: Column(
                children: [
                  const Icon(
                    Icons.error_outline,
                    size: 36,
                    color: Colors.redAccent,
                  ),
                  const SizedBox(height: 8),
                  Text(
                    'Không thể tải dữ liệu',
                    style: TextStyle(fontSize: 13, color: Colors.grey.shade600),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// ═════════════════════════════════════════════════════════════════════════════
// Campaign Section (dynamic, per-campaign product list)
// ═════════════════════════════════════════════════════════════════════════════

class _CampaignSection extends ConsumerWidget {
  final String campaignId;
  final String campaignName;

  const _CampaignSection({
    required this.campaignId,
    required this.campaignName,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final productsAsync = ref.watch(campaignProductsProvider(campaignId));

    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 8, 16, 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Header with campaign badge
          Row(
            children: [
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Icon(
                      Icons.local_offer,
                      size: 14,
                      color: Colors.white,
                    ),
                    const SizedBox(width: 4),
                    Text(
                      campaignName,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 13,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 8),
              const Expanded(
                child: Text(
                  'Ưu đãi đặc biệt',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                    color: AppColors.textPrimary,
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ],
          ),
          const SizedBox(height: 14),
          // Content
          productsAsync.when(
            data: (products) {
              if (products.isEmpty) return const SizedBox.shrink();
              return SizedBox(
                height: 260,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemCount: products.length,
                  separatorBuilder: (_, _) => const SizedBox(width: 12),
                  itemBuilder: (_, index) =>
                      _HomeProductCard(product: products[index]),
                ),
              );
            },
            loading: () => SizedBox(
              height: 260,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemCount: 4,
                separatorBuilder: (_, _) => const SizedBox(width: 12),
                itemBuilder: (_, _) => const _SkeletonCard(),
              ),
            ),
            error: (_, _) => const SizedBox.shrink(),
          ),
        ],
      ),
    );
  }
}

// ═════════════════════════════════════════════════════════════════════════════
// Home Product Card (matches _ProductCard in product_list_page)
// ═════════════════════════════════════════════════════════════════════════════

class _HomeProductCard extends StatelessWidget {
  final Product product;
  final bool isNew;

  const _HomeProductCard({required this.product, this.isNew = false});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => context.push('/product/${product.id}'),
      child: Container(
        width: 155,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
          border: Border.all(color: AppColors.borderLight),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Image
            Expanded(
              child: Stack(
                fit: StackFit.expand,
                children: [
                  ClipRRect(
                    borderRadius: const BorderRadius.vertical(
                      top: Radius.circular(16),
                    ),
                    child: product.imageUrl.isNotEmpty
                        ? Image.network(
                            product.imageUrl,
                            fit: BoxFit.cover,
                            gaplessPlayback: true,
                            loadingBuilder: (_, child, progress) {
                              if (progress == null) return child;
                              return Container(
                                color: AppColors.surface,
                                child: const Center(
                                  child: SizedBox(
                                    width: 20,
                                    height: 20,
                                    child: CircularProgressIndicator(
                                      strokeWidth: 2,
                                    ),
                                  ),
                                ),
                              );
                            },
                            errorBuilder: (_, _, _) => _placeholder(),
                          )
                        : _placeholder(),
                  ),
                  if (isNew)
                    Positioned(
                      top: 8,
                      left: 8,
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 8,
                          vertical: 3,
                        ),
                        decoration: BoxDecoration(
                          color: AppColors.accent,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: const Text(
                          'Mới',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 10,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                  if (product.hasCampaignDiscount &&
                      product.campaignName != null)
                    Positioned(
                      top: isNew ? 30 : 8,
                      left: 8,
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 6,
                          vertical: 3,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            const Icon(
                              Icons.local_offer,
                              size: 10,
                              color: Colors.white,
                            ),
                            const SizedBox(width: 3),
                            Text(
                              product.campaignName!,
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 9,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  if (product.gender != null)
                    Positioned(
                      top: 8,
                      right: 8,
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 8,
                          vertical: 3,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.black54,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Text(
                          product.gender!,
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 10,
                          ),
                        ),
                      ),
                    ),
                ],
              ),
            ),
            // Info
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 8, 10, 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    product.brand,
                    style: TextStyle(fontSize: 10, color: Colors.grey.shade500),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(height: 2),
                  Text(
                    product.name,
                    style: const TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 12,
                      color: AppColors.textPrimary,
                    ),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(height: 4),
                  _buildPriceSection(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildPriceSection() {
    // Campaign discount: show discountedPrice (red) + strikethrough basePrice
    if (product.hasCampaignDiscount) {
      final discountPercent =
          ((product.minPrice! - product.minDiscountedPrice!) /
                  product.minPrice! *
                  100)
              .round();
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Retail strikethrough (if available and > base)
          if (product.hasRetailComparison)
            Text(
              PriceFormatter.format(product.minRetailPrice!),
              style: TextStyle(
                fontSize: 10,
                color: Colors.grey.shade400,
                decoration: TextDecoration.lineThrough,
                decorationColor: Colors.grey.shade400,
              ),
            ),
          Row(
            children: [
              Flexible(
                child: Text(
                  PriceFormatter.format(product.minDiscountedPrice!),
                  style: const TextStyle(
                    color: Colors.red,
                    fontWeight: FontWeight.w700,
                    fontSize: 12,
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              const SizedBox(width: 4),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 1),
                decoration: BoxDecoration(
                  color: Colors.red.shade50,
                  borderRadius: BorderRadius.circular(4),
                ),
                child: Text(
                  '-$discountPercent%',
                  style: TextStyle(
                    fontSize: 9,
                    fontWeight: FontWeight.w700,
                    color: Colors.red.shade700,
                  ),
                ),
              ),
            ],
          ),
          // Base price strikethrough
          Text(
            PriceFormatter.format(product.minPrice!),
            style: TextStyle(
              fontSize: 10,
              color: Colors.grey.shade500,
              decoration: TextDecoration.lineThrough,
              decorationColor: Colors.grey.shade400,
            ),
          ),
        ],
      );
    }

    // No campaign but retail > base: show base + strikethrough retail
    if (product.hasRetailComparison) {
      final discountPercent =
          ((product.minRetailPrice! - product.minPrice!) /
                  product.minRetailPrice! *
                  100)
              .round();
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Flexible(
                child: Text(
                  _basePriceText(),
                  style: const TextStyle(
                    color: AppColors.primary,
                    fontWeight: FontWeight.w700,
                    fontSize: 12,
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              const SizedBox(width: 4),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 1),
                decoration: BoxDecoration(
                  color: Colors.red.shade50,
                  borderRadius: BorderRadius.circular(4),
                ),
                child: Text(
                  '-$discountPercent%',
                  style: TextStyle(
                    fontSize: 9,
                    fontWeight: FontWeight.w700,
                    color: Colors.red.shade700,
                  ),
                ),
              ),
            ],
          ),
          Text(
            PriceFormatter.format(product.minRetailPrice!),
            style: TextStyle(
              fontSize: 10,
              color: Colors.grey.shade400,
              decoration: TextDecoration.lineThrough,
              decorationColor: Colors.grey.shade400,
            ),
          ),
        ],
      );
    }

    // Default: just base price
    return Text(
      _basePriceText(),
      style: const TextStyle(
        color: AppColors.primary,
        fontWeight: FontWeight.w700,
        fontSize: 12,
      ),
    );
  }

  String _basePriceText() {
    if (product.minPrice != null &&
        product.maxPrice != null &&
        product.minPrice != product.maxPrice) {
      return PriceFormatter.formatRange(product.minPrice!, product.maxPrice!);
    }
    if (product.price > 0) return PriceFormatter.format(product.price);
    return 'Liên hệ';
  }

  Widget _placeholder() {
    return Container(
      color: AppColors.borderLight,
      child: const Center(
        child: Icon(
          Icons.image_not_supported_outlined,
          color: Colors.grey,
          size: 28,
        ),
      ),
    );
  }
}

// ═════════════════════════════════════════════════════════════════════════════
// Skeleton Card
// ═════════════════════════════════════════════════════════════════════════════

class _SkeletonCard extends StatelessWidget {
  const _SkeletonCard();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 155,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: AppColors.borderLight),
      ),
      padding: const EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: AppColors.skeleton,
                borderRadius: BorderRadius.circular(12),
              ),
            ),
          ),
          const SizedBox(height: 10),
          Container(
            height: 12,
            decoration: BoxDecoration(
              color: AppColors.skeleton,
              borderRadius: BorderRadius.circular(4),
            ),
          ),
          const SizedBox(height: 6),
          Container(
            height: 12,
            width: 80,
            decoration: BoxDecoration(
              color: AppColors.skeleton,
              borderRadius: BorderRadius.circular(4),
            ),
          ),
          const SizedBox(height: 8),
          Container(
            height: 14,
            width: 60,
            decoration: BoxDecoration(
              color: AppColors.skeleton,
              borderRadius: BorderRadius.circular(4),
            ),
          ),
        ],
      ),
    );
  }
}

// ═════════════════════════════════════════════════════════════════════════════
// Banner Skeleton
// ═════════════════════════════════════════════════════════════════════════════

class _BannerSkeleton extends StatelessWidget {
  const _BannerSkeleton();

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final screenWidth = constraints.maxWidth;
        final isCompact = screenWidth < 360;
        final isWide = screenWidth >= 600;
        final height = isWide
            ? 260.0
            : isCompact
            ? 160.0
            : 200.0;

        return Padding(
          padding: const EdgeInsets.only(bottom: 8),
          child: Container(height: height, color: AppColors.skeleton),
        );
      },
    );
  }
}
