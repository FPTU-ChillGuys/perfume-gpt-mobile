import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'database.dart';
import 'dao/conversation_dao.dart';

part 'database_provider.g.dart';

@riverpod
AppDatabase appDatabase(Ref ref) {
  return AppDatabase();
}

@riverpod
ConversationDao conversationDao(Ref ref) {
  return ConversationDao(ref.read(appDatabaseProvider));
}
