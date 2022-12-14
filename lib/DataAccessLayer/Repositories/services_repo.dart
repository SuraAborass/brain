import 'dart:convert';

import 'package:brain/DataAccessLayer/Models/mini_service.dart';
import 'package:brain/DataAccessLayer/Models/service.dart';

import '../Clients/services_client.dart';

class ServicesRepo {
  ServiceClient client = ServiceClient();

  Future<List<BrainService>> services(userid) async {
    var response = await client.getServices();
    print(response);
    if (response != "") {
      final myServices = json.decode(response).cast<Map<String, dynamic>>();
      return myServices
          .map<BrainService>((json) => BrainService.fromMap(json))
          .toList();
    }
    return [];
  }

  Future<List<MiniService>> miniServices(serviceId) async {
    var response = await client.getMiniServices(serviceId);
    print(response);
    if (response != "") {
      final myServices = json.decode(response).cast<Map<String, dynamic>>();
      return myServices
          .map<MiniService>((json) => MiniService.fromMap(json))
          .toList();
    }
    return [];
  }
}
