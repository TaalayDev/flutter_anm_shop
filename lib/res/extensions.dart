import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:malbazar/cubit/theme_cubit.dart';
import 'package:malbazar/res/theme.dart';

extension ContextThemeExtension on BuildContext {
  ThemeData get theme => Theme.of(this);
  AppTheme get appTheme => read<ThemeCubit>().state.appTheme;
}
