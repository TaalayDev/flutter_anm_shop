import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:malbazar/ui/shared_contents/control/loadable_button.dart';

import '../../../bloc/app_bloc.dart';
import '../../../data/models/category.dart';
import '../../../data/repositories/category_repo.dart';

class SelectCategoryScreen extends StatefulWidget {
  const SelectCategoryScreen({Key? key}) : super(key: key);

  @override
  State<SelectCategoryScreen> createState() => _SelectCategoryScreenState();
}

class _SelectCategoryScreenState extends State<SelectCategoryScreen> {
  Category? selectedCategory;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Выберите категорию'),
        leading: const Icon(Icons.close),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 15),
        child: Stack(
          children: [
            BlocBuilder<AppBloc, AppState>(
              builder: (context, state) {
                return CategoryList(
                  list: state.categories.data,
                  onTap: (index, category) {
                    setState(() {
                      selectedCategory = category;
                    });
                  },
                );
              },
            ),
            selectedCategory != null
                ? Positioned(
                    bottom: 10,
                    left: 0,
                    right: 0,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: LoadableButton(
                        text: 'Выбрать '
                            '${selectedCategory?.name}',
                        onPressed: () {
                          Navigator.pop(context, selectedCategory);
                        },
                      ),
                    ),
                  )
                : const SizedBox(),
          ],
        ),
      ),
    );
  }
}

class CategoryList extends StatelessWidget {
  const CategoryList({
    Key? key,
    required this.list,
    this.onTap,
  }) : super(key: key);

  final List<Category> list;
  final Function(int index, Category category)? onTap;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemBuilder: (context, index) {
        final category = list[index];
        return ListTile(
          onTap: () => onTap?.call(index, category),
          contentPadding:
              const EdgeInsets.symmetric(vertical: 8, horizontal: 15),
          title: Text(category.name),
        );
      },
      separatorBuilder: (context, index) => const Divider(height: 0),
      itemCount: list.length,
    );
  }
}
