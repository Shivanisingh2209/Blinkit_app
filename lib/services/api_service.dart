
import 'dart:convert';
import 'package:http/http.dart' as http;

class ApiService {
  static const String baseUrl = 'http://10.0.2.2:8082';

  static Future<Map<String, dynamic>> registerUser({
    required String name,
    required String phoneNumber,
  }) async {
    final url = Uri.parse('$baseUrl/api/auth/register');

    final response = await http.post(
      url,
      headers: {
        'Content-Type': 'application/json',
      },
      body: jsonEncode({
        'name': name,
        'phoneNumber': phoneNumber,
      }),
    );

    Map<String, dynamic> data = {};

    try {
      data = jsonDecode(response.body) as Map<String, dynamic>;
    } catch (_) {
      data = {};
    }

    if (response.statusCode == 201) {
      return data;
    }

    throw Exception(
      data['detail'] ??
          data['message'] ??
          'Registration failed. Please try again.',
    );
  }
}
