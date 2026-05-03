import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:perfumegpt_common/perfumegpt_common.dart' as common;
import 'package:perfumegpt_ai_api_client/perfumegpt_ai_api_client.dart';
import '../../../../core/db/database_provider.dart';
import '../../../../core/utils/price_formatter.dart';

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
          _sessions = userSessions.map((s) => _SessionDisplay(
            id: s.id,
            userId: s.userId,
            createdAt: s.createdAt,
            productCount: s.productCount,
          )).toList();
          _isLoading = false;
        });
      }
    } catch (e) {
      if (mounted) {
        setState(() => _isLoading = false);
      }
    }
  }

  String _formatTime(DateTime date) {
    final now = DateTime.now();
    final diff = now.difference(date);

    if (diff.inMinutes < 1) return 'Vừa xong';
    if (diff.inMinutes < 60) return '${diff.inMinutes} phút trước';
    if (diff.inHours < 24) return '${diff.inHours} giờ trước';
    if (diff.inDays == 1) return 'Hôm qua';
    return '${diff.inDays} ngày trước';
  }

  Future<void> _showDetail(String sessionId) async {
    final dao = ref.read(surveyDaoProvider);
    final session = await dao.getSessionById(sessionId);
    if (session == null || !mounted) return;

    Map<String, dynamic>? resultMap;
    String? aiMessage;
    List<ProductCardOutputItemDto> products = [];

    try {
      resultMap = jsonDecode(session.resultJson) as Map<String, dynamic>;
      aiMessage = resultMap['aiMessage'] as String?;
      final productsJson = resultMap['products'] as List<dynamic>?;
      if (productsJson != null) {
        products = productsJson
            .map((p) => ProductCardOutputItemDto.fromJson(p as Map<String, dynamic>))
            .toList();
      }
    } catch (_) {}

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
              child: Column(
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
                    style: Theme.of(context).textTheme.titleLarge?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 12),
                  Text(
                    aiMessage ?? 'Không có tin nhắn AI',
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                  const SizedBox(height: 16),
                  if (products.isNotEmpty) ...[
                    Text(
                      'Sản phẩm gợi ý (${products.length})',
                      style: Theme.of(context).textTheme.titleMedium?.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 8),
                    SizedBox(
                      height: 220,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: products.length,
                        itemBuilder: (context, index) {
                          return _HistoryProductCard(product: products[index]);
                        },
                      ),
                    ),
                  ] else
                    const Text('Không có sản phẩm gợi ý.'),
                  const SizedBox(height: 24),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () => Navigator.pop(context),
                      child: const Text('Đóng'),
                    ),
                  ),
                ],
              ),
            );
          },
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lịch sử khảo sát'),
      ),
      body: _isLoading
          ? const Center(child: CircularProgressIndicator())
          : _sessions.isEmpty
              ? const Center(child: Text('Chưa có kết quả khảo sát nào'))
              : ListView.builder(
                  itemCount: _sessions.length,
                  itemBuilder: (context, index) {
                    final session = _sessions[index];
                    final time = _formatTime(
                      DateTime.fromMillisecondsSinceEpoch(session.createdAt),
                    );
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
                        subtitle: Text('$time • ${session.productCount} sản phẩm'),
                        trailing: const Icon(Icons.chevron_right),
                        onTap: () => _showDetail(session.id),
                      ),
                    );
                  },
                ),
    );
  }
}

class _HistoryProductCard extends StatelessWidget {
  final ProductCardOutputItemDto product;

  const _HistoryProductCard({required this.product});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 140,
      margin: const EdgeInsets.only(right: 12),
      child: Card(
        clipBehavior: Clip.antiAlias,
        elevation: 2,
        child: InkWell(
          onTap: () => context.push('/product/${product.id}'),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: product.primaryImage != null
                    ? Image.network(
                        product.primaryImage as String,
                        fit: BoxFit.cover,
                        width: double.infinity,
                        errorBuilder: (_, __, ___) => const Center(
                          child: Icon(Icons.image_not_supported),
                        ),
                      )
                    : const Center(child: Icon(Icons.image_not_supported)),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      product.name,
                      style: const TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    Text(
                      product.brandName,
                      style: const TextStyle(fontSize: 10, color: Colors.grey),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    const SizedBox(height: 4),
                    Text(
                      _getPriceRange(),
                      style: TextStyle(
                        fontSize: 11,
                        color: Theme.of(context).colorScheme.primary,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  String _getPriceRange() {
    if (product.variants.isEmpty) return 'N/A';
    final prices = product.variants.map((v) => v.basePrice).whereType<num>().toList();
    if (prices.isEmpty) return 'N/A';
    final minPrice = prices.reduce((a, b) => a < b ? a : b);
    final maxPrice = prices.reduce((a, b) => a > b ? a : b);
    if (minPrice == maxPrice) return PriceFormatter.format(minPrice.toDouble());
    return PriceFormatter.formatRange(minPrice.toDouble(), maxPrice.toDouble());
  }
}
