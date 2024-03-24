import 'dart:convert';

import 'package:flutter_application_3/ModelsDB/User_API.dart';
import 'package:http/http.dart' as http;

Future<List<UserJson>> get() async {
  try {
    final response = await http.get(Uri.parse(
        'http://172.29.64.1:5240/api/Users')); // استبدل بعنوان API الفعلي
    print(response.body);
    if (response.statusCode == 200) {
      final List<dynamic> data = jsonDecode(response.body);
      List<UserJson> list =
          data.map((hallData) => UserJson.fromJson(hallData)).toList();
      return list;
    } else {
      throw Exception('Failed to fetch halls: ${response.statusCode}');
    }
  } catch (error) {
    print('Error fetching halls');
    rethrow;
  }
}

// }
Future<String> getone() async {
  final response = await http.get(Uri.parse(
      'http://172.25.32.1:5240/api/Users')); // استبدل بعنوان API الفعلي
  print(response.body);

  return response.body;
}

// create
class LoginApi_Create {
  static const String baseUrl = "http://172.29.64.1:5240/api/Users";

  static Future<bool> Create(String name, String email, String password) async {
    final url = Uri.parse(baseUrl);
    final response = await http.post(url,
        headers: {'Content-Type': 'application/json'},
        body: jsonEncode({'name': name, 'email': email, 'password': password}));
    print(password);
    print(response.statusCode);
    if (response.statusCode == 200) {
      return true;
    } else {
      return false;
    }
  }
}
