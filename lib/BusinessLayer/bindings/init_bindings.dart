import 'package:get/get.dart';
import '../../theme_service.dart';
import '../Controllers/balance_controller.dart';

class InitBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<ThemeService>(ThemeService());
    Get.put<BalanceController>(BalanceController());
  }
}