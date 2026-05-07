import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';
import 'package:perfumegpt_api_client/perfumegpt_api_client.dart';

import '../../../../core/theme/app_colors.dart';
import '../providers/notification_providers.dart';

final _dateFormat = DateFormat('HH:mm dd/MM/yyyy');

DateTime _toUtc7(DateTime dt) {
  final utc = dt.isUtc ? dt : dt.toUtc();
  return utc.add(const Duration(hours: 7));
}

class NotificationListPage extends ConsumerWidget {
  const NotificationListPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final notificationsAsync = ref.watch(customerNotificationsProvider);
    final unreadCount = ref.watch(unreadNotificationsCountProvider);

    return Scaffold(
      backgroundColor: AppColors.surface,
      appBar: AppBar(
        title: const Text(
          'Thông báo',
          style: TextStyle(fontWeight: FontWeight.w700, color: Colors.white),
        ),
        backgroundColor: AppColors.primaryDark,
        iconTheme: const IconThemeData(color: Colors.white),
        actions: [
          if (unreadCount > 0)
            TextButton(
              onPressed: () => _markAllRead(ref),
              child: const Text(
                'Đọc tất cả',
                style: TextStyle(color: Colors.white),
              ),
            ),
        ],
      ),
      body: RefreshIndicator(
        color: AppColors.primary,
        onRefresh: () => ref.refresh(customerNotificationsProvider.future),
        child: notificationsAsync.when(
          loading: () => const Center(
            child: CircularProgressIndicator(color: AppColors.primary),
          ),
          error: (error, _) => ListView(
            padding: const EdgeInsets.all(24),
            children: [
              const SizedBox(height: 80),
              const Icon(
                Icons.notifications_off_outlined,
                size: 52,
                color: AppColors.textSecondary,
              ),
              const SizedBox(height: 12),
              Text(
                'Không tải được thông báo.\n$error',
                textAlign: TextAlign.center,
                style: const TextStyle(color: AppColors.textSecondary),
              ),
              const SizedBox(height: 16),
              FilledButton(
                onPressed: () => ref.invalidate(customerNotificationsProvider),
                child: const Text('Thử lại'),
              ),
            ],
          ),
          data: (notifications) {
            if (notifications.isEmpty) {
              return ListView(
                padding: const EdgeInsets.all(24),
                children: const [
                  SizedBox(height: 100),
                  Icon(
                    Icons.notifications_none_rounded,
                    size: 56,
                    color: AppColors.textSecondary,
                  ),
                  SizedBox(height: 12),
                  Text(
                    'Chưa có thông báo nào cho tài khoản này.',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: AppColors.textSecondary),
                  ),
                ],
              );
            }

            return ListView.separated(
              padding: const EdgeInsets.fromLTRB(16, 16, 16, 24),
              itemCount: notifications.length,
              separatorBuilder: (_, _) => const SizedBox(height: 10),
              itemBuilder: (context, index) {
                final item = notifications[index];
                return _NotificationTile(
                  item: item,
                  onTap: () => _handleNotificationTap(context, ref, item),
                );
              },
            );
          },
        ),
      ),
    );
  }

  Future<void> _markAllRead(WidgetRef ref) async {
    await ref.read(notificationsApiProvider).apiNotificationsReadAllPatch();
    ref.invalidate(customerNotificationsProvider);
  }

  Future<void> _handleNotificationTap(
    BuildContext context,
    WidgetRef ref,
    NotificationListItemResponse item,
  ) async {
    final id = item.id;
    if (id != null && id.isNotEmpty && item.isRead != true) {
      await ref.read(notificationsApiProvider).apiNotificationsIdReadPatch(id: id);
      ref.invalidate(customerNotificationsProvider);
    }

    final referenceId = item.referenceId;
    if (!context.mounted || referenceId == null || referenceId.isEmpty) return;

    switch (item.referenceType) {
      case NotifiReferecneType.order:
        context.push('/orders/$referenceId');
        break;
      case NotifiReferecneType.orderReturnRequest:
        context.push('/return-requests/$referenceId');
        break;
      case NotifiReferecneType.orderCancelRequest:
        context.push('/cancel-requests/$referenceId');
        break;
      default:
        break;
    }
  }
}

class _NotificationTile extends StatelessWidget {
  final NotificationListItemResponse item;
  final VoidCallback onTap;

  const _NotificationTile({required this.item, required this.onTap});

  @override
  Widget build(BuildContext context) {
    final isUnread = item.isRead != true;
    final createdAt = item.createdAt;

    return Material(
      color: isUnread ? AppColors.primaryLight : Colors.white,
      borderRadius: BorderRadius.circular(14),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(14),
        child: Container(
          padding: const EdgeInsets.all(14),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(14),
            border: Border.all(
              color: isUnread ? AppColors.primaryBorder : AppColors.border,
            ),
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 38,
                height: 38,
                decoration: BoxDecoration(
                  color: _typeColor(item.type).withValues(alpha: 0.12),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Icon(
                  _typeIcon(item.type),
                  color: _typeColor(item.type),
                  size: 20,
                ),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: Text(
                            item.title?.trim().isNotEmpty == true
                                ? item.title!.trim()
                                : 'Thông báo',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: isUnread
                                  ? FontWeight.w700
                                  : FontWeight.w600,
                              color: AppColors.textPrimary,
                            ),
                          ),
                        ),
                        if (isUnread)
                          Container(
                            width: 8,
                            height: 8,
                            decoration: const BoxDecoration(
                              color: AppColors.primary,
                              shape: BoxShape.circle,
                            ),
                          ),
                      ],
                    ),
                    const SizedBox(height: 4),
                    Text(
                      item.message?.trim().isNotEmpty == true
                          ? item.message!.trim()
                          : 'Không có nội dung',
                      style: const TextStyle(
                        fontSize: 13,
                        height: 1.35,
                        color: AppColors.textSecondary,
                      ),
                    ),
                    if (createdAt != null) ...[
                      const SizedBox(height: 8),
                      Text(
                        _dateFormat.format(_toUtc7(createdAt)),
                        style: const TextStyle(
                          fontSize: 11.5,
                          color: AppColors.textSecondary,
                        ),
                      ),
                    ],
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  IconData _typeIcon(NotificationType? type) {
    return switch (type) {
      NotificationType.success => Icons.check_circle_outline_rounded,
      NotificationType.warning => Icons.warning_amber_rounded,
      NotificationType.error => Icons.error_outline_rounded,
      NotificationType.promotional => Icons.local_offer_outlined,
      _ => Icons.notifications_none_rounded,
    };
  }

  Color _typeColor(NotificationType? type) {
    return switch (type) {
      NotificationType.success => Colors.green,
      NotificationType.warning => Colors.orange,
      NotificationType.error => Colors.red,
      NotificationType.promotional => Colors.purple,
      _ => AppColors.primary,
    };
  }
}
