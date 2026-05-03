import 'package:drift/drift.dart';

class LocalConversations extends Table {
  TextColumn get id => text()();
  TextColumn get userId => text()();
  IntColumn get updatedAt => integer()();
  IntColumn get messageCount => integer().withDefault(const Constant(0))();
  TextColumn get lastMessagePreview => text().withDefault(const Constant(''))();
  IntColumn get syncedAt => integer().withDefault(const Constant(0))();

  @override
  Set<Column> get primaryKey => {id};
}

class LocalMessages extends Table {
  TextColumn get id => text()();
  TextColumn get conversationId => text().references(LocalConversations, #id)();
  TextColumn get authorId => text()();
  TextColumn get textContent => text().withDefault(const Constant(''))();
  TextColumn get metadataJson => text().nullable()();
  IntColumn get createdAt => integer()();
  IntColumn get messageIndex => integer()();

  @override
  Set<Column> get primaryKey => {id};
}