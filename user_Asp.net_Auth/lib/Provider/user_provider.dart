import 'package:flutter/material.dart';
import 'package:flutter_application_3/ModelsDB/User_API.dart';
import 'package:http/http.dart' as http;

const urlapi = '172.29.64.1:5240';

class User_Provider with ChangeNotifier {
  List<UserJson> users = [];
  User_Provider() {
    getUsers();
  }
  getUsers() async {
    final urll = Uri.http(urlapi, '/api/Users');
    final resp = await http.get(urll, headers: {
      "Access-Control-Allow-Origin": "*",
      "Access-Control-Allow-Credentials": "true",
      'Content-type': 'application/json',
      'Accept': 'application/json'
    });
    final response = userJsonFromJson(resp.body);
    users = response;
    notifyListeners();
  }
}
