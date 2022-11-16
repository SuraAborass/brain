import 'package:http/http.dart' as http;


class BalanceClient {
  Future<String> getBalance(id) async {
    try {
      var response = await http.get(Uri.parse("https://brain.sy/api/v1/user/${id}/balance"));
      if (response.statusCode == 200) {
        print("BODY IS : ");
        print(response.body);
        return response.body;
      } else {
        return "";
      }
    } catch (e) {
      print(e);
    }
    return "";
  }

}

