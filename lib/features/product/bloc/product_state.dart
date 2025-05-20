import 'package:testapp/models/product/product.dart';

abstract class ProductState {}

class ProductLoading extends ProductState {}

class ProductLoaded extends ProductState {
  final List<Product> products;
  final int currentIndex;
  ProductLoaded(this.products, this.currentIndex);
}

class ProductError extends ProductState {
  final String message;
  ProductError(this.message);
}
