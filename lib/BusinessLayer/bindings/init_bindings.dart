import 'package:get/get.dart';
import '../../theme_service.dart';

class InitBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<ThemeService>(ThemeService());

  }
}