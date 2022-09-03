import 'package:flutter/material.dart';

class FilterRow extends StatelessWidget {
  const FilterRow({
    Key? key,
    required this.icon,
    required this.title,
  }) : super(key: key);

  final IconData icon;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Icon(
            icon,
            color: Colors.grey,
          ),
          SizedBox(width: 4),
          Text(
            title,
            style:
                Theme.of(context).textTheme.bodyMedium?.copyWith(fontSize: 12),
          ),
        ],
      ),
    );
  }
}
