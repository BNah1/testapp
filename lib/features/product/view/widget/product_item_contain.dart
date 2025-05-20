import 'package:flutter/cupertino.dart';
import 'package:testapp/models/product/product.dart';
import 'package:testapp/shared/widget/safe_network_image.dart';

class ProductItemContain extends StatelessWidget {
  const ProductItemContain({super.key, required this.product});

  final Product product;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        children: [
          SafeNetworkImage(imageUrl: product.thumbnail),
          Text(product.title),
          Text(product.stock.toString()),
          Text(product.price.toString()),
          Text(product.discountPercentage.toString()),
          Text(product.category),
        ],
      ),
    );
  }
}
