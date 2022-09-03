import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart' show Feather;

class SearchField extends StatefulWidget {
  const SearchField({
    Key? key,
    this.onChanged,
    this.onStopEditing,
    this.fillColor,
    this.hintText,
    this.hintStyle,
  }) : super(key: key);

  final Function(String value)? onChanged;
  final Function(String value)? onStopEditing;
  final Color? fillColor;
  final String? hintText;
  final TextStyle? hintStyle;

  @override
  State<SearchField> createState() => _SearchFieldState();
}

class _SearchFieldState extends State<SearchField> {
  Timer? _timer;

  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: (value) {
        widget.onChanged?.call(value);
        if (_timer?.isActive ?? false) _timer?.cancel();

        _timer = Timer(const Duration(milliseconds: 500), () {
          widget.onStopEditing?.call(value);
        });
      },
      decoration: InputDecoration(
        hintText: widget.hintText ?? 'Поиск...',
        hintStyle: TextStyle(fontSize: 14),
        contentPadding: EdgeInsets.zero,
        prefixIcon: Icon(
          Feather.search,
          size: 18,
          color: Colors.black,
        ),
        hoverColor: widget.fillColor?.withOpacity(0.2),
        filled: true,
      ),
    );
  }
}
