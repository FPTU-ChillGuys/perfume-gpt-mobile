import 'package:drift/drift.dart';
import 'package:drift_flutter/drift_flutter.dart';
import 'tables.dart';
import 'dao/conversation_dao.dart';
import 'dao/survey_dao.dart';

part 'database.g.dart';

const _databaseName = 'perfume_gpt.db';

@DriftDatabase(
  tables: [LocalConversations, LocalMessages, LocalSurveySessions],
  daos: [ConversationDao],
)
class AppDatabase extends _$AppDatabase {
  AppDatabase() : super(driftDatabase(name: _databaseName));

  @override
  int get schemaVersion => 3;

  @override
  MigrationStrategy get migration => MigrationStrategy(
    onCreate: (Migrator m) async {
      await m.createAll();
    },
    onUpgrade: (Migrator m, int from, int to) async {
      if (from < 2) {
        await m.createTable(localSurveySessions);
      }
      if (from < 3) {
        await m.addColumn(localSurveySessions, localSurveySessions.resultJson);
      }
    },
    beforeOpen: (details) async {
      await customStatement('PRAGMA foreign_keys = ON');
    },
  );

  late final surveyDao = SurveyDao(this);
}
