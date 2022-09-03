import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../data/models/product.dart';
import '../../../imports.dart';
import '../../shared_contents/control/loadable_button.dart';
import '../../shared_contents/image_carousel_with_indicator.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: const Icon(Icons.arrow_back_ios),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.share),
            onPressed: () {
              // TODO: Кнопка поделиться
            },
          ),
        ],
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20.0,
          vertical: 20,
        ),
        child: LoadableButton(
          text: 'call'.tr(),
          onPressed: () {
            showPhonesBottomSheet(context, product.phones);
          },
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: context.theme.colorScheme.surface,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Hero(
                    tag: 'product_${product.id}_carousel',
                    child: ImageCarouselWithIndicator(
                      images: product.images,
                      height: 350,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              color: context.theme.colorScheme.surface,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 10),
                  Text(
                    'Добавлено ' + product.formattedDate,
                    style: context.theme.textTheme.labelSmall,
                  ),
                  const Divider(),
                  const SizedBox(height: 15),
                  Text(
                    product.title,
                    style: context.theme.textTheme.titleLarge,
                  ),
                  const SizedBox(height: 8),
                  Text(
                    '${product.price} COM',
                    style: context.theme.textTheme.titleMedium,
                  ),
                  const SizedBox(height: 20),
                  Row(
                    children: [
                      Icon(
                        Feather.map_pin,
                        size: 16,
                      ),
                      const SizedBox(width: 10),
                      Text(
                        '${product.region} / ${product.city}',
                      )
                    ],
                  ),
                  const SizedBox(height: 20),
                  Text(
                    'Категория',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(height: 5),
                  Text(product.category),
                  const SizedBox(height: 10),
                  const Divider(),
                  const SizedBox(height: 5),
                  Text(product.description),
                  const SizedBox(height: 10),
                ],
              ),
            ),
            const SizedBox(height: 10),
            ListView.separated(
              shrinkWrap: true,
              itemBuilder: (context, index) => ListTile(
                onTap: () {
                  launch('tel: ' + product.phones[index]);
                },
                title: Text(
                  product.phones[index],
                  style: const TextStyle(
                    fontSize: 16,
                    color: Colors.blue,
                  ),
                ),
                trailing: const Icon(
                  Entypo.mobile,
                  color: Colors.blue,
                  size: 20,
                ),
                tileColor: context.theme.colorScheme.surface,
              ),
              separatorBuilder: (_, __) => const Divider(height: 1),
              itemCount: product.phones.length,
            ),
            const SizedBox(height: 180),
          ],
        ),
      ),
    );
  }

  Future<void> showPhonesBottomSheet(
      BuildContext context, List<String> phones) {
    return showModalBottomSheet(
      context: context,
      builder: (context) {
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Card(
              margin: EdgeInsets.zero,
              child: Padding(
                padding: const EdgeInsets.only(left: 15.0, top: 5, bottom: 5),
                child: Row(
                  children: [
                    const Text(
                      'Выберите номер',
                      style: TextStyle(fontSize: 16),
                    ),
                    const Spacer(),
                    IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: const Icon(MaterialCommunityIcons.close),
                    ),
                  ],
                ),
              ),
            ),
            if (phones.isNotEmpty) ...[
              ...phones.map((e) {
                if (e.isNotEmpty) {
                  return ListTile(
                    title: Text('+ $e'),
                    onTap: () {
                      launch('tel: +$e');
                    },
                  );
                }

                return const SizedBox();
              }),
            ] else
              SizedBox(
                height: 100,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text('Кажется, тут пусто'),
                  ],
                ),
              ),
            const SizedBox(height: 15),
          ],
        );
      },
    );
  }
}
