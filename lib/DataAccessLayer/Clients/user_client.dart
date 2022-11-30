import 'dart:convert';

import 'package:brain/Constants/links.dart';
import 'package:http/http.dart' as http;

class UserClient {
  Future<dynamic> login(email, password) async {
    var response = await http.post(Uri.parse(baseLink+loginLink),
        body:
            jsonEncode(<String, dynamic>{"email": email, "password": password}),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        });

    if (response.statusCode == 200) {
      return response.body;
    } else {
      return null;
    }
  }

  Future<dynamic> addInfo(id, email, password) async {
    var response =
        await http.post(Uri.parse("https://brain.sy/api/v1/login"), body: {
      "id": id,
      "email": email,
      "password": password,
    });
    print(response.statusCode);
    if (response.statusCode == 201) {
      return response.body;
    } else {
      return null;
    }
  }
}
