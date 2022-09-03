import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:malbazar/bloc/app_bloc.dart';
import 'package:malbazar/data/models/category.dart';
import 'package:malbazar/data/models/city.dart';
import 'package:malbazar/data/models/filter.dart';
import 'package:malbazar/data/models/region.dart';
import 'package:malbazar/imports.dart';

class FilterBottomSheetContent extends StatefulWidget {
  const FilterBottomSheetContent({
    Key? key,
    this.initialFilter,
    this.onApply,
  }) : super(key: key);

  final Filter? initialFilter;
  final Function(Filter filter)? onApply;

  @override
  State<FilterBottomSheetContent> createState() =>
      _FilterBottomSheetContentState();
}

class _FilterBottomSheetContentState extends State<FilterBottomSheetContent> {
  late Filter filter;

  @override
  void initState() {
    filter = widget.initialFilter ?? Filter();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final textStyle =
        Theme.of(context).textTheme.bodyMedium?.copyWith(fontSize: 16);

    return Container(
      padding: EdgeInsets.only(left: 16, right: 16, top: 10),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.surface,
        border: Border.all(
          color: Theme.of(context).colorScheme.surface,
          width: 1,
        ),
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(16),
          topLeft: Radius.circular(16),
        ),
      ),
      width: double.infinity,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox(height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Icon(Icons.close),
            ],
          ),
          SizedBox(height: 28),
          Container(
            child: Text("Диапазон цен", style: textStyle),
            margin: EdgeInsets.only(left: 4),
          ),
          SizedBox(height: 14),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Expanded(
                child: Container(
                  height: 45,
                  child: TextFormField(
                    initialValue: filter.minPrice?.toString(),
                    decoration: InputDecoration(
                      hintText: "Минимум",
                    ),
                    onChanged: (value) {
                      setState(() {
                        filter = filter.copyWith(
                          minPrice: double.tryParse(value),
                        );
                      });
                    },
                  ),
                ),
                flex: 47,
              ),
              Expanded(
                child: Container(
                  margin: EdgeInsets.only(left: 4),
                  height: 1,
                  color: Colors.grey,
                ),
                flex: 6,
              ),
              Expanded(
                child: Container(
                  margin: EdgeInsets.only(left: 4),
                  height: 45,
                  child: TextFormField(
                    initialValue: filter.maxPrice?.toString(),
                    decoration: InputDecoration(
                      hintText: "Максимум",
                    ),
                    onChanged: (value) {
                      setState(() {
                        filter = filter.copyWith(
                          maxPrice: double.tryParse(value),
                        );
                      });
                    },
                  ),
                ),
                flex: 47,
              ),
            ],
          ),
          SizedBox(height: 16),
          Text("Категория", style: textStyle),
          SizedBox(height: 8),
          BlocBuilder<AppBloc, AppState>(
            builder: (context, state) {
              return _buildDropdownField<Category>(
                items: [
                  Category(id: '', name: 'all'.tr()),
                  ...state.categories.data,
                ],
                itemBuilder: (item) => Text(item.name),
                onChanged: (item) {
                  setState(() {
                    filter = filter.copyWith(category: item);
                  });
                },
              );
            },
          ),
          SizedBox(height: 8),
          Text("Регион", style: textStyle),
          SizedBox(height: 8),
          BlocBuilder<AppBloc, AppState>(
            builder: (context, state) {
              return _buildDropdownField<Region>(
                items: [
                  Region(id: '', name: 'all'.tr()),
                  ...state.regions.data,
                ],
                itemBuilder: (item) => Text(item.name),
                onChanged: (item) {
                  setState(() {
                    filter = filter.copyWith(region: item);
                  });
                },
              );
            },
          ),
          SizedBox(height: 8),
          Text("Город", style: textStyle),
          SizedBox(height: 8),
          BlocBuilder<AppBloc, AppState>(
            builder: (context, state) {
              return _buildDropdownField<City>(
                items: filter.region?.cities ?? [],
                itemBuilder: (item) => Text(item.name),
                onChanged: (item) {
                  setState(() {
                    filter = filter.copyWith(city: item);
                  });
                },
              );
            },
          ),
          SizedBox(height: 25),
          Container(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () => widget.onApply?.call(filter),
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(4)),
                ),
              ),
              child: Text(
                "Применить фильтр",
                style: textStyle?.copyWith(
                  color: Theme.of(context).colorScheme.onPrimary,
                ),
              ),
            ),
          ),
          SizedBox(height: 16),
        ],
      ),
    );
  }

  Widget _buildDropdownField<T>({
    required List<T> items,
    required Widget Function(T item) itemBuilder,
    T? value,
    Function(T? value)? onChanged,
  }) =>
      DropdownButtonFormField<T?>(
        icon: Icon(Icons.arrow_forward_ios, size: 15),
        value: value,
        hint: Text('all'.tr()),
        items: items
            .map((e) => DropdownMenuItem(
                  value: e,
                  child: itemBuilder(e),
                ))
            .toList(),
        onChanged: (value) => onChanged?.call(value),
      );
}
