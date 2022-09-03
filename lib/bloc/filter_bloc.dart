import 'package:flutter/foundation.dart' hide Category;
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:malbazar/data/models/city.dart';
import 'package:malbazar/data/models/filter.dart';
import 'package:malbazar/data/models/region.dart';

import '../data/models/category.dart';

part 'filter_bloc.freezed.dart';

class FilterBloc extends Bloc<FilterEvent, FilterState> {
  FilterBloc() : super(FilterState()) {
    on<_FilterValueChangedEvent>((event, emit) {
      emit(state.copyWith.filter(
        minPrice: event.minPrice ?? state.filter.minPrice,
        maxPrice: event.maxPrice ?? state.filter.maxPrice,
        category: event.category ?? state.filter.category,
        region: event.region ?? state.filter.region,
        city: event.city ?? state.filter.city,
      ));
    });
  }
}

@freezed
class FilterState with _$FilterState {
  const factory FilterState({
    @Default(Filter()) final Filter filter,
  }) = _FilterState;
}

@freezed
class FilterEvent with _$FilterEvent {
  const factory FilterEvent.valueChanged({
    final double? minPrice,
    final double? maxPrice,
    final Category? category,
    final Region? region,
    final City? city,
  }) = _FilterValueChangedEvent;
}
