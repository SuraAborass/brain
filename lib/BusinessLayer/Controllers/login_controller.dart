import 'package:brain/BusinessLayer/Controllers/user_controller.dart';
import 'package:brain/PresentationLayer/widgets/snackbars.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../DataAccessLayer/Models/user.dart';
import '../../DataAccessLayer/Repositories/user_repo.dart';

class LoginController extends GetxController {
  var emailTextController = TextEditingController();
  var passwordTextController = TextEditingController();

  var passwordvisible = false.obs;
  var sending = false.obs;
  final UserController userController = Get.find();
  var repo = UserRepo();

  @override
  void onInit() async {
    super.onInit();
  }

  Future<void> login() async {
    sending.value = true;
    User? user = await repo.login(
        emailTextController.value.text, passwordTextController.value.text);
    if (user != null) {
      await userController.saveAuthState(user);
    } else {
      Snackbars.showError("يرجى التأكد من البيانات المدخلة");
    }
    sending.value = false;
  }

  void togglePasswordVisible() {
    passwordvisible.value = !passwordvisible.value;
  }
}
