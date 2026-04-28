import 'package:perfumegpt_common/perfumegpt_common.dart' as common;
import 'package:flutter/material.dart';
import 'package:flutter_chat_core/flutter_chat_core.dart';
import 'package:flutter_chat_ui/flutter_chat_ui.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:perfumegpt_ai_api_client/perfumegpt_ai_api_client.dart';
import 'package:go_router/go_router.dart';
import '../../../../core/utils/price_formatter.dart';
import '../providers/chat_provider.dart';

class ChatPage extends ConsumerStatefulWidget {
  const ChatPage({super.key});

  @override
  ConsumerState<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends ConsumerState<ChatPage> {
  late final InMemoryChatController _chatController;

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

  Widget _buildCustomMessage(
    BuildContext context,
    CustomMessage message,
    int index, {
    required bool isSentByMe,
    MessageGroupStatus? groupStatus,
  }) {
    final metadata = message.metadata;
    if (metadata == null) return const SizedBox.shrink();

    final text = metadata['text'] as String?;
    final productsJson = metadata['products'] as List<dynamic>?;
    final products =
        productsJson?.map((p) => ProductCardOutputItemDto.fromJson(p)).toList();

    return Column(
      crossAxisAlignment:
          isSentByMe ? CrossAxisAlignment.end : CrossAxisAlignment.start,
      children: [
        if (text != null)
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
            decoration: BoxDecoration(
              color:
                  isSentByMe
                      ? Theme.of(context).colorScheme.primary
                      : Theme.of(context).colorScheme.surfaceContainerHighest,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Text(
              text,
              style: TextStyle(
                color:
                    isSentByMe
                        ? Theme.of(context).colorScheme.onPrimary
                        : Theme.of(context).colorScheme.onSurfaceVariant,
              ),
            ),
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

  @override
  Widget build(BuildContext context) {
    final messagesAsync = ref.watch(chatSessionProvider);
    final user = ref.watch(common.authProvider).value;

    return Scaffold(
      appBar: AppBar(title: const Text('AI Consultation')),
      body: messagesAsync.when(
        data: (messages) {
          _chatController.setMessages(messages);

          // Extract suggested questions from the last AI message
          final lastMessage = messages.lastOrNull;
          final List<String> suggestions = [];
          if (lastMessage is CustomMessage && lastMessage.authorId == 'ai') {
            final metadata = lastMessage.metadata;
            if (metadata != null) {
              final sq = metadata['suggestedQuestions'] as List<dynamic>?;
              if (sq != null) {
                suggestions.addAll(sq.cast<String>());
              }
            }
          }

          return Column(
            children: [
              Expanded(
                child: Chat(
                  chatController: _chatController,
                  currentUserId: user?.id ?? 'user',
                  resolveUser: _resolveUser,
                  onMessageSend: (String text) {
                    ref.read(chatSessionProvider.notifier).sendMessage(text);
                  },
                  builders: Builders(
                    customMessageBuilder: _buildCustomMessage,
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
                ),
              ),
              if (suggestions.isNotEmpty)
                Container(
                  height: 50,
                  padding: const EdgeInsets.symmetric(vertical: 8),
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    itemCount: suggestions.length,
                    itemBuilder: (context, index) {
                      final suggestion = suggestions[index];
                      return Padding(
                        padding: const EdgeInsets.only(right: 8),
                        child: ActionChip(
                          label: Text(suggestion),
                          onPressed: () {
                            ref
                                .read(chatSessionProvider.notifier)
                                .sendMessage(suggestion);
                          },
                        ),
                      );
                    },
                  ),
                ),
            ],
          );
        },
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (err, stack) => Center(child: Text('Error: $err')),
      ),
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
            // Navigate to product details
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
