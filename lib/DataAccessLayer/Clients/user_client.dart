import 'dart:convert';

import 'package:http/http.dart' as http;




class UserClient{
  Future<dynamic> isLogin(email,password) async {
      var response = await http.post(Uri.parse("https://brain.sy/api/v1/login"),
          body: jsonEncode({"email": "admin@admin.com", "password": "password"}),
          headers: <String,String>{
          'Content-Type': 'application/json; charset=UTF-8',
          });
      print(response.body);
      if (response.statusCode == 201) {
        return true;
      } else {
        return;
      }

  }

  Future<dynamic>addInfo(id, email, password) async {
    var response =
    await http.post(Uri.parse("https://brain.sy/api/v1/login"), body:{
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