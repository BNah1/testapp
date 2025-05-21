import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:testapp/features/product/bloc/product_cubit.dart';
import 'package:testapp/features/product/bloc/product_state.dart';
import 'package:testapp/features/product/repository/product_repository.dart';
import 'package:testapp/features/product/view/widget/product_item_contain.dart';
import 'package:testapp/service/product_service.dart';
import 'package:testapp/shared/app_helper.dart';
import 'package:testapp/shared/constants/app_string.dart';
import 'package:testapp/shared/widget/search_contain.dart';

class ProductView extends StatefulWidget {
  const ProductView({super.key});

  @override
  State<ProductView> createState() => _ProductViewState();
}

class _ProductViewState extends State<ProductView> {
  final ProductService _service = ProductService();
  late final ProductCubit _cubit;
  final ScrollController _scrollController = ScrollController();
  final TextEditingController _searchController = TextEditingController();
  bool _isLoadingMore = false;
  Timer? _debounce;

  @override
  void initState() {
    super.initState();
    _cubit = ProductCubit(_service);
    _cubit.initLoad();
    addScrollListener();
  }

  @override
  void dispose() {
    _searchController.dispose();
    _cubit.close();
    _debounce?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.translucent,
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: BlocProvider.value(
        value: _cubit,
        child: Scaffold(
          appBar: AppBar(
            title: SearchContain(controller: _searchController, onSearch: getNewListBySearch),
          ),
          body: BlocBuilder<ProductCubit,ProductState>(
            builder: (context , state) {
              //handle bad state
              final handledWidget = ProductRepository.handleProductState(state);
              if(handledWidget != null) return handledWidget;

              //having data
              if(state is ProductLoaded){
                final products = state.products;
                if(state.products.isEmpty) return Center(child: Text(AppString.noData));

                return ListView.builder(
                  controller: _scrollController,
                  itemCount: state.currentIndex + (_cubit.hasMore ? 1 : 0),
                  itemBuilder: (context, index) {
                    if (index == state.currentIndex) {
                      return const Padding(
                        padding: EdgeInsets.all(16.0),
                        child: Center(child: CircularProgressIndicator()),
                      );
                    }
                    return ProductItemContain(product: products[index]);
                  },
                );

              }
              return SizedBox();
            }
          ),
        ),
      ),
    );
  }

  void getNewListBySearch(String text) {
    // if empty => reload Products
      if (text.isEmpty) {
        _cubit.initLoad();
      } else {
        _cubit.searchProduct(text);
      }
  }

  void addScrollListener(){
    // register scroll listener (setting spacing from bottom is 100)
    _scrollController.addListener(() async {
      if (_scrollController.position.pixels >= _scrollController.position.maxScrollExtent - 100) {
        // check if still left product and is not loading
        if (_cubit.hasMore && !_isLoadingMore) {

          //delay for seconds for user recognise loading
          _isLoadingMore = true;
          await Future.delayed(Duration(milliseconds: 500));
          await _cubit.loadMoreProduct();
          await Future.delayed(Duration(milliseconds: 500));
          _isLoadingMore = false;

          // check if reached last product
        } else if (!_cubit.hasMore){
          AppHelper.showToastBottom(AppString.endReached);
        }
      }
    });
  }

}




