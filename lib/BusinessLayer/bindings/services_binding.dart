import 'package:get/get.dart';

import '../Controllers/services_controller.dart';

class ServicesBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<ServicesController>(ServicesController());
  }
}
