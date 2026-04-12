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

class _LoginPageState extends ConsumerState<LoginPage> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
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
                  title: const Text('Hợp nhất giỏ hàng?'),
                  content: const Text(
                    'Bạn có sản phẩm trong giỏ hàng khách. Bạn có muốn hợp nhất chúng vào tài khoản của mình không?',
                  ),
                  actions: [
                    TextButton(
                      onPressed: () => Navigator.pop(context, false),
                      child: const Text('Không, xóa giỏ hàng khách'),
                    ),
                    TextButton(
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
                // Reload cart from server after discarding guest items
                await ref.read(cartProvider.notifier).reload();
              }
            } else {
              // No guest items — just reload cart from server
              await ref.read(cartProvider.notifier).reload();
            }
            if (context.mounted) {
              context.go('/');
            }
          }
        },
        error: (error, stackTrace) {
          ScaffoldMessenger.of(
            context,
          ).showSnackBar(SnackBar(content: Text('Đăng nhập thất bại: $error')));
        },
      );
    });

    return Scaffold(
      appBar: AppBar(title: const Text('Đăng nhập')),
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(
                Icons.auto_awesome,
                size: 80,
                color: AppColors.primary,
              ),
              const SizedBox(height: 32),
              TextField(
                controller: _emailController,
                decoration: const InputDecoration(
                  labelText: 'Email',
                  border: OutlineInputBorder(),
                ),
                keyboardType: TextInputType.emailAddress,
              ),
              const SizedBox(height: 16),
              TextField(
                controller: _passwordController,
                decoration: const InputDecoration(
                  labelText: 'Mật khẩu',
                  border: OutlineInputBorder(),
                ),
                obscureText: true,
              ),
              const SizedBox(height: 24),
              SizedBox(
                width: double.infinity,
                height: 50,
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
                  child: authState.isLoading
                      ? const CircularProgressIndicator()
                      : const Text('Đăng nhập'),
                ),
              ),
              const SizedBox(height: 16),
              SizedBox(
                width: double.infinity,
                height: 50,
                child: OutlinedButton.icon(
                  onPressed: authState.isLoading
                      ? null
                      : () {
                          ref.read(authProvider.notifier).googleLogin();
                        },
                  icon: const Icon(Icons.g_mobiledata, size: 32),
                  label: const Text('Đăng nhập bằng Google'),
                ),
              ),
              const SizedBox(height: 16),
              TextButton(
                onPressed: () => context.push('/register'),
                child: const Text('Chưa có tài khoản? Đăng ký ngay'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
