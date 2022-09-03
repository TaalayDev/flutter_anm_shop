import 'package:flutter/material.dart';

class CustomCheckbox extends StatefulWidget {
  const CustomCheckbox({
    Key? key,
    this.initialValue = false,
    this.onChanged,
    this.size,
  }) : super(key: key);

  final bool initialValue;
  final Function(bool newValue)? onChanged;
  final double? size;

  @override
  State<CustomCheckbox> createState() => _CustomCheckboxState();
}

class _CustomCheckboxState extends State<CustomCheckbox> {
  bool checked = false;
  final radius = 6.0;

  @override
  void initState() {
    checked = widget.initialValue;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final size = widget.size ?? 25;
    return InkWell(
      borderRadius: BorderRadius.circular(radius),
      onTap: () {
        setState(() {
          checked = !checked;
        });
        widget.onChanged?.call(checked);
      },
      child: Container(
        height: size,
        width: size,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(radius),
          border: Border.all(
            color: checked ? Theme.of(context).primaryColor : Colors.grey,
          ),
        ),
        padding: const EdgeInsets.all(1.5),
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 100),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(radius - 2.0),
            color: checked ? Theme.of(context).primaryColor : null,
          ),
        ),
      ),
    );
  }
}
