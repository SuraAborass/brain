import 'package:http/http.dart' as http;

import '../../Constants/links.dart';

class ServiceClient {
  Future<dynamic> getServices(userid) async {
    var response = await http.get(
        Uri.parse(baseLink + "services"));

    print(response.body);
    if (response.statusCode == 200) {
      return response.body;
    } else {
      return "";
    }
  }
}