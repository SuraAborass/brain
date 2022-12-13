import 'package:brain/BusinessLayer/Controllers/user_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../Constants/routes.dart';
import '../../DataAccessLayer/Models/user.dart';
import '../../DataAccessLayer/Repositories/user_repo.dart';
import '../../PresentationLayer/widgets/snackbars.dart';

class ProfileController extends GetxController {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController mobileController = TextEditingController();

  final UserController _userController = Get.find();

  UserRepo userRepo = UserRepo();
  var loading = false.obs;
  @override
  void onInit() {
    if (_userController.user != null) {
      emailController.text = _userController.user!.email;
      nameController.text = _userController.user!.name;
      mobileController.text = _userController.user!.mobileNumber.toString();
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
    User? user = await userRepo.updateInfo(
        _userController.user!.id,
        nameController.value.text,
        emailController.value.text,
        passwordController.value.text,
        mobileController.value.text);

    if (user != null) {
      print(user.toMap());
      await _userController.saveAuthState(user);
      Snackbars.showSuccess("Successfully Saved ");
    } else {
      Snackbars.showError("There Was an Error ");
    }
    loading.value = false;
  }
}
