import 'dart:convert';

import 'package:brain/DataAccessLayer/Models/service.dart';

import '../Clients/services_client.dart';
import '../Models/service.dart';

class ServicesRepo{
  ServiceClient client =ServiceClient();

  Future<List<BrainService>> services(userid) async {
    var response = await client.getServices(userid);
    print(response);
    if (response != "") {
      final myServices = json.decode(response).cast<Map<String, dynamic>>();
      return myServices
          .map<BrainService>((json) => BrainService.fromMap(json))
          .toList();
    }

    return [];
  }
}