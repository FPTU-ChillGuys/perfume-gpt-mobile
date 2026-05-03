import 'package:drift/drift.dart';
import '../database.dart';
import '../tables.dart';

part 'conversation_dao.g.dart';

@DriftAccessor(tables: [LocalConversations, LocalMessages])
class ConversationDao extends DatabaseAccessor<AppDatabase> with _$ConversationDaoMixin {
  ConversationDao(super.db);

  Future<List<LocalConversation>> getAllConversations() {
    return (select(localConversations)
          ..orderBy([(t) => OrderingTerm.desc(t.updatedAt)]))
        .get();
  }

  Future<LocalConversation?> getConversationById(String id) {
    return (select(localConversations)..where((t) => t.id.equals(id)))
        .getSingleOrNull();
  }

  Future<List<LocalMessage>> getMessagesByConversationId(String conversationId) {
    return (select(localMessages)
          ..where((t) => t.conversationId.equals(conversationId))
          ..orderBy([(t) => OrderingTerm.asc(t.messageIndex)]))
        .get();
  }

  Future<void> upsertConversation(LocalConversationsCompanion entry) {
    return into(localConversations).insertOnConflictUpdate(entry);
  }

  Future<void> replaceMessagesForConversation(
    String conversationId,
    List<LocalMessagesCompanion> entries,
  ) async {
    await transaction(() async {
      await (delete(localMessages)
            ..where((t) => t.conversationId.equals(conversationId)))
          .go();
      await batch((b) {
        b.insertAll(localMessages, entries);
      });
    });
  }

  Future<void> deleteConversation(String id) async {
    await transaction(() async {
      await (delete(localMessages)
            ..where((t) => t.conversationId.equals(id)))
          .go();
      await (delete(localConversations)..where((t) => t.id.equals(id))).go();
    });
  }

  Future<void> deleteAll() async {
    await transaction(() async {
      await delete(localMessages).go();
      await delete(localConversations).go();
    });
  }
}