import 'package:brain/BusinessLayer/Controllers/user_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../Constants/routes.dart';
import '../../DataAccessLayer/Models/user.dart';
import '../../DataAccessLayer/Repositories/user_repo.dart';
import '../../PresentationLayer/widgets/snackbars.dart';

class ProfileController extends GetxController{
  TextEditingController passwordController = TextEditingController();
  TextEditingController emailController = TextEditingController();

  final UserController _userController = Get.find();

  UserRepo userRepo = UserRepo();
  var loading = false.obs;
  @override
  void onInit() {
    if (_userController.user != null) {
      emailController.text = _userController.user!.email;
    }
    super.onInit();
  }

  Future<void> logout() async {
    _userController.box.remove('user');
    _userController.box.remove('authed');
    _userController.user = null;
    _userController.update();
    Get.toNamed(AppRoutes.loginPage);
  }

  Future<void> updateInfo() async {
    print("start Updatring ");
    loading.value = true;
    User? user = await userRepo.addInfo(
        _userController.user!.id,
        emailController.value.text,
        passwordController.value.text);
    if (user != null) {
      _userController.box.remove('user');
      _userController.box.write('user', user.toMap());
      _userController.user = user;
      _userController.update();
      Snackbars.showSuccess("Successfully Saved ");
    } else {
      Snackbars.showError("There Was an Error ");
    }
    loading.value = false;
  }
}