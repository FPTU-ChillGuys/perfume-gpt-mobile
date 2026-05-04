import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:perfumegpt_common/perfumegpt_common.dart';

import '../../../../core/widgets/authenticated_circle_avatar.dart';
import '../providers/profile_providers.dart';

/// Avatar resolution aligned with web `UserProfileSidebar`:
/// 1) [avatarUrlOverride] (page prop)
/// 2) [profileControllerProvider] (includes GET /api/users/me via `getMe`)
/// 3) [authProvider] user cache
/// 4) [userMeAvatarUrlProvider] — lightweight GET /api/users/me when auth has no URL yet
class ResolvedUserAvatar extends ConsumerWidget {
  const ResolvedUserAvatar({
    super.key,
    this.avatarUrlOverride,
    this.displayName,
    this.radius = 18,
    this.onTap,
    this.forDarkAppBar = false,
    this.showLoadingWhenFetching = true,
  });

  final String? avatarUrlOverride;
  final String? displayName;
  final double radius;
  final VoidCallback? onTap;

  /// When true (e.g. gradient [SliverAppBar]), use light-on-dark styling.
  final bool forDarkAppBar;

  final bool showLoadingWhenFetching;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final apiBase = ref.watch(apiClientProvider).dio.options.baseUrl;
    final authUser = ref.watch(authProvider).asData?.value;
    final profileAsync = ref.watch(profileControllerProvider);
    final meFetch = ref.watch(userMeAvatarUrlProvider);

    String? overrideResolved;
    final rawOverride = avatarUrlOverride?.trim();
    if (rawOverride != null && rawOverride.isNotEmpty) {
      overrideResolved = MediaUrlResolver.resolveOptional(
        rawOverride,
        apiBase,
      );
    }

    final fromProfile = profileAsync.whenOrNull(
      data: (p) {
        final u = p.avatarUrl;
        if (u != null && u.isNotEmpty) return u;
        return null;
      },
    );

    final fromAuth = authUser?.avatarUrl;
    final fromAuthNonEmpty =
        fromAuth != null && fromAuth.isNotEmpty ? fromAuth : null;

    final picked = overrideResolved ??
        fromProfile ??
        fromAuthNonEmpty ??
        meFetch.asData?.value;

    final initialLetter = () {
      final n = displayName ??
          profileAsync.asData?.value.fullName ??
          authUser?.name;
      if (n != null && n.trim().isNotEmpty) {
        return n.trim()[0].toUpperCase();
      }
      return 'U';
    }();

    final hasImage = picked != null && picked.isNotEmpty;

    final loadingExtra = !hasImage &&
        authUser != null &&
        showLoadingWhenFetching &&
        meFetch.isLoading;

    final Color bg = forDarkAppBar
        ? Colors.white24
        : Theme.of(context).colorScheme.surfaceContainerHighest;
    final Color fg = forDarkAppBar
        ? Colors.white
        : Theme.of(context).colorScheme.primary;
    final Color progressColor =
        forDarkAppBar ? Colors.white70 : Theme.of(context).colorScheme.primary;

    final placeholder = Text(
      initialLetter,
      style: TextStyle(
        fontSize: radius * 1.05,
        fontWeight: FontWeight.bold,
        color: fg,
      ),
    );

    final Widget circle;
    if (loadingExtra) {
      circle = CircleAvatar(
        radius: radius,
        backgroundColor: bg,
        child: SizedBox(
          width: radius * 1.2,
          height: radius * 1.2,
          child: Padding(
            padding: const EdgeInsets.all(5),
            child: CircularProgressIndicator(
              strokeWidth: 2,
              color: progressColor,
            ),
          ),
        ),
      );
    } else if (hasImage) {
      circle = AuthenticatedCircleAvatar(
        imageUrl: picked,
        radius: radius,
        backgroundColor: bg,
        loadingIndicatorSize: radius,
        placeholder: placeholder,
      );
    } else {
      circle = CircleAvatar(
        radius: radius,
        backgroundColor: bg,
        child: placeholder,
      );
    }

    if (onTap != null) {
      return Material(
        color: Colors.transparent,
        child: InkWell(
          customBorder: const CircleBorder(),
          onTap: onTap,
          child: circle,
        ),
      );
    }
    return circle;
  }
}

/// Trailing AppBar chip: tap opens `/profile`. Hidden when logged out.
class ProfileAvatarAppBarAction extends ConsumerWidget {
  const ProfileAvatarAppBarAction({
    super.key,
    this.avatarUrlOverride,
    this.forDarkAppBar = false,
  });

  final String? avatarUrlOverride;
  final bool forDarkAppBar;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final auth = ref.watch(authProvider);
    return auth.maybeWhen(
      data: (user) {
        if (user == null) return const SizedBox.shrink();
        return Padding(
          padding: const EdgeInsetsDirectional.only(end: 4),
          child: ResolvedUserAvatar(
            avatarUrlOverride: avatarUrlOverride,
            displayName: user.name,
            radius: 18,
            forDarkAppBar: forDarkAppBar,
            onTap: () => context.push('/profile'),
          ),
        );
      },
      orElse: () => const SizedBox.shrink(),
    );
  }
}
