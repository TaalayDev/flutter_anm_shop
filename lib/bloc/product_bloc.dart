import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../data/models/filter.dart';
import '../data/models/loadable.dart';
import '../data/models/product.dart';
import '../data/repositories/product_repo.dart';

part 'product_bloc.freezed.dart';

class ProductBloc extends Bloc<ProductEvent, ProductState> {
  ProductBloc(this._productRepo) : super(const ProductState()) {
    on<ProductFetchEvent>((event, emit) => _fetchProducts(emit));
    on<ProductRefreshEvent>((event, emit) => _fetchProducts(emit, fresh: true));
    on<ProductSetFilterEvent>(
      (event, emit) => emit(state.copyWith(
        filter: event.filter,
        products: state.products.withData([]),
      )),
    );
  }

  final ProductRepo _productRepo;

  void _fetchProducts(
    Emitter<ProductState> emit, {
    bool fresh = false,
  }) async {
    emit(state.copyWith(
      products: state.products.loading(),
    ));
    final response = await _productRepo.fetchProducts(
      limit: 25,
      lastId: state.products.data.isNotEmpty && !fresh
          ? state.products.data.last.id
          : null,
      filter: state.filter,
    );
    if (response.success) {
      emit(state.copyWith(
        products: state.products.withData([
          if (!fresh) ...state.products.data,
          ...response.result!,
        ]),
      ));
    } else {
      print('products fetching error ${response.errorData}');
      // TODO: Вывод ошибки
    }
  }
}

@freezed
abstract class ProductState with _$ProductState {
  const factory ProductState({
    @Default(Loadable(data: [])) final Loadable<List<Product>> products,
    final Filter? filter,
  }) = _ProductState;
}

@freezed
abstract class ProductEvent with _$ProductEvent {
  const factory ProductEvent.fetchProducts() = ProductFetchEvent;
  const factory ProductEvent.refresh() = ProductRefreshEvent;
  const factory ProductEvent.setFilter(Filter filter) = ProductSetFilterEvent;
}
