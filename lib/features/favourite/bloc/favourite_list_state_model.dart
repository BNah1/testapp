import 'package:testapp/models/product/product.dart';

class FavouriteStateModel {
  List<Product> productsFavourite;
  final String? errorMessage;

  FavouriteStateModel({required this.productsFavourite, this.errorMessage});

  factory FavouriteStateModel.empty() {
    return FavouriteStateModel(
      productsFavourite: [],
      errorMessage: null,
    );
  }

  FavouriteStateModel copyWith({
    List<Product>? productsFavourite,
    String? errorMessage,
  }) {
    return FavouriteStateModel(
      productsFavourite: productsFavourite ?? this.productsFavourite,
      errorMessage: errorMessage ?? this.errorMessage,
    );
  }

  factory FavouriteStateModel.fromJson(Map<String, dynamic> json) {
    return FavouriteStateModel(
      productsFavourite: (json['productsFavourite'] as List<dynamic>)
          .map((e) => Product.fromJson(e as Map<String, dynamic>))
          .toList(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'productsFavourite': productsFavourite.map((e) => e.toJson()).toList(),
    };
  }
}
