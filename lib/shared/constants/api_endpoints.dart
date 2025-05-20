import 'package:flutter_dotenv/flutter_dotenv.dart';

abstract class ApiEndpoints {
  static  String baseUrl =  dotenv.env['TEST_APP'] ?? 'ERROR_SERVER';
  static const String products = '/products';
  static const String searchProduct = '/products/search?q=';
}