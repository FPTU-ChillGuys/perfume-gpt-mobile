import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:perfumegpt_ai_api_client/perfumegpt_ai_api_client.dart';
import '../../../../core/utils/price_formatter.dart';

class SurveyProductCard extends StatelessWidget {
  final MobileSurveyProduct product;

  const SurveyProductCard({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    final productId = product.id.trim();
    return Card(
      clipBehavior: Clip.antiAlias,
      elevation: 2,
      child: InkWell(
        onTap: productId.isEmpty
            ? null
            : () => context.push('/product/$productId'),
        child: SizedBox(
          height: 100,
          child: Row(
            children: [
              SizedBox(
                width: 100,
                height: 100,
                child: product.primaryImage.isNotEmpty
                    ? Image.network(
                        product.primaryImage,
                        fit: BoxFit.cover,
                        errorBuilder: (context, error, stackTrace) =>
                            const Center(
                              child: Icon(Icons.image_not_supported),
                            ),
                      )
                    : const Center(child: Icon(Icons.image_not_supported)),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 12,
                    vertical: 8,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        product.name,
                        style: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                      const SizedBox(height: 2),
                      Text(
                        product.brandName,
                        style: const TextStyle(
                          fontSize: 12,
                          color: Colors.grey,
                        ),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                      const SizedBox(height: 4),
                      Text(
                        formatPrice(product),
                        style: TextStyle(
                          fontSize: 13,
                          color: Theme.of(context).colorScheme.primary,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  static String formatPrice(MobileSurveyProduct product) {
    final minPrice = product.minPrice.toDouble();
    final maxPrice = product.maxPrice.toDouble();
    if (minPrice == 0 && maxPrice == 0) return 'Liên hệ';
    return PriceFormatter.formatRange(minPrice, maxPrice);
  }
}
