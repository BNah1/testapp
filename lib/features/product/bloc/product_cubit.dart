import 'dart:io';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:testapp/features/product/bloc/product_state.dart';
import 'package:testapp/service/product_service.dart';

class ProductCubit extends Cubit<ProductState> {
  final ProductService _service;

  ProductCubit(this._service) : super(ProductLoading());

  int currentIndex = 20;

  Future<void> initLoad() async {
    try {
      emit(ProductLoading());
      final products = await _service.fetchProducts();
      emit(ProductLoaded(products, currentIndex));
    } catch (e) {
      _handleErrorMessage(e: e);
    }
  }

  // can use api with limit and skip params to + 20 item to improve performance
  Future<void> loadMoreProduct() async {
    try {
      if (state is ProductLoaded) {
        final currentState = state as ProductLoaded;

        final total = currentState.products.length;
        int nextIndex = currentIndex + 20;
        //handle if nextIndex > total
        if (nextIndex > total) {
          nextIndex = total;
        }

        currentIndex = nextIndex;

        emit(ProductLoaded(currentState.products, currentIndex));
      }
    } catch (e) {
      _handleErrorMessage(e: e, isPaging: true);
    }
  }

  // checking index to void loading when currentIndex > total
  bool get hasMore {
    if (state is ProductLoaded) {
      final currentState = state as ProductLoaded;
      return currentIndex < currentState.products.length;
    }
    return false;
  }

  Future<void> searchProduct(String text) async {
    try {
      emit(ProductLoading());
      currentIndex = 20;
      final products = await _service.searchProducts(text);
      emit(ProductLoaded(products, currentIndex));
    } catch (e) {
      _handleErrorMessage(e: e);
    }
  }

  void _handleErrorMessage({required Object e, bool isPaging = false}) {
    if (e is SocketException) {
      emit(ProductError('No Internet Connection'));
    } else {
      if (isPaging) {
        emit(ProductError('Failed to load next page'));
      } else {
        emit(ProductError('Failed to load products : $e'));
      }
    }
  }
}
