import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:testapp/models/product/product.dart';
import 'favourite_list_state_model.dart';

class FavouriteListCubit extends HydratedCubit<FavouriteStateModel>{
  FavouriteListCubit() : super(FavouriteStateModel.empty());

  @override
  FavouriteStateModel? fromJson(Map<String, dynamic> json) {
    try {
      return FavouriteStateModel.fromJson(json);
    } catch (_) {
      // fallback if error
      return FavouriteStateModel.empty();
    }
  }

  @override
  Map<String, dynamic>? toJson(FavouriteStateModel state) {
    try {
      return state.toJson();
    } catch (_) {
      return null;
    }
  }

  Future<void> addProduct(Product product)async {
    final newList = List<Product>.from(state.productsFavourite);
    newList.add(product);
    final newState = state.copyWith(productsFavourite: newList);
    emit(newState);
  }

  Future<void> removeProduct(int productId)async {
    // remove base on product.id
    final newList = state.productsFavourite.where((e) => e.id != productId).toList();
    final newState = state.copyWith(productsFavourite: newList);
    emit(newState);
  }

}