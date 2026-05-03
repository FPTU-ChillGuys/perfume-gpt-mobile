// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'conversation_dao.dart';

// ignore_for_file: type=lint
mixin _$ConversationDaoMixin on DatabaseAccessor<AppDatabase> {
  $LocalConversationsTable get localConversations =>
      attachedDatabase.localConversations;
  $LocalMessagesTable get localMessages => attachedDatabase.localMessages;
  ConversationDaoManager get managers => ConversationDaoManager(this);
}

class ConversationDaoManager {
  final _$ConversationDaoMixin _db;
  ConversationDaoManager(this._db);
  $$LocalConversationsTableTableManager get localConversations =>
      $$LocalConversationsTableTableManager(
        _db.attachedDatabase,
        _db.localConversations,
      );
  $$LocalMessagesTableTableManager get localMessages =>
      $$LocalMessagesTableTableManager(_db.attachedDatabase, _db.localMessages);
}
