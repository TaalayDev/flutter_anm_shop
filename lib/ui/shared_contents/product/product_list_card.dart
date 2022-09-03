import 'package:flutter/material.dart';

import '../../../data/models/product.dart';
import '../../../imports.dart';
import '../app_network_image.dart';

class ProductListCard extends StatelessWidget {
  const ProductListCard({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    final heroTag = 'product_image_${product.id}';

    return InkWell(
      borderRadius: BorderRadius.circular(10),
      onTap: () {},
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: context.theme.colorScheme.surface,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Hero(
              tag: heroTag,
              child: ClipRRect(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  bottomLeft: Radius.circular(10),
                ),
                child: Container(
                  color: Colors.blueGrey.shade400,
                  child: AppNetworkImage(
                    imageUrl: product.images[0],
                    height: 120,
                    width: 120,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            const SizedBox(width: 10),
            SizedBox(
              height: 120,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 15),
                      Container(
                        child: Text(
                          product.title,
                          style: Theme.of(context).textTheme.titleMedium,
                          textAlign: TextAlign.start,
                        ),
                        alignment: Alignment.topLeft,
                      ),
                      const SizedBox(height: 2),
                      Text(
                        "${product.price} COM",
                        style: Theme.of(context).textTheme.bodySmall,
                      ),
                      const SizedBox(height: 12),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.calendar_month,
                        size: 12,
                        color: Colors.grey.shade700,
                      ),
                      const SizedBox(width: 5),
                      Text(
                        product.formattedDate,
                        style: context.theme.textTheme.bodySmall
                            ?.copyWith(fontSize: 10),
                      ),
                    ],
                  ),
                  const SizedBox(width: 10),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
