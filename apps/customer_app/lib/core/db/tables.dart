import 'package:drift/drift.dart';

class LocalConversations extends Table {
  TextColumn get id => text()();
  TextColumn get userId => text()();

  /// Stores Unix timestamp in milliseconds since epoch
  IntColumn get updatedAt => integer()();
  IntColumn get messageCount => integer().withDefault(const Constant(0))();
  TextColumn get lastMessagePreview => text().withDefault(const Constant(''))();

  /// Stores Unix timestamp in milliseconds since epoch
  IntColumn get syncedAt => integer().withDefault(const Constant(0))();

  @override
  Set<Column> get primaryKey => {id};
}

class LocalMessages extends Table {
  TextColumn get id => text()();
  TextColumn get conversationId =>
      text().references(LocalConversations, #id, onDelete: KeyAction.cascade)();
  TextColumn get authorId => text()();
  TextColumn get textContent => text().withDefault(const Constant(''))();
  TextColumn get metadataJson => text().nullable()();

  /// Stores Unix timestamp in milliseconds since epoch
  IntColumn get createdAt => integer()();

  /// Sequential ordering index for messages within a conversation (not a timestamp)
  IntColumn get messageIndex => integer()();

  @override
  Set<Column> get primaryKey => {id};
}

class LocalSurveySessions extends Table {
  TextColumn get id => text()();
  TextColumn get userId => text()();
  TextColumn get answersJson => text()();
  TextColumn get resultJson => text().nullable()();
  IntColumn get createdAt => integer()();
  IntColumn get productCount => integer().withDefault(const Constant(0))();

  @override
  Set<Column> get primaryKey => {id};
}
