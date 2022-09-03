import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({
    Key? key,
    required this.child,
    this.padding,
  }) : super(key: key);

  final Widget child;
  final EdgeInsets? padding;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(0),
      ),
      child: Padding(
        padding: padding ??
            const EdgeInsets.symmetric(
              horizontal: 15,
              vertical: 8,
            ),
        child: child,
      ),
    );
  }
}
