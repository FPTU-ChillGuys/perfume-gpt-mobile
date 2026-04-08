import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';
import '../../../../core/theme/app_colors.dart';
import '../../../../core/utils/image_url_helper.dart';
import '../../../../core/utils/price_formatter.dart';
import '../../../../domain/entities/review.dart';
import '../providers/review_providers.dart';

class ReviewDetailPage extends ConsumerWidget {
  final String reviewId;
  const ReviewDetailPage({super.key, required this.reviewId});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final detailAsync = ref.watch(reviewDetailProvider(reviewId));

    return Scaffold(
      backgroundColor: AppColors.surface,
      appBar: AppBar(
        title: const Text('Chi tiết đánh giá'),
        backgroundColor: AppColors.primaryDark,
        foregroundColor: Colors.white,
        systemOverlayStyle: SystemUiOverlayStyle.light,
        actions: [
          IconButton( 
            icon: const Icon(Icons.delete_outline),
            onPressed: () => _confirmDelete(context, ref),
          ),
        ],
      ),
      body: detailAsync.when(
        data: (review) => _buildContent(context, review),
        loading: () => const Center(child: CircularProgressIndicator(color: AppColors.primary)),
        error: (e, _) => Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Text('Không thể tải đánh giá', style: TextStyle(color: AppColors.textSecondary)),
              const SizedBox(height: 8),
              TextButton(
                onPressed: () => ref.invalidate(reviewDetailProvider(reviewId)),
                child: const Text('Thử lại'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildContent(BuildContext context, ReviewDetail review) {
    return ListView(
      padding: const EdgeInsets.all(16),
      children: [
        // ── Product info ──
        Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(14),
            border: Border.all(color: AppColors.border),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                review.productName ?? review.variantName ?? 'Sản phẩm',
                style: const TextStyle(fontWeight: FontWeight.w700, fontSize: 16, color: AppColors.textPrimary),
              ),
              const SizedBox(height: 6),
              if (review.variantName != null)
                Text(review.variantName!,
                    style: const TextStyle(fontSize: 13, color: AppColors.textSecondary)),
              if (review.concentrationName != null || review.volumeMl != null) ...[
                const SizedBox(height: 4),
                Text(
                  [
                    if (review.concentrationName != null) review.concentrationName!,
                    if (review.volumeMl != null) '${review.volumeMl}ml',
                  ].join(' · '),
                  style: const TextStyle(fontSize: 12, color: AppColors.textSecondary),
                ),
              ],
              if (review.quantity != null && review.unitPrice != null) ...[
                const SizedBox(height: 6),
                Text(
                  'x${review.quantity} · ${PriceFormatter.format(review.unitPrice!)}',
                  style: const TextStyle(fontSize: 12, color: AppColors.textSecondary),
                ),
              ],
            ],
          ),
        ),
        const SizedBox(height: 16),

        // ── Rating ──
        Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(14),
            border: Border.all(color: AppColors.border),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  ...List.generate(5, (i) => Icon(
                    i < review.rating ? Icons.star_rounded : Icons.star_outline_rounded,
                    color: i < review.rating ? Colors.amber : AppColors.border,
                    size: 28,
                  )),
                  const SizedBox(width: 12),
                  Text(
                    _ratingLabel(review.rating),
                    style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w600, color: AppColors.textPrimary),
                  ),
                ],
              ),
              const SizedBox(height: 4),
              Text(
                DateFormat('dd/MM/yyyy HH:mm').format(review.createdAt),
                style: const TextStyle(fontSize: 12, color: AppColors.textSecondary),
              ),
            ],
          ),
        ),
        const SizedBox(height: 16),

        // ── Comment ──
        if (review.comment != null && review.comment!.isNotEmpty)
          Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(14),
              border: Border.all(color: AppColors.border),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text('Nhận xét',
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 14, color: AppColors.textPrimary)),
                const SizedBox(height: 8),
                Text(review.comment!,
                    style: const TextStyle(fontSize: 14, color: AppColors.textPrimary, height: 1.6)),
              ],
            ),
          ),

        // ── Images ──
        if (review.images.isNotEmpty) ...[
          const SizedBox(height: 16),
          Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(14),
              border: Border.all(color: AppColors.border),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Hình ảnh (${review.images.length})',
                    style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 14, color: AppColors.textPrimary)),
                const SizedBox(height: 12),
                Wrap(
                  spacing: 8,
                  runSpacing: 8,
                  children: review.images.map((img) => ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.network(
                      ImageUrlHelper.resolve(img.url),
                      width: 100,
                      height: 100,
                      fit: BoxFit.cover,
                      errorBuilder: (_, _, _) => Container(
                        width: 100, height: 100,
                        color: Colors.grey.shade200,
                        child: const Icon(Icons.broken_image, size: 28, color: Colors.grey),
                      ),
                    ),
                  )).toList(),
                ),
              ],
            ),
          ),
        ],

        // ── Staff feedback ──
        if (review.staffFeedbackComment != null && review.staffFeedbackComment!.isNotEmpty) ...[
          const SizedBox(height: 16),
          Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: AppColors.primaryLight,
              borderRadius: BorderRadius.circular(14),
              border: Border.all(color: AppColors.primaryBorder.withValues(alpha: 0.3)),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    const Icon(Icons.store, size: 16, color: AppColors.primary),
                    const SizedBox(width: 6),
                    const Text('Phản hồi từ shop',
                        style: TextStyle(fontWeight: FontWeight.w600, fontSize: 14, color: AppColors.primary)),
                    const Spacer(),
                    if (review.staffFeedbackAt != null)
                      Text(
                        DateFormat('dd/MM/yyyy').format(review.staffFeedbackAt!),
                        style: const TextStyle(fontSize: 11, color: AppColors.textSecondary),
                      ),
                  ],
                ),
                const SizedBox(height: 8),
                Text(review.staffFeedbackComment!,
                    style: const TextStyle(fontSize: 14, color: AppColors.textPrimary, height: 1.5)),
              ],
            ),
          ),
        ],
      ],
    );
  }

  void _confirmDelete(BuildContext context, WidgetRef ref) {
    showDialog(
      context: context,
      builder: (ctx) => AlertDialog(
        title: const Text('Xóa đánh giá'),
        content: const Text('Bạn có chắc chắn muốn xóa đánh giá này?'),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(ctx),
            child: const Text('Hủy'),
          ),
          TextButton(
            onPressed: () async {
              Navigator.pop(ctx);
              try {
                await ref.read(reviewRepositoryProvider).deleteReview(reviewId);
                ref.invalidate(myReviewsProvider);
                if (context.mounted) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Đã xóa đánh giá')),
                  );
                  context.pop();
                }
              } catch (e) {
                if (context.mounted) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('Lỗi: $e')),
                  );
                }
              }
            },
            style: TextButton.styleFrom(foregroundColor: Colors.red),
            child: const Text('Xóa'),
          ),
        ],
      ),
    );
  }

  String _ratingLabel(int r) {
    switch (r) {
      case 1: return 'Rất không hài lòng';
      case 2: return 'Không hài lòng';
      case 3: return 'Bình thường';
      case 4: return 'Hài lòng';
      case 5: return 'Rất hài lòng';
      default: return '';
    }
  }
}
