import 'package:perfumegpt_common/perfumegpt_common.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import '../../../../core/theme/app_colors.dart';

class SplashPage extends ConsumerStatefulWidget {
  const SplashPage({super.key});

  @override
  ConsumerState<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends ConsumerState<SplashPage>
    with SingleTickerProviderStateMixin {
  late final AnimationController _ctrl;
  late final Animation<double> _fade;
  late final Animation<double> _scale;
  late final Animation<double> _slideY;

  @override
  void initState() {
    super.initState();
    _ctrl = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1200),
    );

    _fade = CurvedAnimation(parent: _ctrl, curve: Curves.easeOut);
    _scale = Tween<double>(
      begin: 0.75,
      end: 1.0,
    ).animate(CurvedAnimation(parent: _ctrl, curve: Curves.elasticOut));
    _slideY = Tween<double>(
      begin: 30,
      end: 0,
    ).animate(CurvedAnimation(parent: _ctrl, curve: Curves.easeOut));

    _ctrl.forward();
    _checkAuth();
  }

  @override
  void dispose() {
    _ctrl.dispose();
    super.dispose();
  }

  Future<void> _checkAuth() async {
    await Future.delayed(const Duration(seconds: 2));
    if (!mounted) return;
    await ref.read(authProvider.future);
    if (!mounted) return;
    context.go('/');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [AppColors.heroStart, AppColors.heroEnd, Color(0xFF6B1510)],
            stops: [0.0, 0.55, 1.0],
          ),
        ),
        child: SafeArea(
          child: Stack(
            children: [
              // Decorative circles
              Positioned(
                top: -60,
                right: -60,
                child: Container(
                  width: 220,
                  height: 220,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white.withValues(alpha: 0.05),
                  ),
                ),
              ),
              Positioned(
                bottom: 100,
                left: -80,
                child: Container(
                  width: 300,
                  height: 300,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white.withValues(alpha: 0.04),
                  ),
                ),
              ),

              // Main content
              Center(
                child: FadeTransition(
                  opacity: _fade,
                  child: AnimatedBuilder(
                    animation: _ctrl,
                    builder: (context, child) => Transform.translate(
                      offset: Offset(0, _slideY.value),
                      child: Transform.scale(scale: _scale.value, child: child),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        // Logo container
                        Container(
                          width: 110,
                          height: 110,
                          decoration: BoxDecoration(
                            color: Colors.white.withValues(alpha: 0.15),
                            borderRadius: BorderRadius.circular(32),
                            border: Border.all(
                              color: Colors.white.withValues(alpha: 0.3),
                              width: 1.5,
                            ),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withValues(alpha: 0.2),
                                blurRadius: 30,
                                offset: const Offset(0, 10),
                              ),
                            ],
                          ),
                          child: const Icon(
                            Icons.auto_awesome,
                            size: 52,
                            color: Colors.white,
                          ),
                        ),
                        const SizedBox(height: 28),

                        // App name
                        const Text(
                          'PerfumeGPT',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 36,
                            fontWeight: FontWeight.w800,
                            letterSpacing: -0.5,
                          ),
                        ),
                        const SizedBox(height: 8),
                        Text(
                          'Your AI Fragrance Advisor',
                          style: TextStyle(
                            color: Colors.white.withValues(alpha: 0.7),
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                            letterSpacing: 0.3,
                          ),
                        ),
                        const SizedBox(height: 56),

                        // Loading dots
                        _LoadingDots(),
                      ],
                    ),
                  ),
                ),
              ),

              // Bottom branding
              Positioned(
                bottom: 40,
                left: 0,
                right: 0,
                child: FadeTransition(
                  opacity: _fade,
                  child: Text(
                    '© 2026 PerfumeGPT · FPTU ChillGuys',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white.withValues(alpha: 0.35),
                      fontSize: 11,
                      letterSpacing: 0.5,
                    ),
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

class _LoadingDots extends StatefulWidget {
  @override
  State<_LoadingDots> createState() => _LoadingDotsState();
}

class _LoadingDotsState extends State<_LoadingDots>
    with SingleTickerProviderStateMixin {
  late final AnimationController _ctrl;

  @override
  void initState() {
    super.initState();
    _ctrl = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 900),
    )..repeat();
  }

  @override
  void dispose() {
    _ctrl.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _ctrl,
      builder: (context, _) {
        return Row(
          mainAxisSize: MainAxisSize.min,
          children: List.generate(3, (i) {
            final delay = i / 3.0;
            final t = ((_ctrl.value - delay) % 1.0 + 1.0) % 1.0;
            final opacity = (t < 0.5 ? t * 2 : (1 - t) * 2).clamp(0.25, 1.0);
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 4),
              child: Opacity(
                opacity: opacity,
                child: Container(
                  width: 8,
                  height: 8,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                  ),
                ),
              ),
            );
          }),
        );
      },
    );
  }
}
