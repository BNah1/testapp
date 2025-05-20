import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:testapp/features/product/bloc/product_cubit.dart';
import 'package:testapp/features/product/bloc/product_state.dart';
import 'package:testapp/features/product/repository/product_repository.dart';
import 'package:testapp/features/product/view/widget/product_item_contain.dart';
import 'package:testapp/service/product_service.dart';

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

  @override
  void initState() {
    super.initState();
    _cubit = ProductCubit(_service);
    _cubit.initLoad();


    _scrollController.addListener(() async {
      if (_scrollController.position.pixels >= _scrollController.position.maxScrollExtent - 100) {
        if (_cubit.hasMore && !_isLoadingMore) {
          //delay for seconds for user recognise loading
          _isLoadingMore = true;
          await Future.delayed(Duration(seconds: 1));
          await _cubit.loadMoreProduct();
          await Future.delayed(Duration(seconds: 1));
          _isLoadingMore = false;
        }
      }
    });
  }

  @override
  void dispose() {
    _searchController.dispose();
    _cubit.close();
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
            title: _searchTest(), // Search nằm trên AppBar
          ),
          body: BlocBuilder<ProductCubit,ProductState>(
            builder: (context , state) {
              //handle bad state
              final handledWidget = ProductRepository.handleProductState(state);
              if(handledWidget != null) return handledWidget;

              //having data
              if(state is ProductLoaded){
                final products = state.products;
                if(state.products.isEmpty) return Center(child: Text('No Data'));

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
    if(text.isEmpty){
      _cubit.initLoad();
    }
    _cubit.searchProduct(text);
  }


  Widget _searchTest() {
    return Container(
      padding: const EdgeInsets.all(10),
      child: TextField(
        maxLines: 1,
        controller: _searchController,
        decoration: InputDecoration(
          alignLabelWithHint: true,
          filled: true,
          fillColor: Colors.white,
          contentPadding: const EdgeInsets.only(left: 25),
          label: Container(
            padding: const EdgeInsets.symmetric(horizontal: 4),
            decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(10)
            ),
            child: Text('Search',
            ),
          ),
          suffixIcon: IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search),
          ),
        ),
        // onSubmitted: (value) {
        //   getNewListBySearch(value);
        // },
        onChanged: (value) {
          getNewListBySearch(value);
        },
      ),
    );
  }
}




