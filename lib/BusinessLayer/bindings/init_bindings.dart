import 'package:get/get.dart';
import '../../theme_service.dart';
import '../Controllers/auth_controller.dart';
import '../Controllers/balance_controller.dart';
import '../Controllers/box_controller.dart';

class InitBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<ThemeService>(ThemeService());
    Get.put<BoxController>(BoxController());
    Get.lazyPut(() => AuthController());
    Get.put<BalanceController>(BalanceController());

  }
}