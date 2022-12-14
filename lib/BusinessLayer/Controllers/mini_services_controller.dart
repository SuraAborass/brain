import 'package:brain/DataAccessLayer/Models/mini_service.dart';
import 'package:brain/DataAccessLayer/Models/service.dart';
import 'package:brain/DataAccessLayer/Repositories/services_repo.dart';
import 'package:get/get.dart';

class MiniServicesController extends GetxController {
  final BrainService service;
  ServicesRepo servicesRepo = ServicesRepo();
  MiniServicesController(this.service);
  List<MiniService> miniservices = [];
  var loading = false.obs;
  @override
  void onInit() async {
    print(service.id);
    loading.value = true;
    miniservices = await servicesRepo.miniServices(service.id);
    update();
    super.onInit();
    loading.value = false;
  }
}
