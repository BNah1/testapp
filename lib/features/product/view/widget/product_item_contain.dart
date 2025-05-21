import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:testapp/features/favourite/bloc/favourite_list_cubit.dart';
import 'package:testapp/features/favourite/bloc/favourite_list_state_model.dart';
import 'package:testapp/models/product/product.dart';
import 'package:testapp/shared/widget/loader.dart';

class ProductItemContain extends StatelessWidget {
  const ProductItemContain({
    super.key,
    required this.product,
    this.isFavourite = false,
  });

  final Product product;
  final bool isFavourite;

  @override
  Widget build(BuildContext context) {
    // check product is exist ?
    return Padding(
      padding: EdgeInsets.all(20),
      child: Container(
        decoration: BoxDecoration(border: Border.all(color: Colors.grey)),
        child: Stack(
          children: [
            Center(
              child: Column(
                children: [
                  CachedNetworkImage(
                    imageUrl: product.thumbnail,
                    fit: BoxFit.cover,
                    width: 120,
                    height: 120,
                    placeholder:
                        (context, url) => const Center(child: Loader()),
                    errorWidget:
                        (context, url, error) =>
                            Center(child: Icon(Icons.error)),
                  ),
                  // SafeNetworkImage(imageUrl: product.thumbnail),
                  Text(product.title),
                  Text(product.price.toString()),
                ],
              ),
            ),

            BlocBuilder<FavouriteListCubit, FavouriteStateModel>(
              builder: (context, state) {
                //checking is product exist in favourite list ?
                final exists = state.productsFavourite.any(
                  (p) => p.id == product.id,
                );
                return Positioned(
                  right: 10,
                  top: 10,
                  child: InkWell(
                    onTap: () {
                      if (!exists) {
                        context.read<FavouriteListCubit>().addProduct(product);
                      } else {
                        context.read<FavouriteListCubit>().removeProduct(
                          product.id,
                        );
                      }
                    },
                    child:
                        exists
                            ? Icon(Icons.favorite, color: Colors.red)
                            : Icon(Icons.favorite_outline),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
