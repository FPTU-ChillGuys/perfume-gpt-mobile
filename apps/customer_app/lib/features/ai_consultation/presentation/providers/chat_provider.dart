import 'dart:convert';
import 'package:flutter_chat_core/flutter_chat_core.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:uuid/uuid.dart';
import 'package:perfumegpt_common/perfumegpt_common.dart';
import 'package:perfumegpt_ai_api_client/perfumegpt_ai_api_client.dart';
import 'package:drift/drift.dart' hide Column;
import '../../../../core/db/database_provider.dart';
import '../../../../core/db/database.dart';

part 'chat_provider.g.dart';

const _guestIdKey = 'guest_user_id';

Future<String> resolveGuestUserId() async {
  const storage = FlutterSecureStorage();
  final stored = await storage.read(key: _guestIdKey);
  if (stored != null) return stored;
  final newId = const Uuid().v4();
  await storage.write(key: _guestIdKey, value: newId);
  return newId;
}

@riverpod
class ChatSession extends _$ChatSession {
  final _secureStorage = const FlutterSecureStorage();

  String? _conversationId;
  String? _guestUserId;
  bool _isSending = false;

  String? get guestUserId => _guestUserId;

  String ensureGuestUserId() {
    if (_guestUserId != null) return _guestUserId!;
    _guestUserId = const Uuid().v4();
    _secureStorage.write(key: _guestIdKey, value: _guestUserId);
    return _guestUserId!;
  }

  @override
  Future<List<Message>> build() async {
    final storedId = await _secureStorage.read(key: _guestIdKey);
    _guestUserId = storedId;

    final dao = ref.read(conversationDaoProvider);
    final localConvs = await dao.getAllConversations();

    final currentUser = ref.read(authProvider).value;
    final currentUserId = currentUser?.id;

    final userConvs = localConvs.where((c) => currentUserId == null || c.userId == currentUserId).toList();

    if (userConvs.isNotEmpty) {
      final latestLocal = userConvs.first;
      _conversationId = latestLocal.id;
      _guestUserId ??= latestLocal.userId;
      if (_guestUserId != null) {
        await _secureStorage.write(key: _guestIdKey, value: _guestUserId);
      }
      final localMessages = await dao.getMessagesByConversationId(latestLocal.id);
      final messages = localMessages.map((m) => _mapLocalMessageToChat(m)).toList();

      return messages;
    }

    _conversationId = const Uuid().v4();
    return [];
  }

  Future<void> loadConversation(String conversationId) async {
    if (_isSending) return;
    final dao = ref.read(conversationDaoProvider);
    final localConv = await dao.getConversationById(conversationId);

    if (localConv != null) {
      final currentUser = ref.read(authProvider).value;
      if (currentUser != null && localConv.userId != currentUser.id) return;

      _conversationId = localConv.id;
      _guestUserId = localConv.userId;
      final localMessages = await dao.getMessagesByConversationId(localConv.id);
      final messages = localMessages.map((m) => _mapLocalMessageToChat(m)).toList();
      state = AsyncData(messages);
    }
  }

  void newConversation() {
    if (_isSending) return;
    _conversationId = const Uuid().v4();
    state = const AsyncData([]);
  }

  void sendMessage(String text) async {
    if (state.value == null || _isSending) return;
    _isSending = true;

    final user = ref.read(authProvider).value;
    final userId = user?.id ?? ensureGuestUserId();

    final userMessage = Message.text(
      authorId: userId,
      createdAt: DateTime.now(),
      id: const Uuid().v4(),
      text: text,
    );

    final loadingMessageId = 'loading_${const Uuid().v4()}';
    final loadingMessage = Message.custom(
      authorId: 'ai',
      createdAt: DateTime.now(),
      id: loadingMessageId,
      metadata: {'isLoading': true},
    );

    final previousMessages = state.value!;
    state = AsyncData([...previousMessages, userMessage, loadingMessage]);

    try {
      final aiApiClient = ref.read(aiApiClientProvider);
      final conversationApi = aiApiClient.getConversationApi();

      _conversationId ??= const Uuid().v4();
      final activeConvId = _conversationId!;

      final history = state.value!
          .where((m) => m.id != loadingMessageId)
          .map((m) {
        String msgText;
        if (m is TextMessage) {
          msgText = m.text;
        } else if (m is CustomMessage && m.metadata?['text'] != null) {
          msgText = m.metadata!['text'] as String;
        } else {
          msgText = '';
        }

        final isAi = m.authorId == 'ai';

        if (isAi) {
          final customMsg = m is CustomMessage ? m : null;
          final storedProducts = customMsg?.metadata?['products'];
          final storedSuggestions = customMsg?.metadata?['suggestedQuestions'];

          return ChatMessageRequest(
            sender: ChatMessageRequestSenderEnum.assistant,
            message: msgText,
            products: storedProducts != null
                ? (storedProducts as List<dynamic>)
                    .map((p) => ProductCardOutputItemDto.fromJson(
                        p as Map<String, dynamic>))
                    .toList()
                : null,
            suggestedQuestions:
                storedSuggestions?.cast<String>().toList(),
          );
        }

        return ChatMessageRequest(
          sender: ChatMessageRequestSenderEnum.user,
          message: msgText,
        );
      }).toList();

      final request = ChatRequest(
        id: activeConvId,
        userId: userId,
        messages: history,
        isMobile: true,
      );

      final response = await conversationApi.conversationControllerChat(
        chatRequest: request,
      );

      final conversationResponse = response.data?.data;
      final aiLastMessage = conversationResponse?.messages.lastOrNull;

      if (_conversationId != activeConvId) return;

      state = AsyncData(
        state.value!.where((m) => m.id != loadingMessageId).toList(),
      );

      if (aiLastMessage != null) {
        final hasStructuredData =
            (aiLastMessage.products != null &&
                aiLastMessage.products!.isNotEmpty) ||
            (aiLastMessage.suggestedQuestions != null &&
                aiLastMessage.suggestedQuestions!.isNotEmpty);

        Message aiMessage;
        if (hasStructuredData) {
          aiMessage = Message.custom(
            authorId: 'ai',
            createdAt: DateTime.now(),
            id: const Uuid().v4(),
            metadata: {
              'text': aiLastMessage.message,
              'products':
                  aiLastMessage.products?.map((p) => p.toJson()).toList(),
              'suggestedQuestions': aiLastMessage.suggestedQuestions,
            },
          );
        } else {
          aiMessage = Message.text(
            authorId: 'ai',
            createdAt: DateTime.now(),
            id: const Uuid().v4(),
            text: aiLastMessage.message,
          );
        }

        state = AsyncData([...state.value!, aiMessage]);
        await _saveConversationToLocal();
      } else {
        throw Exception('No response from AI');
      }
    } catch (e) {
      state = AsyncData(
        state.value!.where((m) => m.id != loadingMessageId).toList(),
      );

      final errorMessage = Message.text(
        authorId: 'ai',
        createdAt: DateTime.now(),
        id: const Uuid().v4(),
        text: 'Sorry, I encountered an error. Please try again later.',
      );
      state = AsyncData([...state.value!, errorMessage]);
    } finally {
      _isSending = false;
    }
  }

  Message _mapLocalMessageToChat(LocalMessage m) {
    final metadataJson = m.metadataJson;

    if (metadataJson != null) {
      try {
        final metadata = jsonDecode(metadataJson) as Map<String, dynamic>;
        return Message.custom(
          authorId: m.authorId,
          createdAt: DateTime.fromMillisecondsSinceEpoch(m.createdAt),
          id: m.id,
          metadata: metadata,
        );
      } catch (_) {
        return Message.text(
          authorId: m.authorId,
          createdAt: DateTime.fromMillisecondsSinceEpoch(m.createdAt),
          id: m.id,
          text: m.textContent,
        );
      }
    }

    return Message.text(
      authorId: m.authorId,
      createdAt: DateTime.fromMillisecondsSinceEpoch(m.createdAt),
      id: m.id,
      text: m.textContent,
    );
  }

  Future<void> _saveConversationToLocal() async {
    if (_conversationId == null) return;

    final user = ref.read(authProvider).value;
    final userId = user?.id ?? _guestUserId;
    if (userId == null) return;

    final messages = state.value ?? [];
    final nonLoadingMessages = messages.where((m) {
      if (m is CustomMessage) {
        if (m.metadata?['isLoading'] == true) return false;
        if (m.metadata?['isTransient'] == true) return false;
      }
      return true;
    }).toList();

    final lastMessage = nonLoadingMessages.lastOrNull;
    String preview = '';
    if (lastMessage is TextMessage) {
      preview = lastMessage.text;
    } else if (lastMessage is CustomMessage &&
        lastMessage.metadata?['text'] != null) {
      preview = lastMessage.metadata!['text'] as String;
    }
    final previewTrimmed = preview.length > 60 ? preview.substring(0, 60) : preview;

    final dao = ref.read(conversationDaoProvider);
    await dao.upsertConversation(LocalConversationsCompanion.insert(
      id: _conversationId!,
      userId: userId,
      updatedAt: DateTime.now().millisecondsSinceEpoch,
      messageCount: Value(nonLoadingMessages.length),
      lastMessagePreview: Value(previewTrimmed),
    ));

    final messageEntries = nonLoadingMessages.asMap().entries.map((entry) {
      final index = entry.key;
      final m = entry.value;
      String textContent;
      String? metadataJson;

      if (m is TextMessage) {
        textContent = m.text;
        metadataJson = null;
      } else if (m is CustomMessage) {
        textContent = m.metadata?['text'] as String? ?? '';
        metadataJson = jsonEncode(m.metadata);
      } else {
        textContent = '';
        metadataJson = null;
      }

      return LocalMessagesCompanion.insert(
        id: '${_conversationId}_$index',
        conversationId: _conversationId!,
        authorId: m.authorId,
        textContent: Value(textContent),
        metadataJson: Value(metadataJson),
        createdAt: m.createdAt?.millisecondsSinceEpoch ??
            DateTime.now().millisecondsSinceEpoch,
        messageIndex: index,
      );
    }).toList();

    await dao.replaceMessagesForConversation(_conversationId!, messageEntries);
  }

}
