import 'package:test/test.dart';
import 'package:perfumegpt_ai_api_client/perfumegpt_ai_api_client.dart';


/// tests for HybridSearchEmbeddingsApi
void main() {
  final instance = PerfumegptAiApiClient().getHybridSearchEmbeddingsApi();

  group(HybridSearchEmbeddingsApi, () {
    // Xóa embedding của 1 product
    //
    //Future rebuildEmbeddingsControllerDeleteEmbedding(String productId) async
    test('test rebuildEmbeddingsControllerDeleteEmbedding', () async {
      // TODO
    });

    // Get stats về embeddings
    //
    //Future rebuildEmbeddingsControllerGetStats() async
    test('test rebuildEmbeddingsControllerGetStats', () async {
      // TODO
    });

    // Rebuild tất cả embeddings
    //
    //Future rebuildEmbeddingsControllerRebuildAll() async
    test('test rebuildEmbeddingsControllerRebuildAll', () async {
      // TODO
    });

    // Rebuild embedding cho 1 product cụ thể
    //
    //Future rebuildEmbeddingsControllerRebuildOne(String productId) async
    test('test rebuildEmbeddingsControllerRebuildOne', () async {
      // TODO
    });

  });
}
