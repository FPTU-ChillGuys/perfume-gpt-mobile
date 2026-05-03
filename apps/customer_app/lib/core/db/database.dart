import 'package:drift/drift.dart';
import 'package:drift_flutter/drift_flutter.dart';
import 'tables.dart';
import 'dao/conversation_dao.dart';

part 'database.g.dart';

const _databaseName = 'perfume_gpt.db';

@DriftDatabase(tables: [LocalConversations, LocalMessages], daos: [ConversationDao])
class AppDatabase extends _$AppDatabase {
  AppDatabase() : super(driftDatabase(name: _databaseName));

  @override
  int get schemaVersion => 1;

  @override
  MigrationStrategy get migration => MigrationStrategy(
        onCreate: (Migrator m) async {
          await m.createAll();
        },
      );
}