import 'package:perfumegpt_common/perfumegpt_common.dart' as common;
import 'package:flutter/material.dart';
import 'package:flutter_markdown_plus/flutter_markdown_plus.dart';
import 'package:flutter_chat_core/flutter_chat_core.dart';
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
  final TextEditingController _composerController = TextEditingController();
  final FocusNode _composerFocusNode = FocusNode();
  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    _composerController.dispose();
    _composerFocusNode.dispose();
    _scrollController.dispose();
    super.dispose();
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
          border: isSentByMe
              ? null
              : Border.all(
                  color: Theme.of(
                    context,
                  ).colorScheme.outlineVariant.withValues(alpha: 0.45),
                ),
        ),
        child: content,
      ),
    );
  }

  Widget _buildCustomMessage(
    BuildContext context,
    CustomMessage message, {
    required bool isSentByMe,
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
    TextMessage message, {
    required bool isSentByMe,
  }) {
    final displayText = isSentByMe
        ? message.text
        : _normalizeAiMessageForDisplay(message.text);

    final content = isSentByMe
        ? Text(
            displayText,
            style: TextStyle(
              color: Theme.of(context).colorScheme.onPrimary,
              height: 1.5,
            ),
          )
        : MarkdownBody(
            data: displayText,
            selectable: true,
            styleSheet: aiMessageStyleSheet(context),
          );

    return _buildMessageBubble(context, content, isSentByMe: isSentByMe);
  }

  void _scrollToBottom({bool animated = true}) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (!_scrollController.hasClients) return;
      final position = _scrollController.position.maxScrollExtent;
      if (animated) {
        _scrollController.animateTo(
          position,
          duration: const Duration(milliseconds: 250),
          curve: Curves.easeOutCubic,
        );
      } else {
        _scrollController.jumpTo(position);
      }
    });
  }

  bool _isMine(Message m, String currentUserId) => m.authorId == currentUserId;

  List<String> _extractSuggestions(List<Message> messages) {
    final last = messages.lastOrNull;
    final suggestions = <String>[];
    if (last is CustomMessage &&
        last.authorId == 'ai' &&
        last.metadata?['isLoading'] != true) {
      final sq = last.metadata?['suggestedQuestions'] as List<dynamic>?;
      if (sq != null) suggestions.addAll(sq.map((e) => e.toString()));
    }
    return suggestions;
  }

  @override
  Widget build(BuildContext context) {
    final messagesAsync = ref.watch(chatSessionProvider);
    final user = ref.watch(common.authProvider).value;
    final chatNotifier = ref.read(chatSessionProvider.notifier);
    final currentUserId = user?.id ?? chatNotifier.guestUserId ?? 'user';

    return Scaffold(
      appBar: AppBar(
        title: const Text('Tư vấn AI'),
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
          final lastMessage = messages.lastOrNull;
          final isLoading =
              lastMessage is CustomMessage &&
              lastMessage.metadata?['isLoading'] == true;
          final suggestions = _extractSuggestions(messages);
          _scrollToBottom(animated: messages.length > 1);

          return Column(
            children: [
              Expanded(
                child: messages.isEmpty
                    ? _buildWelcomeState()
                    : ListView.separated(
                        controller: _scrollController,
                        padding: const EdgeInsets.fromLTRB(12, 12, 12, 16),
                        itemCount: messages.length,
                        separatorBuilder: (_, _) => const SizedBox(height: 10),
                        itemBuilder: (context, index) {
                          final m = messages[index];
                          final isMine = _isMine(m, currentUserId);
                          return Align(
                            alignment: isMine
                                ? Alignment.centerRight
                                : Alignment.centerLeft,
                            child: m is CustomMessage
                                ? _buildCustomMessage(
                                    context,
                                    m,
                                    isSentByMe: isMine,
                                  )
                                : m is TextMessage
                                ? _buildTextMessage(
                                    context,
                                    m,
                                    isSentByMe: isMine,
                                  )
                                : const SizedBox.shrink(),
                          );
                        },
                      ),
              ),
              _ChatComposer(
                controller: _composerController,
                focusNode: _composerFocusNode,
                isSending: isLoading,
                suggestions: suggestions,
                onSuggestionTap: (value) {
                  ref.read(chatSessionProvider.notifier).sendMessage(value);
                  _scrollToBottom();
                },
                onSend: (value) {
                  ref.read(chatSessionProvider.notifier).sendMessage(value);
                  _scrollToBottom();
                },
              ),
            ],
          );
        },
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (err, stack) => Center(
          child: Padding(
            padding: const EdgeInsets.all(24),
            child: Text(
              'Không thể tải cuộc trò chuyện lúc này. Vui lòng thử lại.',
              style: TextStyle(color: Theme.of(context).colorScheme.error),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildWelcomeState() {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 72,
              height: 72,
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.primaryContainer,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Icon(
                Icons.auto_awesome_rounded,
                size: 36,
                color: Theme.of(context).colorScheme.primary,
              ),
            ),
            const SizedBox(height: 16),
            const Text(
              'PerfumeGPT sẵn sàng tư vấn',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 8),
            Text(
              'Hãy mô tả phong cách, dịp sử dụng, ngân sách... để nhận gợi ý nước hoa phù hợp.',
              style: TextStyle(
                color: Theme.of(
                  context,
                ).colorScheme.onSurfaceVariant.withValues(alpha: 0.9),
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }

  String _normalizeAiMessageForDisplay(String raw) {
    var text = raw.trim();
    if (text.isEmpty) return text;
    text = text.replaceAllMapped(
      RegExp(r'(?<!\n)(\d+\)\s)'),
      (m) => '\n${m.group(1)}',
    );
    text = text.replaceAllMapped(
      RegExp(r'(?<!\n)([-*]\s)'),
      (m) => '\n${m.group(1)}',
    );
    return text.replaceAll('\n\n\n', '\n\n').trim();
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

class _ChatComposer extends StatelessWidget {
  final TextEditingController controller;
  final FocusNode focusNode;
  final bool isSending;
  final List<String> suggestions;
  final ValueChanged<String> onSuggestionTap;
  final ValueChanged<String> onSend;

  const _ChatComposer({
    required this.controller,
    required this.focusNode,
    required this.isSending,
    required this.suggestions,
    required this.onSuggestionTap,
    required this.onSend,
  });

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;

    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).scaffoldBackgroundColor,
        border: Border(top: BorderSide(color: cs.outlineVariant.withValues(alpha: 0.5))),
      ),
      child: SafeArea(
      top: false,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (suggestions.isNotEmpty)
            SizedBox(
              height: 42,
              child: ListView.builder(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                scrollDirection: Axis.horizontal,
                itemCount: suggestions.length,
                itemBuilder: (context, index) {
                  final suggestion = suggestions[index];
                  return Padding(
                    padding: const EdgeInsets.only(right: 8),
                    child: ActionChip(
                      label: Text(suggestion, maxLines: 1),
                      onPressed: isSending ? null : () => onSuggestionTap(suggestion),
                    ),
                  );
                },
              ),
            ),
          Padding(
            padding: const EdgeInsets.fromLTRB(12, 8, 12, 12),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Expanded(
                  child: TextField(
                    controller: controller,
                    focusNode: focusNode,
                    enabled: !isSending,
                    keyboardType: TextInputType.multiline,
                    textInputAction: TextInputAction.newline,
                    minLines: 1,
                    maxLines: 5,
                    autocorrect: true,
                    enableSuggestions: true,
                    smartDashesType: SmartDashesType.enabled,
                    smartQuotesType: SmartQuotesType.enabled,
                    textCapitalization: TextCapitalization.sentences,
                    decoration: InputDecoration(
                      hintText: 'Nhập nội dung...',
                      filled: true,
                      fillColor: cs.surface,
                      contentPadding: const EdgeInsets.symmetric(
                        horizontal: 14,
                        vertical: 12,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(14),
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 8),
                ValueListenableBuilder<TextEditingValue>(
                  valueListenable: controller,
                  builder: (context, value, _) {
                    final canSend = !isSending && value.text.trim().isNotEmpty;
                    return IconButton.filled(
                      onPressed: canSend
                          ? () {
                              final text = controller.text.trim();
                              if (text.isEmpty) return;
                              controller.clear();
                              onSend(text);
                              focusNode.requestFocus();
                            }
                          : null,
                      icon: isSending
                          ? const SizedBox(
                              width: 18,
                              height: 18,
                              child: CircularProgressIndicator(strokeWidth: 2),
                            )
                          : const Icon(Icons.send_rounded),
                    );
                  },
                ),
              ],
            ),
          ),
        ],
      ),
      ),
    );
  }
}
