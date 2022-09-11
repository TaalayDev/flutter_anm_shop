import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:malbazar/imports.dart';

part 'theme_cubit.freezed.dart';

class ThemeCubit extends Cubit<ThemeState> {
  ThemeCubit({
    bool isDarkMode = true,
    required ThemeType type,
    required this.storage,
  }) : super(ThemeState(
          isDarkMode: isDarkMode,
          appTheme: AppTheme.fromType(type),
        ));

  final LocaleStorage storage;

  void changeThemeType(ThemeType type) {
    if (state.appTheme.type != type) {
      emit(state.copyWith(appTheme: AppTheme.fromType(type)));
      storage.currentThemeType = type;
    }
  }
}

@freezed
abstract class ThemeState with _$ThemeState {
  const factory ThemeState({
    @Default(false) bool isDarkMode,
    required final AppTheme appTheme,
  }) = _ThemeState;
}
