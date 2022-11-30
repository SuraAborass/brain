import 'package:get/get.dart';

import '../../theme_service.dart';
import '../Controllers/user_controller.dart';

class InitBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<ThemeService>(ThemeService());
    Get.put<UserController>(UserController());
  }
}
