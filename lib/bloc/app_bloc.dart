import 'package:flutter/foundation.dart' hide Category;
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:malbazar/data/models/app_settings_model.dart';
import 'package:malbazar/data/models/category.dart';
import 'package:malbazar/data/models/loadable.dart';
import 'package:malbazar/data/models/region.dart';
import 'package:malbazar/data/repositories/app_repo.dart';

import '../data/repositories/category_repo.dart';
import '../data/repositories/region_repo.dart';

part 'app_bloc.freezed.dart';

class AppBloc extends Bloc<AppEvent, AppState> {
  AppBloc({
    required AppRepo appRepo,
    required CategoryRepo categoryRepo,
    required RegionRepo regionRepo,
  })  : _appRepo = appRepo,
        _categoryRepo = categoryRepo,
        _regionRepo = regionRepo,
        super(AppState()) {
    on<_AppFetchSettingsEvent>(_fetchSettings);
    on<_AppFetchLocationsEvent>(_fetchLocations);
    on<_AppFetchCategoriesEvent>(_fetchCategories);
  }

  final AppRepo _appRepo;
  final CategoryRepo _categoryRepo;
  final RegionRepo _regionRepo;

  void _fetchSettings(
    _AppFetchSettingsEvent event,
    Emitter<AppState> emit,
  ) async {
    emit(state.copyWith(settings: state.settings.loading()));
    final response = await _appRepo.fetchSettings();
    if (response.success) {
      emit(state.copyWith(
        settings: state.settings.withData(response.result!),
      ));
    }
  }

  void _fetchLocations(
    _AppFetchLocationsEvent event,
    Emitter<AppState> emit,
  ) async {
    emit(state.copyWith(regions: state.regions.loading()));
    final response = await _regionRepo.fetchAll();

    if (response.success) {
      emit(state.copyWith(
        regions: state.regions.withData(response.result!),
      ));
    }
  }

  void _fetchCategories(
    _AppFetchCategoriesEvent event,
    Emitter<AppState> emit,
  ) async {
    emit(state.copyWith(categories: state.categories.loading()));
    final response = await _categoryRepo.fetchAll();
    if (response.success) {
      emit(state.copyWith(
        categories: state.categories.withData(response.result!),
      ));
    }
  }
}

@freezed
abstract class AppState with _$AppState {
  const factory AppState({
    @Default(Loadable(data: <Region>[])) final Loadable<List<Region>> regions,
    @Default(Loadable(data: <Category>[]))
        final Loadable<List<Category>> categories,
    @Default(Loadable(data: AppSettingsModel()))
        final Loadable<AppSettingsModel> settings,
  }) = _AppState;
}

@freezed
abstract class AppEvent with _$AppEvent {
  const factory AppEvent.fetchSettings() = _AppFetchSettingsEvent;
  const factory AppEvent.fetchLocations() = _AppFetchLocationsEvent;
  const factory AppEvent.fetchCategories() = _AppFetchCategoriesEvent;
}
