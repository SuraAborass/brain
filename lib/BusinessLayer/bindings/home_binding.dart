import 'package:brain/BusinessLayer/Controllers/balance_controller.dart';
import 'package:brain/BusinessLayer/Controllers/projects_controller.dart';
import 'package:get/get.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<BalanceController>(BalanceController());
    Get.put<ProjectController>(ProjectController());
  }
}
