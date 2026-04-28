import 'package:perfumegpt_common/perfumegpt_common.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import '../../../../core/theme/app_colors.dart';
import '../../../order/presentation/providers/cart_provider.dart';

class LoginPage extends ConsumerStatefulWidget {
  const LoginPage({super.key});

  @override
  ConsumerState<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends ConsumerState<LoginPage>
    with SingleTickerProviderStateMixin {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  bool _obscurePassword = true;

  late final AnimationController _fadeCtrl;
  late final Animation<double> _fadeAnim;

  @override
  void initState() {
    super.initState();
    _fadeCtrl = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 600),
    )..forward();
    _fadeAnim = CurvedAnimation(parent: _fadeCtrl, curve: Curves.easeOut);
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    _fadeCtrl.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final authState = ref.watch(authProvider);

    ref.listen(authProvider, (previous, next) {
      next.whenOrNull(
        data: (user) async {
          if (user != null) {
            final guestItems = await ref
                .read(cartRepositoryProvider)
                .getItems(isAuthenticated: false);
            if (guestItems.isNotEmpty && context.mounted) {
              final shouldMerge = await showDialog<bool>(
                context: context,
                builder: (context) => AlertDialog(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  title: const Text('Hợp nhất giỏ hàng?'),
                  content: const Text(
                    'Bạn có sản phẩm trong giỏ hàng khách. Bạn có muốn hợp nhất chúng vào tài khoản của mình không?',
                  ),
                  actions: [
                    TextButton(
                      onPressed: () => Navigator.pop(context, false),
                      child: const Text('Không, xóa giỏ hàng khách'),
                    ),
                    FilledButton(
                      style: FilledButton.styleFrom(
                        backgroundColor: AppColors.primary,
                      ),
                      onPressed: () => Navigator.pop(context, true),
                      child: const Text('Có, hợp nhất'),
                    ),
                  ],
                ),
              );

              if (shouldMerge == true) {
                await ref.read(cartProvider.notifier).mergeCart(guestItems);
              } else if (shouldMerge == false) {
                await ref
                    .read(cartRepositoryProvider)
                    .clearCart(isAuthenticated: false);
                await ref.read(cartProvider.notifier).reload();
              }
            } else {
              await ref.read(cartProvider.notifier).reload();
            }
            if (context.mounted) {
              context.go('/');
            }
          }
        },
        error: (error, stackTrace) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text('Đăng nhập thất bại: $error'),
              backgroundColor: Colors.red.shade700,
              behavior: SnackBarBehavior.floating,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
            ),
          );
        },
      );
    });

    return Scaffold(
      body: FadeTransition(
        opacity: _fadeAnim,
        child: CustomScrollView(
          slivers: [
            // ── Hero header ──────────────────────────────────────────────
            SliverToBoxAdapter(child: _buildHero(context)),

            // ── Form card ────────────────────────────────────────────────
            SliverFillRemaining(
              hasScrollBody: false,
              child: Container(
                decoration: const BoxDecoration(color: Color(0xFFF8FAFC)),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(24, 12, 24, 32),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // Card
                      Container(
                        margin: const EdgeInsets.only(top: 0),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(28),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withValues(alpha: 0.06),
                              blurRadius: 24,
                              offset: const Offset(0, 8),
                            ),
                          ],
                        ),
                        padding: const EdgeInsets.all(24),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            const Text(
                              'Chào mừng trở lại!',
                              style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.w800,
                                color: AppColors.textPrimary,
                              ),
                            ),
                            const SizedBox(height: 4),
                            Text(
                              'Đăng nhập để tiếp tục khám phá hương thơm',
                              style: TextStyle(
                                fontSize: 13,
                                color: Colors.grey.shade500,
                              ),
                            ),
                            const SizedBox(height: 24),

                            // Email field
                            _buildTextField(
                              controller: _emailController,
                              label: 'Email',
                              icon: Icons.mail_outline_rounded,
                              keyboardType: TextInputType.emailAddress,
                            ),
                            const SizedBox(height: 14),

                            // Password field
                            _buildTextField(
                              controller: _passwordController,
                              label: 'Mật khẩu',
                              icon: Icons.lock_outline_rounded,
                              obscureText: _obscurePassword,
                              suffixIcon: IconButton(
                                icon: Icon(
                                  _obscurePassword
                                      ? Icons.visibility_outlined
                                      : Icons.visibility_off_outlined,
                                  color: Colors.grey.shade400,
                                  size: 20,
                                ),
                                onPressed: () => setState(
                                  () => _obscurePassword = !_obscurePassword,
                                ),
                              ),
                            ),
                            const SizedBox(height: 24),

                            // Login button
                            SizedBox(
                              height: 52,
                              child: ElevatedButton(
                                onPressed: authState.isLoading
                                    ? null
                                    : () {
                                        ref
                                            .read(authProvider.notifier)
                                            .login(
                                              _emailController.text,
                                              _passwordController.text,
                                            );
                                      },
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: AppColors.primary,
                                  foregroundColor: Colors.white,
                                  elevation: 0,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(16),
                                  ),
                                ),
                                child: authState.isLoading
                                    ? const SizedBox(
                                        width: 22,
                                        height: 22,
                                        child: CircularProgressIndicator(
                                          strokeWidth: 2.5,
                                          color: Colors.white,
                                        ),
                                      )
                                    : const Text(
                                        'Đăng nhập',
                                        style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),
                              ),
                            ),
                            const SizedBox(height: 12),

                            // Divider
                            Row(
                              children: [
                                Expanded(
                                  child: Divider(color: Colors.grey.shade200),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 12,
                                  ),
                                  child: Text(
                                    'hoặc',
                                    style: TextStyle(
                                      color: Colors.grey.shade400,
                                      fontSize: 13,
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Divider(color: Colors.grey.shade200),
                                ),
                              ],
                            ),
                            const SizedBox(height: 12),

                            // Google button
                            SizedBox(
                              height: 52,
                              child: OutlinedButton.icon(
                                onPressed: authState.isLoading
                                    ? null
                                    : () {
                                        ref
                                            .read(authProvider.notifier)
                                            .googleLogin();
                                      },
                                icon: const Icon(Icons.g_mobiledata, size: 28),
                                label: const Text(
                                  'Đăng nhập bằng Google',
                                  style: TextStyle(fontWeight: FontWeight.w600),
                                ),
                                style: OutlinedButton.styleFrom(
                                  foregroundColor: AppColors.textPrimary,
                                  side: BorderSide(color: Colors.grey.shade300),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(16),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),

                      // Register link
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Chưa có tài khoản? ',
                            style: TextStyle(
                              color: Colors.grey.shade500,
                              fontSize: 14,
                            ),
                          ),
                          GestureDetector(
                            onTap: () => context.push('/register'),
                            child: const Text(
                              'Đăng ký ngay',
                              style: TextStyle(
                                color: AppColors.primary,
                                fontWeight: FontWeight.w700,
                                fontSize: 14,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildHero(BuildContext context) {
    return Container(
      height: 220,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [AppColors.heroStart, AppColors.heroEnd, Color(0xFF6B1510)],
          stops: [0.0, 0.55, 1.0],
        ),
      ),
      child: Stack(
        children: [
          // Decorative circle
          Positioned(
            top: -40,
            right: -40,
            child: Container(
              width: 180,
              height: 180,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white.withValues(alpha: 0.06),
              ),
            ),
          ),
          Positioned(
            bottom: -30,
            left: -20,
            child: Container(
              width: 140,
              height: 140,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white.withValues(alpha: 0.05),
              ),
            ),
          ),
          // Content
          SafeArea(
            bottom: false,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(24, 16, 24, 28),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 48,
                    height: 48,
                    decoration: BoxDecoration(
                      color: Colors.white.withValues(alpha: 0.15),
                      borderRadius: BorderRadius.circular(14),
                      border: Border.all(
                        color: Colors.white.withValues(alpha: 0.25),
                      ),
                    ),
                    child: const Icon(
                      Icons.auto_awesome,
                      color: Colors.white,
                      size: 26,
                    ),
                  ),
                  const Spacer(),
                  const Text(
                    'PerfumeGPT',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 28,
                      fontWeight: FontWeight.w800,
                      letterSpacing: -0.5,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    'Trải nghiệm mua nước hoa thông minh',
                    style: TextStyle(
                      color: Colors.white.withValues(alpha: 0.7),
                      fontSize: 13,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTextField({
    required TextEditingController controller,
    required String label,
    required IconData icon,
    TextInputType? keyboardType,
    bool obscureText = false,
    Widget? suffixIcon,
  }) {
    return TextField(
      controller: controller,
      keyboardType: keyboardType,
      obscureText: obscureText,
      style: const TextStyle(fontSize: 15, color: AppColors.textPrimary),
      decoration: InputDecoration(
        labelText: label,
        labelStyle: TextStyle(color: Colors.grey.shade400, fontSize: 14),
        prefixIcon: Icon(icon, color: Colors.grey.shade400, size: 20),
        suffixIcon: suffixIcon,
        filled: true,
        fillColor: const Color(0xFFF8FAFC),
        contentPadding: const EdgeInsets.symmetric(
          vertical: 14,
          horizontal: 16,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(14),
          borderSide: BorderSide(color: Colors.grey.shade200),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(14),
          borderSide: BorderSide(color: Colors.grey.shade200),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(14),
          borderSide: const BorderSide(color: AppColors.primary, width: 1.5),
        ),
      ),
    );
  }
}
