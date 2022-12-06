import 'package:brain/BusinessLayer/Controllers/user_controller.dart';
import 'package:brain/DataAccessLayer/Models/service.dart';
import 'package:get/get.dart';

import '../../DataAccessLayer/Repositories/services_repo.dart';

class ServicesController extends GetxController{
  final UserController userController = Get.find();
  ServicesRepo repo = ServicesRepo();
  List<BrainService> services = [];

  var loading = false.obs;

  @override
  void onInit() async {
    await getServices();
    super.onInit();
  }

  Future<void> getServices() async {
    loading.value = true;
    services = await repo.services(userController.user!.id);
    print(services);
    update();
    loading.value = false;
  }



}