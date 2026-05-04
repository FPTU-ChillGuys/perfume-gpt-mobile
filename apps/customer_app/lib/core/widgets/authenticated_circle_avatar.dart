import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../providers/authenticated_image_provider.dart';
import '../utils/image_url_helper.dart';

/// [CircleAvatar] that loads a remote image with **Bearer** auth (see [authenticatedImageBytesProvider]).
/// Use when the backend serves profile/media only to authenticated clients.
class AuthenticatedCircleAvatar extends ConsumerWidget {
  const AuthenticatedCircleAvatar({
    super.key,
    required this.imageUrl,
    required this.radius,
    this.backgroundColor,
    required this.placeholder,
    this.loadingIndicatorSize = 22,
  });

  final String? imageUrl;
  final double radius;
  final Color? backgroundColor;
  final Widget placeholder;
  final double loadingIndicatorSize;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final raw = imageUrl?.trim();
    if (raw == null || raw.isEmpty) {
      return CircleAvatar(
        radius: radius,
        backgroundColor: backgroundColor,
        child: placeholder,
      );
    }

    final resolved = ImageUrlHelper.resolve(raw);
    final async = ref.watch(authenticatedImageBytesProvider(resolved));

    return async.when(
      skipLoadingOnReload: true,
      skipLoadingOnRefresh: false,
      loading: () => CircleAvatar(
        radius: radius,
        backgroundColor: backgroundColor,
        child: SizedBox(
          width: loadingIndicatorSize,
          height: loadingIndicatorSize,
          child: CircularProgressIndicator(
            strokeWidth: 2,
            color: Theme.of(context).colorScheme.primary,
          ),
        ),
      ),
      error: (_, _) => CircleAvatar(
        radius: radius,
        backgroundColor: backgroundColor,
        child: placeholder,
      ),
      data: (bytes) {
        if (bytes == null || bytes.isEmpty) {
          return CircleAvatar(
            radius: radius,
            backgroundColor: backgroundColor,
            child: placeholder,
          );
        }
        return CircleAvatar(
          radius: radius,
          backgroundColor: backgroundColor,
          backgroundImage: MemoryImage(bytes),
        );
      },
    );
  }
}
