import 'dart:convert';

import 'package:beetle/utilities/constants.dart';
import 'package:http/http.dart' as http;

class BeetleNetworking {
  Future<http.Response> signupUser(Map<String, String?> signupData) async {
    http.Response response = await http.post(
      Uri.parse('$kBaseUrl/register/'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(signupData),
    );
    return response;
  }

  Future<http.Response> loginUser(String email, String password) async {
    String basicAuth = this.basicAuth(email, password);
    http.Response response = await http.post(
      Uri.parse('$kBaseUrl/login/'),
      headers: <String, String>{
        'authorization': basicAuth,
        'Accept': 'application/json'
      },
    );
    return response;
  }

  Future<http.Response> resetUserPassword(String email) async {
    http.Response response = await http.post(
      Uri.parse('$kBaseUrl/recover/'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(
        <String, String>{
          "email": email,
        },
      ),
    );
    return response;
  }

  Future<dynamic> getForums() async {
    http.Response response = await http.get(Uri.parse('$kBaseUrlForum/forums'));
    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    } else {
      return 'error';
    }
  }

  String basicAuth(String username, String password) {
    String basicAuth = 'Basic ' +
        base64Encode(
          utf8.encode(
            '$username:$password',
          ),
        );
    return basicAuth;
  }
}
