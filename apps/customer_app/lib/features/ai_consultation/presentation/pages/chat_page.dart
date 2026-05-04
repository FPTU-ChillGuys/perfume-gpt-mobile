import 'package:perfumegpt_common/perfumegpt_common.dart' as common;
import 'package:flutter/material.dart';
import 'package:flutter_markdown_plus/flutter_markdown_plus.dart';
import 'package:flutter_chat_core/flutter_chat_core.dart';
import 'package:flutter_chat_ui/flutter_chat_ui.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:perfumegpt_ai_api_client/perfumegpt_ai_api_client.dart';
import 'package:go_router/go_router.dart';
import '../../../../core/utils/price_formatter.dart';
import '../providers/chat_provider.dart';
import '../widgets/ai_message_style.dart';

class ChatPage extends ConsumerStatefulWidget {
  const ChatPage({super.key});

  @override
  ConsumerState<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends ConsumerState<ChatPage> {
  late final InMemoryChatController _chatController;
  List<Message> _previousMessages = [];

  @override
  void initState() {
    super.initState();
    _chatController = InMemoryChatController();
  }

  @override
  void dispose() {
    _chatController.dispose();
    super.dispose();
  }

  Future<User?> _resolveUser(String userId) async {
    if (userId == 'ai') {
      return const User(id: 'ai', name: 'PerfumeGPT');
    }
    final user = ref.read(common.authProvider).value;
    return User(id: userId, name: user?.name ?? 'User');
  }

  BorderRadius _bubbleRadius(bool isSentByMe) => isSentByMe
      ? const BorderRadius.only(
          topLeft: Radius.circular(20),
          bottomLeft: Radius.circular(20),
          bottomRight: Radius.circular(4),
          topRight: Radius.circular(20),
        )
      : const BorderRadius.only(
          topLeft: Radius.circular(4),
          bottomLeft: Radius.circular(20),
          bottomRight: Radius.circular(20),
          topRight: Radius.circular(20),
        );

  Widget _buildMessageBubble(
    BuildContext context,
    Widget content, {
    required bool isSentByMe,
  }) {
    return ConstrainedBox(
      constraints: BoxConstraints(
        maxWidth: MediaQuery.of(context).size.width * 0.75,
      ),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        decoration: BoxDecoration(
          color: isSentByMe
              ? Theme.of(context).colorScheme.primary
              : Theme.of(context).colorScheme.surfaceContainerHighest,
          borderRadius: _bubbleRadius(isSentByMe),
        ),
        child: content,
      ),
    );
  }

  Widget _buildCustomMessage(
    BuildContext context,
    CustomMessage message,
    int index, {
    required bool isSentByMe,
    MessageGroupStatus? groupStatus,
  }) {
    final metadata = message.metadata;
    if (metadata == null) return const SizedBox.shrink();

    if (metadata['isLoading'] == true) {
      return _buildMessageBubble(
        context,
        const SizedBox(
          width: 40,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _TypingDot(delay: 0),
              _TypingDot(delay: 0.2),
              _TypingDot(delay: 0.4),
            ],
          ),
        ),
        isSentByMe: false,
      );
    }

    final text = metadata['text'] as String?;
    final productsJson = metadata['products'] as List<dynamic>?;
    final products =
        productsJson?.map((p) => ProductCardOutputItemDto.fromJson(p)).toList();

    return Column(
      crossAxisAlignment:
          isSentByMe ? CrossAxisAlignment.end : CrossAxisAlignment.start,
      children: [
        if (text != null)
          _buildMessageBubble(
            context,
            MarkdownBody(
              data: text,
              selectable: true,
              styleSheet: aiMessageStyleSheet(context),
            ),
            isSentByMe: isSentByMe,
          ),
        if (products != null && products.isNotEmpty) ...[
          const SizedBox(height: 12),
          SizedBox(
            height: 220,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: products.length,
              itemBuilder: (context, index) {
                final product = products[index];
                return _ChatProductCard(product: product);
              },
            ),
          ),
        ],
      ],
    );
  }

  Widget _buildTextMessage(
    BuildContext context,
    TextMessage message,
    int index, {
    required bool isSentByMe,
    MessageGroupStatus? groupStatus,
  }) {
    final content = isSentByMe
        ? Text(
            message.text,
            style: TextStyle(
              color: Theme.of(context).colorScheme.onPrimary,
              height: 1.5,
            ),
          )
        : MarkdownBody(
            data: message.text,
            selectable: true,
            styleSheet: aiMessageStyleSheet(context),
          );

    return _buildMessageBubble(context, content, isSentByMe: isSentByMe);
  }

  @override
  Widget build(BuildContext context) {
    final messagesAsync = ref.watch(chatSessionProvider);
    final user = ref.watch(common.authProvider).value;
    final chatNotifier = ref.read(chatSessionProvider.notifier);
    final currentUserId = user?.id ?? chatNotifier.guestUserId ?? 'user';

    return Scaffold(
      appBar: AppBar(
        title: const Text('AI Consultation'),
        actions: [
          IconButton(
            icon: const Icon(Icons.add_comment_outlined),
            tooltip: 'Chat mới',
            onPressed: () {
              ref.read(chatSessionProvider.notifier).newConversation();
            },
          ),
          IconButton(
            icon: const Icon(Icons.history),
            tooltip: 'Lịch sử',
            onPressed: () {
              context.push('/chat/history');
            },
          ),
        ],
      ),
      body: messagesAsync.when(
        data: (messages) {
          if (_previousMessages.isEmpty) {
            _chatController.setMessages(messages, animated: false);
          } else {
            final prev = _previousMessages;
            if (messages.length > prev.length) {
              for (var i = prev.length; i < messages.length; i++) {
                _chatController.insertMessage(messages[i]);
              }
            }
            if (messages.length < prev.length) {
              final removedMessages = prev
                  .where((m) => !messages.any((n) => n.id == m.id));
              for (final removed in removedMessages) {
                _chatController.removeMessage(removed);
              }
            }
            for (var i = 0; i < messages.length && i < prev.length; i++) {
              if (messages[i].id != prev[i].id || messages[i] != prev[i]) {
                _chatController.updateMessage(prev[i], messages[i]);
              }
            }
          }
          _previousMessages = List.from(messages);

          final lastMessage = messages.lastOrNull;
          final isLoading =
              lastMessage is CustomMessage && lastMessage.metadata?['isLoading'] == true;

          final List<String> suggestions = [];
          if (lastMessage is CustomMessage &&
              lastMessage.authorId == 'ai' &&
              lastMessage.metadata?['isLoading'] != true) {
            final metadata = lastMessage.metadata;
            if (metadata != null) {
              final sq = metadata['suggestedQuestions'] as List<dynamic>?;
              if (sq != null) {
                suggestions.addAll(sq.cast<String>());
              }
            }
          }

          return Chat(
            chatController: _chatController,
            currentUserId: currentUserId,
            resolveUser: _resolveUser,
            onMessageSend: (String text) {
              ref.read(chatSessionProvider.notifier).sendMessage(text);
            },
            builders: Builders(
              customMessageBuilder: _buildCustomMessage,
              textMessageBuilder: _buildTextMessage,
              composerBuilder: (context) {
                return Composer(
                  sendButtonDisabled: isLoading,
                  topWidget: suggestions.isNotEmpty
                      ? Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 16,
                            vertical: 8,
                          ),
                          child: SizedBox(
                            height: 40,
                            child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: suggestions.length,
                              itemBuilder: (context, index) {
                                final suggestion = suggestions[index];
                                return Padding(
                                  padding: const EdgeInsets.only(right: 8),
                                  child: ActionChip(
                                    label: Text(suggestion),
                                    onPressed: isLoading ? null : () {
                                      ref
                                          .read(chatSessionProvider.notifier)
                                          .sendMessage(suggestion);
                                    },
                                  ),
                                );
                              },
                            ),
                          ),
                        )
                      : null,
                );
              },
            ),
            theme: ChatTheme.light(
              fontFamily:
                  Theme.of(context).textTheme.bodyMedium?.fontFamily,
            ).copyWith(
              colors: ChatColors.light().copyWith(
                primary: Theme.of(context).colorScheme.primary,
                onPrimary: Theme.of(context).colorScheme.onPrimary,
                surface: Theme.of(context).colorScheme.surface,
                onSurface: Theme.of(context).colorScheme.onSurface,
                surfaceContainer:
                    Theme.of(context).colorScheme.surfaceContainerHighest,
              ),
            ),
          );
        },
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (err, stack) => Center(child: Text('Error: $err')),
      ),
    );
  }
}

class _TypingDot extends StatefulWidget {
  final double delay;

  const _TypingDot({required this.delay});

  @override
  State<_TypingDot> createState() => _TypingDotState();
}

class _TypingDotState extends State<_TypingDot>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 600),
    );

    _animation = Tween<double>(begin: 0, end: 1).animate(
      CurvedAnimation(parent: _controller, curve: Curves.easeInOut),
    );

    Future.delayed(Duration(milliseconds: (widget.delay * 1000).toInt()), () {
      if (mounted) {
        _controller.repeat(reverse: true);
      }
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _animation,
      builder: (context, child) {
        return Container(
          width: 6,
          height: 6,
          decoration: BoxDecoration(
            color: Theme.of(context)
                .colorScheme
                .onSurfaceVariant
                .withValues(alpha: 0.3 + (0.7 * _animation.value)),
            shape: BoxShape.circle,
          ),
        );
      },
    );
  }
}

class _ChatProductCard extends StatelessWidget {
  final ProductCardOutputItemDto product;

  const _ChatProductCard({required this.product});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 140,
      margin: const EdgeInsets.only(right: 12),
      child: Card(
        clipBehavior: Clip.antiAlias,
        elevation: 2,
        child: InkWell(
          onTap: () {
            context.push('/product/${product.id}');
          },
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child:
                    product.primaryImage != null
                        ? Image.network(
                          product.primaryImage as String,
                          fit: BoxFit.cover,
                          width: double.infinity,
                          errorBuilder:
                              (context, error, stackTrace) => const Center(
                                child: Icon(Icons.image_not_supported),
                              ),
                        )
                        : const Center(child: Icon(Icons.image_not_supported)),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      product.name,
                      style: const TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    Text(
                      product.brandName,
                      style: const TextStyle(fontSize: 10, color: Colors.grey),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    const SizedBox(height: 4),
                    Text(
                      _getPriceRange(),
                      style: TextStyle(
                        fontSize: 11,
                        color: Theme.of(context).colorScheme.primary,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  String _getPriceRange() {
    if (product.variants.isEmpty) return 'N/A';
    final prices =
        product.variants.map((v) => v.basePrice).whereType<num>().toList();
    if (prices.isEmpty) return 'N/A';
    final minPrice =
        prices.reduce((a, b) => a < b ? a : b);
    final maxPrice =
        prices.reduce((a, b) => a > b ? a : b);

    if (minPrice == maxPrice) {
      return PriceFormatter.format(minPrice.toDouble());
    }
    return PriceFormatter.formatRange(minPrice.toDouble(), maxPrice.toDouble());
  }
}
