import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:perfumegpt_common/perfumegpt_common.dart' as common;
import '../../../../core/db/database_provider.dart';
import '../providers/chat_provider.dart';

class _ConvDisplay {
  final String id;
  final String userId;
  final String preview;
  final int messageCount;
  final DateTime updatedAt;

  _ConvDisplay({
    required this.id,
    required this.userId,
    required this.preview,
    required this.messageCount,
    required this.updatedAt,
  });
}

class ChatHistoryPage extends ConsumerStatefulWidget {
  const ChatHistoryPage({super.key});

  @override
  ConsumerState<ChatHistoryPage> createState() => _ChatHistoryPageState();
}

class _ChatHistoryPageState extends ConsumerState<ChatHistoryPage> {
  List<_ConvDisplay> _conversations = [];
  bool _isLoading = true;

  @override
  void initState() {
    super.initState();
    _loadConversations();
  }

  Future<void> _loadConversations() async {
    try {
      final dao = ref.read(conversationDaoProvider);
      final localConvs = await dao.getAllConversations();

      final currentUser = ref.read(common.authProvider).value;
      final currentUserId = currentUser?.id;
      final userConvs = localConvs
          .where((c) => c.userId == currentUserId)
          .toList();

      if (mounted && userConvs.isNotEmpty) {
        setState(() {
          _conversations = userConvs
              .map(
                (lc) => _ConvDisplay(
                  id: lc.id,
                  userId: lc.userId,
                  preview: lc.lastMessagePreview.isEmpty
                      ? 'Cuộc trò chuyện trống'
                      : lc.lastMessagePreview,
                  messageCount: lc.messageCount,
                  updatedAt: DateTime.fromMillisecondsSinceEpoch(lc.updatedAt),
                ),
              )
              .toList();
          _isLoading = false;
        });
      } else if (mounted) {
        setState(() {
          _isLoading = false;
        });
      }
    } catch (e) {
      if (mounted) {
        setState(() {
          _isLoading = false;
        });
      }
    }
  }

  String _formatTime(DateTime date) {
    final now = DateTime.now();
    final diff = now.difference(date);

    if (diff.inMinutes < 1) return 'Vừa xong';
    if (diff.inMinutes < 60) return '${diff.inMinutes} phút trước';
    if (diff.inHours < 24) return '${diff.inHours} giờ trước';
    if (diff.inDays == 1) return 'Hôm qua';
    return '${diff.inDays} ngày trước';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Lịch sử chat')),
      body: Column(
        children: [
          Expanded(
            child: _isLoading
                ? const Center(child: CircularProgressIndicator())
                : _conversations.isEmpty
                ? const Center(child: Text('Chưa có cuộc trò chuyện nào'))
                : ListView.builder(
                    itemCount: _conversations.length,
                    itemBuilder: (context, index) {
                      final conv = _conversations[index];
                      final previewTrimmed = conv.preview.length > 60
                          ? '${conv.preview.substring(0, 60)}...'
                          : conv.preview;
                      final messageCount = conv.messageCount;
                      final timeStr = _formatTime(conv.updatedAt);

                      return ListTile(
                        title: Text(
                          previewTrimmed,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                        subtitle: Text('$messageCount tin nhắn • $timeStr'),
                        trailing: const Icon(Icons.chevron_right),
                        onTap: () async {
                          try {
                            await ref
                                .read(chatSessionProvider.notifier)
                                .loadConversation(conv.id);
                            if (context.mounted) {
                              context.pop();
                            }
                          } catch (e) {
                            if (context.mounted) {
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  content: Text(
                                    'Không thể tải cuộc trò chuyện: $e',
                                  ),
                                ),
                              );
                            }
                          }
                        },
                      );
                    },
                  ),
          ),
        ],
      ),
    );
  }
}
