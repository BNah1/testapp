import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:testapp/models/product/product.dart';
import 'package:testapp/shared/config/rest_api.dart';
import 'package:testapp/shared/constants/api_endpoints.dart';

class ProductService{

  Future<List<Product>> fetchProducts() async {
    try {
      final getAll = '?limit=0&skip=0';

      final response = await RestApi.get('${ApiEndpoints.products}$getAll');

      if (response.statusCode == 200 || response.statusCode == 201) {
        final body = response.body is String
            ? json.decode(response.body)
            : response.body;
        final List<dynamic> listData = body['products'] as List<dynamic>;
        return listData.map((e) => Product.fromJson(e)).toList();
      } else {
        throw Exception('Failed to load products. Status code: ${response.statusCode}');
      }
    } catch (e) {
      debugPrint('Fetch product error: $e');
      rethrow;
    }
  }

  Future<List<Product>> searchProducts(String keyWord) async {
    try {
      final response = await RestApi.get('${ApiEndpoints.searchProduct}$keyWord');
      if (response.statusCode == 200 || response.statusCode == 201) {
        final body = response.body is String
            ? json.decode(response.body)
            : response.body;
        final List<dynamic> listData = body['products'] as List<dynamic>;
        return listData.map((e) => Product.fromJson(e)).toList();
      } else {
        throw Exception('Failed to load products. Status code: ${response.statusCode}');
      }
    } catch (e) {
      debugPrint('Fetch product error: $e');
      rethrow;
    }
  }

  Future<Product> getProduct(int id) async {
    try {
      final response = await RestApi.get('${ApiEndpoints.products}/$id');
      if (response.statusCode == 200 || response.statusCode == 201) {
        return Product.fromJson(response.body as Map<String, dynamic>);
      } else {
        throw Exception('Failed to load products. Status code: ${response.statusCode}');
      }
    } catch (e) {
      debugPrint('Fetch product error: $e');
      rethrow;
    }
  }
}