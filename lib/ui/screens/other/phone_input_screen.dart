import 'package:flutter/material.dart';
import 'package:malbazar/ui/shared_contents/control/loadable_button.dart';

import '../../shared_contents/control/phone_field.dart';

class PhoneInputScreen extends StatefulWidget {
  const PhoneInputScreen({Key? key}) : super(key: key);

  @override
  State<PhoneInputScreen> createState() => _PhoneInputScreenState();
}

class _PhoneInputScreenState extends State<PhoneInputScreen> {
  String _value = '';
  String? error;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Добавить телефон'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 30),
            const Text(
              'номер телефона',
              style: TextStyle(
                fontSize: 12,
              ),
            ),
            const SizedBox(height: 5),
            PhoneField(
              errorText: error,
              onChanged: (value) {
                error = null;
                setState(() {
                  _value = value;
                });
              },
            ),
            const SizedBox(height: 15),
            LoadableButton(
              text: 'Продолжить',
              onPressed: () {
                if (_value.isNotEmpty) {
                  Navigator.pop(context, _value.replaceAll(r' ', ''));
                } else {
                  error = 'enter this field';
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
