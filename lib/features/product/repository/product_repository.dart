import 'package:flutter/material.dart';
import 'package:testapp/features/product/bloc/product_state.dart';
import 'package:testapp/shared/widget/loader.dart';

class ProductRepository{
  static Widget? handleProductState(ProductState state){
    if (state is ProductLoading) {
      return Loader();
    } else if (state is ProductLoaded) {
      return null;
    } else if (state is ProductError) {
      return Center(child: Text(state.message));
    } else {
      return SizedBox.shrink();
    }
  }
}