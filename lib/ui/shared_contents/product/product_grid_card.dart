import 'package:flutter/material.dart';
import 'package:malbazar/data/models/product.dart';
import 'package:malbazar/imports.dart';
import 'package:malbazar/ui/shared_contents/image_carousel_with_indicator.dart';

class ProductGridCard extends StatelessWidget {
  const ProductGridCard({
    Key? key,
    required this.product,
    this.onTap,
  }) : super(key: key);

  final Product product;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.surface,
          borderRadius: BorderRadius.all(Radius.circular(6)),
          border: Border.all(color: Colors.grey.shade200),
        ),
        margin: EdgeInsets.all(8),
        child: Stack(
          children: <Widget>[
            Column(
              children: [
                Hero(
                  tag: 'product_${product.id}_carousel',
                  child: ImageCarouselWithIndicator(
                    images: product.images,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(6),
                      topRight: Radius.circular(6),
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          child: Text(
                            product.title,
                            style: Theme.of(context).textTheme.titleSmall,
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
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
            if (product.isNew)
              Positioned(
                right: 10,
                top: 8,
                child: Container(
                  alignment: Alignment.center,
                  width: 30,
                  height: 22,
                  decoration: BoxDecoration(
                    color: Colors.redAccent,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Text(
                    "NEW",
                    textAlign: TextAlign.center,
                    style: Theme.of(context)
                        .textTheme
                        .labelSmall
                        ?.copyWith(fontSize: 8, color: Colors.white),
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
