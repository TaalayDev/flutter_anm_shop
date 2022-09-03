import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class PhoneField extends StatefulWidget {
  const PhoneField({
    Key? key,
    this.errorText,
    this.controller,
    this.onChanged,
  }) : super(key: key);

  final String? errorText;
  final TextEditingController? controller;
  final Function(String value)? onChanged;

  @override
  State<PhoneField> createState() => _PhoneFieldState();
}

class _PhoneFieldState extends State<PhoneField> {
  final phoneFormatter = MaskTextInputFormatter(
    mask: '### ### ### ###',
    filter: {"#": RegExp(r'[0-9]')},
  );
  String value = '996';

  @override
  Widget build(BuildContext context) {
    return TextField(
      maxLength: 13,
      controller: widget.controller,
      inputFormatters: [
        phoneFormatter,
      ],
      onChanged: (phone) {
        widget.onChanged?.call(value + phone);
      },
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
        // hintText: 'phone'.tr,
        errorText: widget.errorText,
        prefixIcon: Padding(
          padding: const EdgeInsets.only(left: 25, right: 5, bottom: 2),
          child: dropdown(),
        ),
        counterText: '',
      ),
    );
  }

  dropdown() {
    return SizedBox(
      width: 58,
      child: PopupMenuButton<String>(
        itemBuilder: (context) => [
          PopupMenuItem(
            value: '996',
            onTap: () {},
            child: const Text('+996'),
          ),
        ],
        onSelected: (item) {
          setState(() {
            value = item;
          });
        },
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('+$value'),
            const Icon(Icons.keyboard_arrow_down),
          ],
        ),
      ),
    );
  }
}
