import 'package:animate_icons/animate_icons.dart';
import 'package:flutter/material.dart';

import '../app_expandable.dart';

class StyledDropDown<T> extends StatefulWidget {
  final List<T> list;
  final String? label;
  final T? value;
  final double borderRadius;
  final String Function(T val) displayItem;
  final Function(T item)? onChanged;

  const StyledDropDown({
    Key? key,
    required this.list,
    required this.displayItem,
    this.label,
    this.value,
    this.borderRadius = 6.0,
    this.onChanged,
  }) : super(key: key);

  @override
  _StyledDropDownState<T> createState() => _StyledDropDownState<T>();
}

class _StyledDropDownState<T> extends State<StyledDropDown<T>> {
  late final AnimateIconController _animateIconController;
  bool _isOpen = false;
  T? _selectedItem;

  @override
  void initState() {
    _animateIconController = AnimateIconController();
    _selectedItem = widget.value;
    super.initState();
  }

  @override
  void didUpdateWidget(covariant StyledDropDown<T> oldWidget) {
    if (widget.value != oldWidget.value) {
      setState(() {
        _selectedItem = widget.value;
      });
    }

    super.didUpdateWidget(oldWidget);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          borderRadius: _isOpen
              ? BorderRadius.only(
                  topLeft: Radius.circular(widget.borderRadius),
                  topRight: Radius.circular(widget.borderRadius),
                )
              : BorderRadius.circular(widget.borderRadius),
          onTap: () {
            _openClose();
          },
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.surface,
              borderRadius: _isOpen
                  ? BorderRadius.only(
                      topLeft: Radius.circular(widget.borderRadius),
                      topRight: Radius.circular(widget.borderRadius),
                    )
                  : BorderRadius.circular(widget.borderRadius),
            ),
            child: ListTile(
              contentPadding: const EdgeInsets.only(left: 18),
              title: Text(
                _selectedItem != null
                    ? widget.displayItem(_selectedItem!)
                    : widget.label ?? '',
                style: TextStyle(
                  fontSize: 16,
                  color: Theme.of(context)
                      .colorScheme
                      .onBackground
                      .withOpacity(_selectedItem != null ? 1.0 : 0.5),
                ),
              ),
              trailing: AnimateIcons(
                startIcon: Icons.keyboard_arrow_down,
                endIcon: Icons.keyboard_arrow_up,
                endIconColor: Colors.grey,
                startIconColor: Colors.grey,
                duration: const Duration(milliseconds: 500),
                onEndIconPress: () {
                  _openClose();
                  return true;
                },
                onStartIconPress: () {
                  _openClose();
                  return true;
                },
                controller: _animateIconController,
              ),
            ),
          ),
        ),
        Container(
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.surface,
            borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(6.0),
              bottomRight: Radius.circular(6.0),
            ),
          ),
          child: AppExpandable(
            expand: _isOpen,
            maxHeight: 250,
            child: Column(
              children: [
                const Divider(height: 0, color: Colors.black87),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: widget.list.asMap().entries.map(
                      (e) {
                        final _textColor = Theme.of(context)
                            .colorScheme
                            .onBackground
                            .withOpacity(0.5);
                        return InkWell(
                          onTap: () {
                            setState(() {
                              _selectedItem = e.value;
                            });
                            widget.onChanged?.call(e.value);
                            _openClose();
                          },
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 12, vertical: 10.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  widget.displayItem(e.value),
                                  style: TextStyle(
                                    color: _textColor,
                                    fontSize: 16,
                                  ),
                                ),
                                _radio(e.value),
                              ],
                            ),
                          ),
                        );
                      },
                    ).toList(),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  _radio(value) {
    final greyColor = Colors.grey.withOpacity(0.5);
    return Container(
      height: 18,
      width: 18,
      padding: const EdgeInsets.all(2.0),
      decoration: BoxDecoration(
        border: Border.all(color: greyColor),
        borderRadius: BorderRadius.circular(50.0),
      ),
      child: Container(
        padding: const EdgeInsets.all(1.0),
        decoration: BoxDecoration(
          color: value == _selectedItem
              ? Theme.of(context).primaryColor
              : greyColor,
          borderRadius: BorderRadius.circular(50.0),
        ),
      ),
    );
  }

  _openClose() => setState(() {
        _isOpen = !_isOpen;
        _isOpen
            ? _animateIconController.animateToEnd()
            : _animateIconController.animateToStart();
      });
}
