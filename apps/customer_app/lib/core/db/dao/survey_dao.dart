import 'package:drift/drift.dart';
import '../database.dart';

class SurveyDao {
  final AppDatabase db;
  SurveyDao(this.db);

  Future<void> insertSession(LocalSurveySessionsCompanion session) async {
    await db.into(db.localSurveySessions).insertOnConflictUpdate(session);
  }

  Future<List<LocalSurveySession>> getAllSessions() async {
    return (db.select(db.localSurveySessions)
      ..orderBy([(t) => OrderingTerm.desc(t.createdAt)]))
      .get();
  }

  Future<LocalSurveySession?> getSessionById(String id) async {
    return (db.select(db.localSurveySessions)..where((t) => t.id.equals(id)))
        .getSingleOrNull();
  }

  Future<void> deleteSession(String id) async {
    await (db.delete(db.localSurveySessions)..where((t) => t.id.equals(id))).go();
  }
}
