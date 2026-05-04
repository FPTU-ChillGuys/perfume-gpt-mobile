import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_markdown_plus/flutter_markdown_plus.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:perfumegpt_ai_api_client/perfumegpt_ai_api_client.dart';
import 'package:perfumegpt_common/perfumegpt_common.dart' as common;
import '../../../../core/db/database_provider.dart';
import '../widgets/ai_message_style.dart';
import '../widgets/survey_product_card.dart';

class SurveyHistoryPage extends ConsumerStatefulWidget {
  const SurveyHistoryPage({super.key});

  @override
  ConsumerState<SurveyHistoryPage> createState() => _SurveyHistoryPageState();
}

class _SurveyHistoryPageState extends ConsumerState<SurveyHistoryPage> {
  List<_SessionDisplay> _sessions = [];
  bool _isLoading = true;

  @override
  void initState() {
    super.initState();
    _loadSessions();
  }

  Future<void> _loadSessions() async {
    try {
      final dao = ref.read(surveyDaoProvider);
      final all = await dao.getAllSessions();
      final currentUser = ref.read(common.authProvider).value;
      final currentUserId = currentUser?.id;
      final userSessions = all
          .where((s) => currentUserId == null || s.userId == currentUserId)
          .toList();

      if (mounted) {
        setState(() {
          _sessions = userSessions
              .map((s) => _SessionDisplay(
                    id: s.id,
                    userId: s.userId,
                    createdAt: s.createdAt,
                    productCount: s.productCount,
                  ))
              .toList();
          _isLoading = false;
        });
      }
    } catch (_) {
      if (mounted) setState(() => _isLoading = false);
    }
  }

  String _formatTime(int millis) {
    final date = DateTime.fromMillisecondsSinceEpoch(millis);
    final diff = DateTime.now().difference(date);
    if (diff.inMinutes < 1) return 'Vừa xong';
    if (diff.inMinutes < 60) return '${diff.inMinutes} phút trước';
    if (diff.inHours < 24) return '${diff.inHours} giờ trước';
    if (diff.inDays == 1) return 'Hôm qua';
    return '${diff.inDays} ngày trước';
  }

  MobileSurveyResponseData? _parseResult(String resultJson) {
    try {
      final json = jsonDecode(resultJson) as Map<String, dynamic>;
      if (json.containsKey('messages') && json.containsKey('products')) {
        return MobileSurveyResponseData.fromJson(json);
      }
      return _convertLegacyFormat(json);
    } catch (_) {
      return null;
    }
  }

  MobileSurveyResponseData? _convertLegacyFormat(Map<String, dynamic> json) {
    try {
      final aiMessage = json['aiMessage'] as String?;
      final productsJson = json['products'] as List<dynamic>?;
      if (aiMessage == null && productsJson == null) return null;

      final messages = <MobileSurveyMessage>[];
      final products = <MobileSurveyProduct>[];

      if (productsJson != null) {
        for (final p in productsJson) {
          final map = p as Map<String, dynamic>;
          final variants = map['variants'] as List<dynamic>? ?? [];
          final prices = variants
              .map((v) => (v as Map<String, dynamic>)['basePrice'] as num?)
              .whereType<num>()
              .map((e) => e.toDouble())
              .toList();
          products.add(MobileSurveyProduct(
            id: map['id'] as String? ?? '',
            name: map['name'] as String? ?? '',
            brandName: map['brandName'] as String? ?? '',
            primaryImage: map['primaryImage'] as String? ?? '',
            reasoning: map['reasoning'] as String? ?? '',
            minPrice: prices.isNotEmpty ? prices.reduce((a, b) => a < b ? a : b) : 0,
            maxPrice: prices.isNotEmpty ? prices.reduce((a, b) => a > b ? a : b) : 0,
          ));
        }
      }

      if (aiMessage != null) {
        messages.add(MobileSurveyMessage(message: aiMessage, products: []));
      }
      if (products.isNotEmpty) {
        messages.add(MobileSurveyMessage(
          message: 'Gợi ý ${products.length} sản phẩm phù hợp:',
          products: products,
        ));
      }

      return MobileSurveyResponseData(messages: messages, products: products);
    } catch (_) {
      return null;
    }
  }

  Future<void> _showDetail(String sessionId) async {
    final dao = ref.read(surveyDaoProvider);
    final session = await dao.getSessionById(sessionId);
    if (session == null || !mounted) return;

    final result = _parseResult(session.resultJson);
    if (!mounted) return;

    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
      ),
      builder: (context) {
        return DraggableScrollableSheet(
          expand: false,
          initialChildSize: 0.6,
          minChildSize: 0.3,
          maxChildSize: 0.9,
          builder: (context, scrollController) {
            return SingleChildScrollView(
              controller: scrollController,
              padding: const EdgeInsets.all(16),
              child: result != null
                  ? _DetailContent(result: result)
                  : const _UnparseableResult(),
            );
          },
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Lịch sử khảo sát')),
      body: _isLoading
          ? const Center(child: CircularProgressIndicator())
          : _sessions.isEmpty
              ? const Center(child: Text('Chưa có kết quả khảo sát nào'))
              : ListView.builder(
                  itemCount: _sessions.length,
                  itemBuilder: (context, index) {
                    final session = _sessions[index];
                    return Dismissible(
                      key: ValueKey(session.id),
                      direction: DismissDirection.endToStart,
                      background: Container(
                        alignment: Alignment.centerRight,
                        padding: const EdgeInsets.only(right: 20),
                        color: Colors.red,
                        child: const Icon(Icons.delete, color: Colors.white),
                      ),
                      onDismissed: (_) async {
                        final dao = ref.read(surveyDaoProvider);
                        await dao.deleteSession(session.id);
                        setState(() => _sessions.removeAt(index));
                      },
                      child: ListTile(
                        title: Text('Khảo sát #${index + 1}'),
                        subtitle: Text(
                          '${_formatTime(session.createdAt)} • ${session.productCount} sản phẩm',
                        ),
                        trailing: const Icon(Icons.chevron_right),
                        onTap: () => _showDetail(session.id),
                      ),
                    );
                  },
                ),
    );
  }
}

class _SessionDisplay {
  final String id;
  final String userId;
  final int createdAt;
  final int productCount;

  _SessionDisplay({
    required this.id,
    required this.userId,
    required this.createdAt,
    required this.productCount,
  });
}

class _DetailContent extends StatelessWidget {
  final MobileSurveyResponseData result;

  const _DetailContent({required this.result});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Center(
          child: Container(
            width: 40,
            height: 4,
            margin: const EdgeInsets.only(bottom: 16),
            decoration: BoxDecoration(
              color: Colors.grey[300],
              borderRadius: BorderRadius.circular(2),
            ),
          ),
        ),
        Text(
          'Kết quả khảo sát',
          style: Theme.of(context)
              .textTheme
              .titleLarge
              ?.copyWith(fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 12),
        ...result.messages.map((msg) => _buildMessageBlock(context, msg)),
        const SizedBox(height: 24),
        SizedBox(
          width: double.infinity,
          child: ElevatedButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Đóng'),
          ),
        ),
      ],
    );
  }

  Widget _buildMessageBlock(BuildContext context, MobileSurveyMessage msg) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          MarkdownBody(
            data: msg.message,
            selectable: true,
            styleSheet: aiMessageStyleSheet(context),
          ),
          if (msg.products.isNotEmpty) ...[
            const SizedBox(height: 8),
            ...msg.products.map((p) => Padding(
                  padding: const EdgeInsets.only(bottom: 8.0),
                  child: SurveyProductCard(product: p),
                )),
          ],
        ],
      ),
    );
  }
}

class _UnparseableResult extends StatelessWidget {
  const _UnparseableResult();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Center(
          child: Container(
            width: 40,
            height: 4,
            margin: const EdgeInsets.only(bottom: 16),
            decoration: BoxDecoration(
              color: Colors.grey[300],
              borderRadius: BorderRadius.circular(2),
            ),
          ),
        ),
        Text(
          'Kết quả khảo sát',
          style: Theme.of(context)
              .textTheme
              .titleLarge
              ?.copyWith(fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 12),
        const Text('Dữ liệu không hỗ trợ phiên bản cũ.'),
        const SizedBox(height: 24),
        SizedBox(
          width: double.infinity,
          child: ElevatedButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Đóng'),
          ),
        ),
      ],
    );
  }
}