import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'database.dart';
import 'dao/conversation_dao.dart';
import 'dao/survey_dao.dart';

part 'database_provider.g.dart';

@Riverpod(keepAlive: true)
AppDatabase appDatabase(Ref ref) {
  final db = AppDatabase();
  ref.onDispose(() => db.close());
  return db;
}

@riverpod
ConversationDao conversationDao(Ref ref) {
  return ConversationDao(ref.watch(appDatabaseProvider));
}

@riverpod
SurveyDao surveyDao(Ref ref) {
  return ref.read(appDatabaseProvider).surveyDao;
}
