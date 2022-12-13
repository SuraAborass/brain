import 'dart:convert';

import 'package:brain/Constants/links.dart';
import 'package:http/http.dart' as http;

class UserClient {
  Future<dynamic> login(email, password) async {
    var response = await http.post(Uri.parse(baseLink + loginLink),
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

  Future<dynamic> updateInfo(id, name, email, password, mobilenumber) async {
    var response = await http.post(Uri.parse(baseLink + updateInfoLink),
        body: jsonEncode(<String, dynamic>{
          "id": id.toString(),
          "name": name,
          "email": email,
          "password": password,
          "mobile_number": mobilenumber,
        }),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        });
    if (response.statusCode == 201) {
      return response.body;
    } else {
      return null;
    }
  }
}
