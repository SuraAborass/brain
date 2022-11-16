import 'package:brain/DataAccessLayer/Clients/user_client.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../Constants/routes.dart';
import '../../DataAccessLayer/Models/user.dart';
import '../Repositories/user_repo.dart';
import 'box_controller.dart';

class AuthController extends GetxController{

  var phoneController = TextEditingController();
  final BoxController boxController = Get.find();
  var client = UserClient();
  var repo = UserRepo();
  String? authed;

  @override
  void onInit() async {
    User? authed = (await repo.login("admin@admin.com", "password"));
    if (authed != null) {
      print(authed.toMap());
      boxController.box.write('user', authed.toMap());
      boxController.box.write('authed', true);
      boxController.user = authed;
      boxController.update();
      Get.toNamed(AppRoutes.homepage);
    }
    super.onInit();
  }
}