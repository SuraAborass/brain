import 'package:get/get.dart';
import '../../theme_service.dart';
import '../Controllers/balance_controller.dart';
import '../Controllers/box_controller.dart';
import '../Controllers/login_controller.dart';

class InitBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<ThemeService>(ThemeService());
    Get.put<BoxController>(BoxController());
    Get.lazyPut(() => LoginController());
    Get.put<BalanceController>(BalanceController());

  }
}