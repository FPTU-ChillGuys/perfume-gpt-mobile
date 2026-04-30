import 'package:perfumegpt_common/perfumegpt_common.dart';
import 'package:flutter_chat_core/flutter_chat_core.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:uuid/uuid.dart';
import 'package:perfumegpt_ai_api_client/perfumegpt_ai_api_client.dart';

part 'chat_provider.g.dart';

@riverpod
class ChatSession extends _$ChatSession {
  String? _conversationId;
  String? _guestUserId;

  @override
  Future<List<Message>> build() async {
    final aiApiClient = ref.read(aiApiClientProvider);
    final conversationApi = aiApiClient.getConversationApi();

    try {
      final response = await conversationApi
          .conversationControllerGetAllConversationsPaginated(pageSize: 1);

      final latestConversation = response.data?.payload?.items.firstOrNull;

      if (latestConversation != null) {
        _conversationId = latestConversation.id;
        _guestUserId = latestConversation.userId;
        final messages =
            latestConversation.messages?.map((m) {
              final isAi = m.sender == 'assistant';
              final authorId = isAi
                  ? 'ai'
                  : (latestConversation.userId ?? 'user');

              if (isAi &&
                  (m.message.products != null &&
                          m.message.products!.isNotEmpty ||
                      m.message.suggestedQuestions.isNotEmpty)) {
                return Message.custom(
                  authorId: authorId,
                  createdAt: m.createdAt,
                  id: m.id,
                  metadata: {
                    'text': m.message.message,
                    'products': m.message.products
                        ?.map((p) => p.toJson())
                        .toList(),
                    'suggestedQuestions': m.message.suggestedQuestions,
                  },
                );
              }

              return Message.text(
                authorId: authorId,
                createdAt: m.createdAt,
                id: m.id,
                text: m.message.message,
              );
            }).toList() ??
            [];

        return messages;
      }
    } catch (e) {
      // Fallback to new conversation if failed to fetch or no previous conversations
    }

    _conversationId = const Uuid().v4();
    return [];
  }

  void sendMessage(String text) async {
    if (state.value == null) return;

    final user = ref.read(authProvider).value;
    final userId = user?.id ?? (_guestUserId ??= const Uuid().v4());

    final userMessage = Message.text(
      authorId: userId,
      createdAt: DateTime.now(),
      id: const Uuid().v4(),
      text: text,
    );

    final previousMessages = state.value!;
    state = AsyncData([...previousMessages, userMessage]);

    try {
      final aiApiClient = ref.read(aiApiClientProvider);
      final conversationApi = aiApiClient.getConversationApi();

      _conversationId ??= const Uuid().v4();

      // Construct history for V10 API - state is already oldest first
      final history = state.value!.map((m) {
        String msgText;
        if (m is TextMessage) {
          msgText = m.text;
        } else if (m is CustomMessage && m.metadata?['text'] != null) {
          msgText = m.metadata!['text'] as String;
        } else {
          msgText = '';
        }

        return MessageRequestDto(
          sender: m.authorId == 'ai'
              ? MessageRequestDtoSenderEnum.assistant
              : MessageRequestDtoSenderEnum.user,
          message: MessageRequestDtoMessage(
            message: msgText,
            suggestedQuestions: [],
          ),
        );
      }).toList();

      final request = ConversationRequestDto(
        id: _conversationId!,
        userId: userId,
        messages: history,
      );

      final response = await conversationApi
          .conversationControllerConversationV10(
            conversationRequestDto: request,
          );

      final conversationResponse = response.data?.data;
      final aiLastMessage = conversationResponse?.messages?.lastOrNull;

      if (aiLastMessage != null) {
        final messageData = aiLastMessage.message;
        Message aiMessage;

        if ((messageData.products != null &&
                messageData.products!.isNotEmpty) ||
            messageData.suggestedQuestions.isNotEmpty) {
          aiMessage = Message.custom(
            authorId: 'ai',
            createdAt: DateTime.now(),
            id: const Uuid().v4(),
            metadata: {
              'text': messageData.message,
              'products': messageData.products?.map((p) => p.toJson()).toList(),
              'suggestedQuestions': messageData.suggestedQuestions,
            },
          );
        } else {
          aiMessage = Message.text(
            authorId: 'ai',
            createdAt: DateTime.now(),
            id: const Uuid().v4(),
            text: messageData.message,
          );
        }

        state = AsyncData([...state.value!, aiMessage]);
      } else {
        throw Exception('No response from AI');
      }
    } catch (e) {
      final errorMessage = Message.text(
        authorId: 'ai',
        createdAt: DateTime.now(),
        id: const Uuid().v4(),
        text: 'Sorry, I encountered an error. Please try again later.',
      );
      state = AsyncData([...state.value!, errorMessage]);
    }
  }
}
