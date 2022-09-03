import 'package:flutter/material.dart';

class TagsField extends StatelessWidget {
  const TagsField({
    Key? key,
    required this.tags,
    required this.hintText,
    this.filledColor,
    this.onAddPressed,
    this.onDeleted,
  }) : super(key: key);

  final List<String> tags;
  final String hintText;
  final Color? filledColor;
  final Function()? onAddPressed;
  final Function(String phone)? onDeleted;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(
            top: tags.isNotEmpty ? 8.0 : 0,
            bottom: tags.isNotEmpty ? 14.0 : 0,
          ),
          child: Wrap(
            spacing: 5.0,
            runSpacing: 8.0,
            children: tags
                .map((e) => Chip(
                      label: Text(
                        e,
                        style: TextStyle(
                          color: Theme.of(context).colorScheme.onPrimary,
                        ),
                      ),
                      deleteIconColor: Theme.of(context).colorScheme.onPrimary,
                      backgroundColor:
                          Theme.of(context).colorScheme.primary.withOpacity(1),
                      onDeleted: () => onDeleted?.call(e),
                    ))
                .toList(),
          ),
        ),
        InkWell(
          onTap: onAddPressed,
          borderRadius: BorderRadius.circular(8.0),
          child: AbsorbPointer(
            child: Stack(
              alignment: Alignment.center,
              children: [
                TextFormField(
                  decoration: InputDecoration(
                    hintText: hintText,
                    fillColor: filledColor,
                  ),
                  onChanged: (newValue) {},
                ),
                Positioned(
                  right: 8,
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.add,
                      color: Theme.of(context).primaryColor,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
