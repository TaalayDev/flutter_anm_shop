import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:malbazar/imports.dart';

import '../../../cubit/theme_cubit.dart';
import '../../shared_contents/control/styled_dropdown.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.theme.backgroundColor,
      appBar: AppBar(
        elevation: 0,
        title: const Text('Настройки'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.only(right: 15, left: 15, top: 10),
        child: Column(
          children: [
            BlocBuilder<ThemeCubit, ThemeState>(
              builder: (context, state) {
                return Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 15,
                    vertical: 18,
                  ),
                  decoration: BoxDecoration(
                    color: context.theme.colorScheme.surface,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: const [
                          Icon(Icons.color_lens, size: 30),
                          SizedBox(width: 15),
                          Text(
                            'Тема',
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 20,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 25),
                      const Text(
                        'Режим',
                        style: TextStyle(fontSize: 16),
                      ),
                      const SizedBox(height: 8),
                      StyledDropDown<String>(
                        list: const [
                          'Темный',
                          'Светлый',
                        ],
                        value: state.appTheme.type == ThemeType.DARK_GREEN
                            ? 'Темный'
                            : 'Светлый',
                        displayItem: (item) => item.toString(),
                        onChanged: (value) {
                          if (value.contains('Темный')) {
                            context
                                .read<ThemeCubit>()
                                .changeThemeType(ThemeType.DARK_GREEN);
                          } else {
                            context
                                .read<ThemeCubit>()
                                .changeThemeType(ThemeType.LIGHT_GREEN);
                          }
                        },
                      ),
                    ],
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget printerSizeTile(
      BuildContext context, String name, double size, bool isSelected) {
    return InkWell(
      onTap: () {},
      child: Row(
        children: [
          Checkbox(
            value: isSelected,
            onChanged: (value) {},
          ),
          Text(name),
        ],
      ),
    );
  }
}
