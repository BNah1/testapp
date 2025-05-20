import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:testapp/features/favourite/bloc/favourite_list_cubit.dart';
import 'package:testapp/features/favourite/bloc/favourite_list_state_model.dart';
import 'package:testapp/features/product/view/widget/product_item_contain.dart';

class FavouriteView extends StatelessWidget {
  const FavouriteView({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: BlocBuilder<FavouriteListCubit,FavouriteStateModel>(
          builder: (context , state) {
            //handle bad state (empty)
            if(state.productsFavourite.isEmpty) return Center(child: Text('No Data'));

            //having data
              return ListView.builder(
                itemCount: state.productsFavourite.length,
                itemBuilder: (context, index) {
                  return ProductItemContain(product: state.productsFavourite[index], isDelete: true,);
                },
              );

          }
      ),
    );
  }
}
