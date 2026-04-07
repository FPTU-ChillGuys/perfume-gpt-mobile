import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import '../../../../core/theme/app_colors.dart';
import '../../../../domain/entities/review.dart';
import '../providers/review_providers.dart';

class MyReviewsPage extends ConsumerWidget {
  const MyReviewsPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final reviewsAsync = ref.watch(myReviewsProvider);

    return Scaffold(
      backgroundColor: AppColors.surface,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 120,
            pinned: true,
            systemOverlayStyle: SystemUiOverlayStyle.light,
            backgroundColor: AppColors.primaryDark,
            flexibleSpace: FlexibleSpaceBar(
              title: const Text('Đánh giá của tôi',
                  style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18)),
              background: Container(
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    colors: [AppColors.heroStart, AppColors.heroEnd],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                ),
              ),
            ),
          ),
          reviewsAsync.when(
            data: (reviews) {
              if (reviews.isEmpty) {
                return SliverFillRemaining(
                  child: Center(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(Icons.rate_review_outlined, size: 64,
                            color: AppColors.textSecondary.withValues(alpha: 0.5)),
                        const SizedBox(height: 16),
                        const Text('Chưa có đánh giá nào',
                            style: TextStyle(fontSize: 16, color: AppColors.textSecondary)),
                        const SizedBox(height: 8),
                        Text('Đánh giá sản phẩm sau khi nhận hàng',
                            style: TextStyle(fontSize: 13, color: AppColors.textSecondary.withValues(alpha: 0.7))),
                      ],
                    ),
                  ),
                );
              }
              return SliverPadding(
                padding: const EdgeInsets.all(16),
                sliver: SliverList.separated(
                  itemCount: reviews.length,
                  separatorBuilder: (_, _) => const SizedBox(height: 12),
                  itemBuilder: (_, i) => _ReviewCard(review: reviews[i]),
                ),
              );
            },
            loading: () => const SliverFillRemaining(
              child: Center(child: CircularProgressIndicator(color: AppColors.primary)),
            ),
            error: (e, _) => SliverFillRemaining(
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Text('Lỗi khi tải đánh giá', style: TextStyle(color: AppColors.textSecondary)),
                    const SizedBox(height: 8),
                    TextButton(
                      onPressed: () => ref.invalidate(myReviewsProvider),
                      child: const Text('Thử lại'),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _ReviewCard extends StatelessWidget {
  final Review review;
  const _ReviewCard({required this.review});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: AppColors.border),
        boxShadow: [
          BoxShadow(color: Colors.black.withValues(alpha: 0.04), blurRadius: 8, offset: const Offset(0, 2)),
        ],
      ),
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // ── Header ──
          Row(
            children: [
              Expanded(
                child: Text(review.variantName ?? 'Sản phẩm',
                    style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 14, color: AppColors.textPrimary)),
              ),
              Text(
                DateFormat('dd/MM/yyyy').format(review.createdAt),
                style: const TextStyle(fontSize: 12, color: AppColors.textSecondary),
              ),
            ],
          ),
          const SizedBox(height: 8),

          // ── Stars ──
          Row(
            children: List.generate(5, (i) => Icon(
              i < review.rating ? Icons.star_rounded : Icons.star_outline_rounded,
              color: i < review.rating ? Colors.amber : AppColors.border,
              size: 20,
            )),
          ),
          const SizedBox(height: 8),

          // ── Comment ──
          if (review.comment != null && review.comment!.isNotEmpty)
            Text(review.comment!, style: const TextStyle(fontSize: 13, color: AppColors.textPrimary, height: 1.5)),

          // ── Shop answer ──
          if (review.answerContent != null && review.answerContent!.isNotEmpty) ...[
            const SizedBox(height: 12),
            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: AppColors.primaryLight,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Row(
                    children: [
                      Icon(Icons.store, size: 14, color: AppColors.primary),
                      SizedBox(width: 4),
                      Text('Phản hồi từ shop',
                          style: TextStyle(fontSize: 12, fontWeight: FontWeight.w600, color: AppColors.primary)),
                    ],
                  ),
                  const SizedBox(height: 6),
                  Text(review.answerContent!, style: const TextStyle(fontSize: 13, color: AppColors.textPrimary)),
                ],
              ),
            ),
          ],
        ],
      ),
    );
  }
}
