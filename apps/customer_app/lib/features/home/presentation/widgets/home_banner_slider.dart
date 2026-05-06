import 'dart:async';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../../core/theme/app_colors.dart';
import '../../../../domain/entities/banner.dart';

class HomeBannerSlider extends StatefulWidget {
  final List<HomeBanner> banners;

  const HomeBannerSlider({super.key, required this.banners});

  @override
  State<HomeBannerSlider> createState() => _HomeBannerSliderState();
}

class _HomeBannerSliderState extends State<HomeBannerSlider> {
  late final PageController _pageController;
  int _currentPage = 0;
  Timer? _autoScrollTimer;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(viewportFraction: 1.0);
    if (widget.banners.length > 1) {
      _startAutoScroll();
    }
  }

  @override
  void dispose() {
    _autoScrollTimer?.cancel();
    _pageController.dispose();
    super.dispose();
  }

  void _startAutoScroll() {
    _autoScrollTimer = Timer.periodic(const Duration(seconds: 5), (_) {
      if (!mounted) return;
      final nextPage = (_currentPage + 1) % widget.banners.length;
      _pageController.animateToPage(
        nextPage,
        duration: const Duration(milliseconds: 400),
        curve: Curves.easeInOut,
      );
    });
  }

  void _onBannerTap(HomeBanner banner) {
    if (banner.linkTarget == null || banner.linkTarget!.isEmpty) return;

    switch (banner.linkType) {
      case 'Product':
        context.push('/product/${banner.linkTarget}');
        break;
      case 'Campaign':
        context.push(
          '/store?campaignId=${Uri.encodeComponent(banner.linkTarget!)}&sourceLabel=${Uri.encodeComponent(banner.title)}',
        );
        break;
      case 'Brand':
        context.push('/store?brandId=${banner.linkTarget}');
        break;
      default:
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    if (widget.banners.isEmpty) return const SizedBox.shrink();

    return LayoutBuilder(
      builder: (context, constraints) {
        final screenWidth = constraints.maxWidth;
        final isWide = screenWidth >= 600;
        // Target mobile banner ratio: 900 x 520
        const bannerRatio = 900 / 520;
        final bannerHeight = (screenWidth / bannerRatio).clamp(160.0, 320.0);
        final titleFontSize = isWide ? 18.0 : 14.0;
        final gradientHeight = isWide ? 80.0 : 60.0;
        final titlePadding = isWide ? 18.0 : 14.0;
        final dotSize = isWide ? 8.0 : 6.0;
        final activeDotWidth = isWide ? 24.0 : 20.0;

        return Column(
          children: [
            SizedBox(
              height: bannerHeight,
              child: PageView.builder(
                controller: _pageController,
                onPageChanged: (index) {
                  setState(() => _currentPage = index);
                },
                itemCount: widget.banners.length,
                itemBuilder: (context, index) {
                  final banner = widget.banners[index];
                  // Prefer mobile image; fallback to desktop image when broken.
                  final primaryImageUrl =
                      banner.mobileImageUrl ?? banner.imageUrl;
                  final fallbackImageUrl =
                      banner.mobileImageUrl != null &&
                          banner.mobileImageUrl!.isNotEmpty
                      ? banner.imageUrl
                      : null;

                  return GestureDetector(
                    onTap: () => _onBannerTap(banner),
                    child: Stack(
                      fit: StackFit.expand,
                      children: [
                        _BannerImage(
                          primaryUrl: primaryImageUrl,
                          fallbackUrl: fallbackImageUrl,
                        ),
                        // Bottom gradient overlay
                        Positioned(
                          left: 0,
                          right: 0,
                          bottom: 0,
                          height: gradientHeight,
                          child: DecoratedBox(
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: [
                                  Colors.transparent,
                                  Colors.black.withValues(alpha: 0.5),
                                ],
                              ),
                            ),
                          ),
                        ),
                        // Banner title
                        Positioned(
                          left: titlePadding,
                          bottom: 12,
                          right: titlePadding,
                          child: Text(
                            banner.title,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: titleFontSize,
                              fontWeight: FontWeight.w600,
                              shadows: const [
                                Shadow(blurRadius: 8, color: Colors.black45),
                              ],
                            ),
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
            if (widget.banners.length > 1) ...[
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(widget.banners.length, (index) {
                  final isActive = index == _currentPage;
                  return AnimatedContainer(
                    duration: const Duration(milliseconds: 250),
                    margin: const EdgeInsets.symmetric(horizontal: 3),
                    width: isActive ? activeDotWidth : dotSize,
                    height: dotSize,
                    decoration: BoxDecoration(
                      color: isActive
                          ? AppColors.primary
                          : AppColors.primary.withValues(alpha: 0.25),
                      borderRadius: BorderRadius.circular(dotSize / 2),
                    ),
                  );
                }),
              ),
            ],
          ],
        );
      },
    );
  }
}

class _BannerImage extends StatefulWidget {
  final String primaryUrl;
  final String? fallbackUrl;

  const _BannerImage({required this.primaryUrl, this.fallbackUrl});

  @override
  State<_BannerImage> createState() => _BannerImageState();
}

class _BannerImageState extends State<_BannerImage> {
  late String _currentUrl;
  bool _didFallback = false;

  @override
  void initState() {
    super.initState();
    _currentUrl = widget.primaryUrl;
  }

  @override
  void didUpdateWidget(covariant _BannerImage oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.primaryUrl != widget.primaryUrl) {
      _currentUrl = widget.primaryUrl;
      _didFallback = false;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Image.network(
      _currentUrl,
      fit: BoxFit.cover,
      gaplessPlayback: true,
      loadingBuilder: (_, child, progress) {
        if (progress == null) return child;
        return Container(
          color: AppColors.surface,
          child: const Center(
            child: SizedBox(
              width: 24,
              height: 24,
              child: CircularProgressIndicator(strokeWidth: 2),
            ),
          ),
        );
      },
      errorBuilder: (_, error, stackTrace) {
        final canFallback =
            !_didFallback &&
            widget.fallbackUrl != null &&
            widget.fallbackUrl!.isNotEmpty &&
            widget.fallbackUrl != _currentUrl;
        if (canFallback) {
          WidgetsBinding.instance.addPostFrameCallback((_) {
            if (!mounted) return;
            setState(() {
              _didFallback = true;
              _currentUrl = widget.fallbackUrl!;
            });
          });
          return Container(color: AppColors.surface);
        }
        return Container(
          color: AppColors.primaryLight,
          child: const Center(
            child: Icon(
              Icons.image_not_supported_outlined,
              color: AppColors.primary,
              size: 32,
            ),
          ),
        );
      },
    );
  }
}
