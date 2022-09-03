import 'dart:io';

import 'package:flutter/foundation.dart' hide Category;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:shimmer/shimmer.dart';

import '../../../bloc/product_form_bloc.dart';
import '../../../data/models/city.dart';
import '../../../data/models/region.dart';
import '../../../imports.dart';
import '../../screens/other/phone_input_screen.dart';
import '../../screens/other/select_category_screen.dart';
import '../app_network_image.dart';
import '../control/loadable_button.dart';
import '../control/styled_app_dropdown.dart';
import '../control/tags_field.dart';
import '../custom_card.dart';

class ProductForm extends StatelessWidget {
  const ProductForm({
    Key? key,
    this.images = const [],
    this.regions = const [],
    this.loadingCategory = false,
    this.isSending = false,
    this.onPickImagesTap,
    this.onRemoveImage,
    this.onSendTap,
    this.buttonText,
  }) : super(key: key);

  final String? buttonText;
  final bool loadingCategory;
  final bool isSending;
  final List<File> images;
  final List<Region> regions;
  final Function()? onPickImagesTap;
  final Function(int index)? onRemoveImage;
  final Function()? onSendTap;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: BlocBuilder<ProductFormBloc, ProductFormState>(
        builder: (context, state) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              const SizedBox(height: 20),
              const _Title(text: 'Фотографии'),
              CustomCard(
                child: ImagesGrid(
                  images: images,
                  onTap: onPickImagesTap,
                  onRemove: onRemoveImage,
                ),
              ),
              const SizedBox(height: 20),
              const _Title(text: 'Категория *'),
              CustomCard(
                padding: EdgeInsets.zero,
                child: ListTile(
                  onTap: () async {
                    final category = await Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (_) => const SelectCategoryScreen(),
                      ),
                    );
                    if (category != null) {
                      context
                          .read<ProductFormBloc>()
                          .add(FormValueChangedEvent(category: category));
                    }
                  },
                  leading: const Icon(Feather.settings),
                  title: loadingCategory
                      ? Shimmer.fromColors(
                          child: const Text('Загрузка категорий...'),
                          baseColor: Colors.white,
                          highlightColor: Colors.grey,
                        )
                      : Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              state.model.category?.name ?? 'select'.tr(),
                              style: TextStyle(
                                color: context.theme.primaryColor,
                                fontSize: 16,
                              ),
                            )
                          ],
                        ),
                  trailing: const Icon(Icons.arrow_forward_ios),
                ),
              ),
              const SizedBox(height: 30),
              const _Title(text: 'Загаловок *'),
              CustomCard(
                padding: EdgeInsets.zero,
                child: TextFormField(
                  maxLength: 100,
                  onChanged: (value) {
                    addEvent(context, FormValueChangedEvent(title: value));
                  },
                  decoration: const InputDecoration(
                    counterText: '',
                    filled: false,
                  ),
                ),
              ),
              const SizedBox(height: 30),
              const _Title(text: 'Описание *'),
              CustomCard(
                padding: EdgeInsets.zero,
                child: TextFormField(
                  onChanged: (value) {
                    addEvent(
                        context, FormValueChangedEvent(description: value));
                  },
                  decoration: const InputDecoration(
                    hintText: 'Напишите про характеристики,'
                        ' особенности и состояние',
                    filled: false,
                    counterText: '',
                  ),
                  maxLines: 5,
                  maxLength: 550,
                ),
              ),
              const SizedBox(height: 30),
              const _Title(text: 'Цена *'),
              CustomCard(
                padding: EdgeInsets.zero,
                child: Column(
                  children: [
                    TextFormField(
                      maxLength: 100,
                      keyboardType: TextInputType.number,
                      inputFormatters: [
                        FilteringTextInputFormatter.digitsOnly,
                      ],
                      onChanged: (value) {
                        addEvent(
                          context,
                          FormValueChangedEvent(price: double.tryParse(value)),
                        );
                      },
                      decoration: const InputDecoration(
                        hintText: 'Цена',
                        filled: false,
                        counterText: '',
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 30),
              const SizedBox(height: 30),
              const _Title(text: 'Расположение *'),
              CustomCard(
                padding: EdgeInsets.zero,
                child: Column(
                  children: [
                    StyledDropDown<Region>(
                      list: regions,
                      displayItem: (value) => value.name,
                      label: 'region'.tr(),
                      onChanged: (value) {
                        addEvent(context, FormValueChangedEvent(region: value));
                      },
                    ),
                    StyledDropDown<City>(
                      list: state.model.region?.cities ?? [],
                      displayItem: (value) => value.name,
                      label: 'city'.tr(),
                      onChanged: (value) {
                        addEvent(context, FormValueChangedEvent(city: value));
                      },
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 30),
              const _Title(text: 'Телефон *'),
              CustomCard(
                padding: EdgeInsets.zero,
                child: TagsField(
                  tags: state.model.phones ?? [],
                  hintText: 'enter_your_phone'.tr(),
                  filledColor: Colors.transparent,
                  onAddPressed: () async {
                    final newPhone = await Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const PhoneInputScreen(),
                      ),
                    );

                    if (state.model.phones?.contains(newPhone) ?? false) {
                      return;
                    }

                    addEvent(context, AddPhoneEvent(newPhone));
                  },
                  onDeleted: (phone) {
                    addEvent(context, DeletePhoneEvent(phone));
                  },
                ),
              ),
              const SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: LoadableButton(
                  text: buttonText ?? ' Отправить',
                  loading: isSending,
                  onPressed: onSendTap,
                ),
              ),
              const SizedBox(height: 100),
            ],
          );
        },
      ),
    );
  }

  void addEvent(BuildContext context, ProductFormEvent event) {
    context.read<ProductFormBloc>().add(event);
  }
}

class _Title extends StatelessWidget {
  const _Title({Key? key, required this.text}) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15, bottom: 8),
      child: Text(
        text.toUpperCase(),
        style: const TextStyle(fontSize: 16),
      ),
    );
  }
}

class ImagesGrid extends StatelessWidget {
  const ImagesGrid({
    Key? key,
    required this.images,
    this.isAsset = true,
    this.onTap,
    this.onRemove,
  }) : super(key: key);

  final List images;
  final bool isAsset;
  final Function()? onTap;
  final Function(int index)? onRemove;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      primary: false,
      shrinkWrap: true,
      itemCount: images.length + 1,
      itemBuilder: (BuildContext context, int index) {
        if (index == 0) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 5),
            child: Container(
              height: 100,
              decoration: BoxDecoration(
                // color: Theme.of(context).greyWeak,
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: InkWell(
                onTap: onTap,
                radius: 8.0,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.camera,
                      size: 30,
                      color: context.appTheme.greyMediumColor,
                    ),
                    const SizedBox(height: 10),
                    Center(
                      child: Text(
                        'Добавить изображение',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Theme.of(context).primaryColor,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        }

        return SizedBox(
          height: 110,
          width: 110,
          child: Stack(
            alignment: Alignment.center,
            children: [
              Container(
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                  color: context.appTheme.greyWeakColor,
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: isAsset
                      ? images[index - 1] != null
                          ? kIsWeb
                              ? Image.network(
                                  images[index - 1].path,
                                  fit: BoxFit.cover,
                                )
                              : Image.file(
                                  images[index - 1],
                                  fit: BoxFit.cover,
                                )
                          : const SizedBox()
                      : AppNetworkImage(
                          imageUrl: images[index - 1].image,
                        ),
                ),
              ),
              isAsset
                  ? Positioned(
                      top: -10,
                      right: -10,
                      child: IconButton(
                        onPressed: () {
                          onRemove?.call(index - 1);
                        },
                        icon: Container(
                          height: 20,
                          width: 20,
                          decoration: BoxDecoration(
                            color: Colors.redAccent,
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          child: const Icon(
                            Icons.close,
                            color: Colors.white,
                            size: 16,
                          ),
                        ),
                      ),
                    )
                  : const SizedBox(),
            ],
          ),
        );
      },
      gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
        // crossAxisCount: 6,
        mainAxisSpacing: 10,
        crossAxisSpacing: 15,
        maxCrossAxisExtent: 120,
      ),
    );
  }
}
