import 'package:perfumegpt_common/perfumegpt_common.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import '../../../../core/theme/app_colors.dart';
import '../providers/profile_providers.dart';
import '../../../loyalty/presentation/providers/loyalty_providers.dart';

class ProfilePage extends ConsumerWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final authState = ref.watch(authProvider);

    return Scaffold(
      backgroundColor: AppColors.surface,
      body: authState.when(
        data: (user) {
          if (user == null) return _GuestView();
          return _AuthenticatedView(userName: user.name, userEmail: user.email);
        },
        loading: () => const Center(
          child: CircularProgressIndicator(color: AppColors.primary),
        ),
        error: (error, _) => Center(child: Text('Lỗi: $error')),
      ),
    );
  }
}

// ═══════════════════════════════════════════════════════════════════════════
// GUEST VIEW
// ═══════════════════════════════════════════════════════════════════════════

class _GuestView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          expandedHeight: 200,
          pinned: true,
          backgroundColor: AppColors.primaryDark,
          systemOverlayStyle: SystemUiOverlayStyle.light,
          flexibleSpace: FlexibleSpaceBar(
            background: Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [AppColors.heroStart, AppColors.heroEnd],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
              ),
              child: const SafeArea(
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        Icons.account_circle_outlined,
                        size: 80,
                        color: Colors.white54,
                      ),
                      SizedBox(height: 12),
                      Text(
                        'PerfumeGPT',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 4),
                      Text(
                        'Đăng nhập để trải nghiệm đầy đủ',
                        style: TextStyle(color: Colors.white70, fontSize: 13),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
        SliverFillRemaining(
          child: Padding(
            padding: const EdgeInsets.all(24),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 50,
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () => context.push('/login'),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.primary,
                      foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    child: const Text(
                      'Đăng nhập',
                      style: TextStyle(fontWeight: FontWeight.w600),
                    ),
                  ),
                ),
                const SizedBox(height: 12),
                SizedBox(
                  height: 50,
                  width: double.infinity,
                  child: OutlinedButton(
                    onPressed: () => context.push('/register'),
                    style: OutlinedButton.styleFrom(
                      foregroundColor: AppColors.primary,
                      side: const BorderSide(color: AppColors.primary),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    child: const Text(
                      'Tạo tài khoản',
                      style: TextStyle(fontWeight: FontWeight.w600),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

// ═══════════════════════════════════════════════════════════════════════════
// AUTHENTICATED VIEW
// ═══════════════════════════════════════════════════════════════════════════

class _AuthenticatedView extends ConsumerWidget {
  final String? userName;
  final String userEmail;

  const _AuthenticatedView({required this.userName, required this.userEmail});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final profileAsync = ref.watch(profileNotifierProvider);
    final loyaltyAsync = ref.watch(loyaltyTotalProvider);

    return CustomScrollView(
      slivers: [
        // ── Hero header ──
        SliverAppBar(
          pinned: true,
          backgroundColor: AppColors.primaryDark,
          systemOverlayStyle: SystemUiOverlayStyle.light,
          actions: [
            IconButton(
              icon: const Icon(Icons.logout, color: Colors.white),
              onPressed: () => ref.read(authProvider.notifier).logout(),
            ),
          ],
        ),

        SliverToBoxAdapter(
          child: Container(
            width: double.infinity,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [AppColors.heroStart, AppColors.heroEnd],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
            padding: const EdgeInsets.fromLTRB(24, 16, 24, 28),
            child: Column(
              children: [
                // Avatar
                CircleAvatar(
                  radius: 36,
                  backgroundColor: Colors.white24,
                  child: Text(
                    (userName ?? 'U').toUpperCase(),
                    style: const TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
                const SizedBox(height: 12),
                Text(
                  profileAsync.when(
                    data: (p) => p.fullName ?? userName ?? 'Người dùng',
                    error: (_, _) => userName ?? 'Người dùng',
                    loading: () => userName ?? 'Người dùng',
                  ),
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  userEmail,
                  style: const TextStyle(color: Colors.white60, fontSize: 13),
                ),
                const SizedBox(height: 12),
                // ── Loyalty points badge ──
                loyaltyAsync.when(
                  data: (total) => Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 6,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.white.withValues(alpha: 0.15),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const Icon(
                          Icons.star_rounded,
                          color: Colors.amberAccent,
                          size: 18,
                        ),
                        const SizedBox(width: 6),
                        Text(
                          '${total.totalPoints} điểm tích lũy',
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 13,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ),
                  loading: () => const SizedBox.shrink(),
                  error: (_, _) => const SizedBox.shrink(),
                ),
              ],
            ),
          ),
        ),

        // ── Menu items ──
        SliverPadding(
          padding: const EdgeInsets.all(16),
          sliver: SliverList(
            delegate: SliverChildListDelegate([
              // Edit profile
              _MenuCard(
                icon: Icons.edit_outlined,
                title: 'Chỉnh sửa hồ sơ',
                subtitle: 'Cập nhật thông tin cá nhân',
                onTap: () async {
                  final updated = await context.push<bool>('/profile/edit');
                  if (updated == true) ref.invalidate(profileNotifierProvider);
                },
              ),
              const SizedBox(height: 10),

              // Orders
              _MenuCard(
                icon: Icons.receipt_long_outlined,
                title: 'Đơn hàng của tôi',
                subtitle: 'Theo dõi và quản lý đơn hàng',
                onTap: () => context.push('/orders'),
              ),
              const SizedBox(height: 10),

              // Addresses
              _MenuCard(
                icon: Icons.location_on_outlined,
                title: 'Sổ địa chỉ',
                subtitle: 'Quản lý địa chỉ giao hàng',
                onTap: () => context.push('/addresses'),
              ),
              const SizedBox(height: 10),

              // Vouchers
              _MenuCard(
                icon: Icons.local_offer_outlined,
                title: 'Voucher',
                subtitle: 'Xem và nhận voucher giảm giá',
                onTap: () => context.push('/vouchers'),
              ),
              const SizedBox(height: 10),

              // Reviews
              _MenuCard(
                icon: Icons.rate_review_outlined,
                title: 'Đánh giá của tôi',
                subtitle: 'Xem các đánh giá đã viết',
                onTap: () => context.push('/reviews'),
              ),
              const SizedBox(height: 10),

              // Return requests
              _MenuCard(
                icon: Icons.assignment_return_outlined,
                title: 'Yêu cầu trả hàng',
                subtitle: 'Xem và tạo yêu cầu trả hàng/hoàn tiền',
                onTap: () => context.push('/return-requests'),
              ),
              const SizedBox(height: 10),

              // Loyalty
              _MenuCard(
                icon: Icons.star_outline_rounded,
                title: 'Điểm tích lũy',
                subtitle: loyaltyAsync.when(
                  data: (t) => '${t.totalPoints} điểm',
                  error: (_, _) => 'Xem lịch sử điểm',
                  loading: () => 'Xem lịch sử điểm',
                ),
                onTap: () => context.push('/loyalty'),
              ),

              const SizedBox(height: 24),

              // Logout
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: Colors.red.shade200),
                ),
                child: ListTile(
                  leading: const Icon(Icons.logout, color: Colors.red),
                  title: const Text(
                    'Đăng xuất',
                    style: TextStyle(
                      color: Colors.red,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  onTap: () => ref.read(authProvider.notifier).logout(),
                ),
              ),
            ]),
          ),
        ),
      ],
    );
  }
}

class _MenuCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final String subtitle;
  final VoidCallback onTap;

  const _MenuCard({
    required this.icon,
    required this.title,
    required this.subtitle,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(14),
        border: Border.all(color: AppColors.border),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.03),
            blurRadius: 6,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: ListTile(
        leading: Container(
          width: 40,
          height: 40,
          decoration: BoxDecoration(
            color: AppColors.primaryLight,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Icon(icon, color: AppColors.primary, size: 20),
        ),
        title: Text(
          title,
          style: const TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 14,
            color: AppColors.textPrimary,
          ),
        ),
        subtitle: Text(
          subtitle,
          style: const TextStyle(fontSize: 12, color: AppColors.textSecondary),
        ),
        trailing: const Icon(
          Icons.chevron_right,
          color: AppColors.textSecondary,
        ),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
        onTap: onTap,
      ),
    );
  }
}
