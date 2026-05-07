import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:flutter_chat_core/flutter_chat_core.dart';

import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:uuid/uuid.dart';
import 'package:perfumegpt_common/perfumegpt_common.dart';
import 'package:perfumegpt_ai_api_client/perfumegpt_ai_api_client.dart';
import 'package:drift/drift.dart' hide Column;
import '../../../../core/db/database_provider.dart';
import '../../../../core/db/database.dart';

part 'chat_provider.g.dart';

@riverpod
class ChatSession extends _$ChatSession {
  String? _conversationId;
  bool _isSending = false;

  @override
  Future<List<Message>> build() async {
    final dao = ref.read(conversationDaoProvider);
    final localConvs = await dao.getAllConversations();

    final currentUser = ref.read(authProvider).value;
    final currentUserId = currentUser?.id;

    final userConvs = localConvs
        .where(
          (c) => c.userId == currentUserId,
        )
        .toList();

    if (userConvs.isNotEmpty) {
      final latestLocal = userConvs.first;
      _conversationId = latestLocal.id;
      final localMessages = await dao.getMessagesByConversationId(
        latestLocal.id,
      );
      final messages = localMessages
          .map((m) => _mapLocalMessageToChat(m))
          .toList();

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
      if (localConv.userId != currentUser?.id) return;

      _conversationId = localConv.id;
      final localMessages = await dao.getMessagesByConversationId(localConv.id);
      final messages = localMessages
          .map((m) => _mapLocalMessageToChat(m))
          .toList();
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
    final userId = user?.id;
    if (userId == null) {
      // Or handle error appropriately
      _isSending = false;
      return;
    }

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

      final history = state.value!.where((m) => m.id != loadingMessageId).map((
        m,
      ) {
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
                    .map(
                      (p) => ProductCardOutputItemDto.fromJson(
                        p as Map<String, dynamic>,
                      ),
                    )
                    .toList()
                : null,
            suggestedQuestions: storedSuggestions?.cast<String>().toList(),
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

      final response = await conversationApi.conversationControllerChatStaff(
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

      if (e is DioException) {
        final fallbackMessage = _assistantMessageFromRawResponse(
          e.response?.data,
        );
        if (fallbackMessage != null) {
          state = AsyncData([...state.value!, fallbackMessage]);
          await _saveConversationToLocal();
          _isSending = false;
          return;
        }
      }

      final aiApiBaseUrl = ref.read(aiApiClientProvider).dio.options.baseUrl;
      final friendlyError = _friendlyAiErrorMessage(e);
      if (e is DioException) {
        final status = e.response?.statusCode;
        final message = e.response?.data;
        // Keep diagnostics in debug log while showing user-friendly messages in UI.
        // ignore: avoid_print
        print(
          'AI chat request failed. baseUrl=$aiApiBaseUrl status=$status data=$message error=${e.message}',
        );
      } else {
        // ignore: avoid_print
        print('AI chat request failed. baseUrl=$aiApiBaseUrl error=$e');
      }

      final errorMessage = Message.text(
        authorId: 'ai',
        createdAt: DateTime.now(),
        id: const Uuid().v4(),
        text: friendlyError,
      );
      state = AsyncData([...state.value!, errorMessage]);
    } finally {
      _isSending = false;
    }
  }

  String _friendlyAiErrorMessage(Object error) {
    if (error is DioException) {
      final status = error.response?.statusCode;
      final payload = error.response?.data;
      String? backendMessage;
      if (payload is Map) {
        backendMessage = payload['message']?.toString();
      }

      if (status == 401 || status == 403) {
        return 'Phiên đăng nhập đã hết hạn. Vui lòng đăng nhập lại để dùng AI.';
      }
      if (status == 404) {
        return 'Không tìm thấy dịch vụ AI. Vui lòng kiểm tra cấu hình AI_API_BASE_URL.';
      }
      if (status == 429) {
        return 'AI đang bận. Vui lòng thử lại sau ít phút.';
      }
      if (status != null && status >= 500) {
        return 'Máy chủ AI đang gặp sự cố. Vui lòng thử lại sau.';
      }
      if (error.type == DioExceptionType.connectionTimeout ||
          error.type == DioExceptionType.receiveTimeout ||
          error.type == DioExceptionType.connectionError) {
        return 'Không kết nối được tới AI. Vui lòng kiểm tra mạng hoặc cấu hình API.';
      }
      if (backendMessage != null && backendMessage.trim().isNotEmpty) {
        return backendMessage.trim();
      }
    }
    return 'AI tạm thời chưa phản hồi. Vui lòng thử lại.';
  }

  Message? _assistantMessageFromRawResponse(dynamic rawData) {
    if (rawData is! Map) return null;
    final data = rawData['data'];
    if (data is! Map) return null;
    final messages = data['messages'];
    if (messages is! List) return null;

    Map? assistantRaw;
    for (final item in messages.reversed) {
      if (item is Map && item['sender']?.toString() == 'assistant') {
        assistantRaw = item;
        break;
      }
    }
    if (assistantRaw == null) return null;

    final text = assistantRaw['message']?.toString();
    if (text == null || text.trim().isEmpty) return null;

    final products = assistantRaw['products'];
    final suggestedQuestions = assistantRaw['suggestedQuestions'];
    final hasStructuredData =
        (products is List && products.isNotEmpty) ||
        (suggestedQuestions is List && suggestedQuestions.isNotEmpty);

    if (!hasStructuredData) {
      return Message.text(
        authorId: 'ai',
        createdAt: DateTime.now(),
        id: const Uuid().v4(),
        text: text,
      );
    }

    return Message.custom(
      authorId: 'ai',
      createdAt: DateTime.now(),
      id: const Uuid().v4(),
      metadata: {
        'text': text,
        'products': products is List ? List<dynamic>.from(products) : null,
        'suggestedQuestions': suggestedQuestions is List
            ? suggestedQuestions.map((e) => e.toString()).toList()
            : null,
      },
    );
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
    final userId = user?.id;
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
    final previewTrimmed =
        preview.length > 60 ? preview.substring(0, 60) : preview;

    final dao = ref.read(conversationDaoProvider);
    await dao.upsertConversation(
      LocalConversationsCompanion.insert(
        id: _conversationId!,
        userId: userId,
        updatedAt: DateTime.now().millisecondsSinceEpoch,
        messageCount: Value(nonLoadingMessages.length),
        lastMessagePreview: Value(previewTrimmed),
      ),
    );

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
        createdAt:
            m.createdAt?.millisecondsSinceEpoch ??
                DateTime.now().millisecondsSinceEpoch,
        messageIndex: index,
      );
    }).toList();

    await dao.replaceMessagesForConversation(_conversationId!, messageEntries);
  }
}
