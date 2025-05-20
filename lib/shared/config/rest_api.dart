import 'dart:convert';
import 'package:http/http.dart';
import 'package:http/http.dart' as http;
import 'package:testapp/shared/constants/api_endpoints.dart';

class RestApi {
  static final baseUrl = ApiEndpoints.baseUrl;

  static final Map<String, String> _headers = {
    'Content-Type': 'application/json; charset=UTF-8',
  };

  static Future<Response> get(String endpoint) async {

    final response = await http.get(
      Uri.parse('$baseUrl$endpoint'),
      headers: _headers,
    );
    return response;
  }

  static Future<http.Response> post(
    String endpoint,
    Map<String, dynamic> json,
  ) async {

    return await http.post(
      Uri.parse('$baseUrl$endpoint'),
      body: jsonEncode(json),
      headers: _headers,
    );
  }
}
