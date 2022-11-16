import 'package:http/http.dart' as http;



class UserClient{
  Future<dynamic> isLogin(email,password) async {
      var response = await http.post(Uri.parse("https://brain.sy/api/v1/login"),
          body: {"phone": email, "password": password});
      if (response.statusCode == 201) {
        return response.body;
      } else {
        return null;
      }

  }

  Future<dynamic> updateInfo(id, email, password) async {
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