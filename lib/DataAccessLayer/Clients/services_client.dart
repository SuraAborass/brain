import 'package:http/http.dart' as http;

import '../../Constants/links.dart';

class ServiceClient {
  Future<dynamic> getServices() async {
    var response = await http.get(Uri.parse(baseLink + "services"));

    print(response.body);
    if (response.statusCode == 200) {
      return response.body;
    } else {
      return "";
    }
  }

  Future<dynamic> getMiniServices(serviceId) async {
    var response = await http.get(
        Uri.parse(baseLink + "service/${serviceId.toString()}/miniServices"));

    print(response.body);
    if (response.statusCode == 200) {
      return response.body;
    } else {
      return "";
    }
  }
}
