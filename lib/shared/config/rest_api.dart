import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:http/http.dart' as http;
import 'package:testapp/shared/config/routes.dart';
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

  static Future<bool> _showErrorDialog(String message) async {
    final context = navigatorKey.currentContext;
    if (context != null && context.mounted) {
      try {
        await showDialog(
          context: context,
          barrierDismissible: false,
          builder:
              (dialogContext) => AlertDialog(
                title: const Text('Thông báo'),
                content: Text(message),
                actions: [
                  TextButton(
                    onPressed: () => Navigator.of(dialogContext).pop(),
                    child: const Text('Đóng'),
                  ),
                ],
              ),
        );
        return true;
      } catch (e) {
        debugPrint('Lỗi hiển thị dialog: $e');
        return false;
      }
    } else {
      debugPrint(
        'Context bị null hoặc không mounted, không thể hiển thị thông báo: $message',
      );
      return false;
    }
  }
}
