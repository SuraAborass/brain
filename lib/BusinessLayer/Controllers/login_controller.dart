import 'package:brain/DataAccessLayer/Clients/user_client.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../Constants/routes.dart';
import '../../DataAccessLayer/Models/user.dart';
import '../Repositories/user_repo.dart';
import 'box_controller.dart';

class LoginController extends GetxController{

 var emailTextController = TextEditingController() ;
 var passwordTextController = TextEditingController();
 final BoxController boxController = Get.find();
 var client = UserClient();
 var repo = UserRepo();
 String? authed;

  @override
  void onInit() async {
    emailTextController = TextEditingController() ;
    passwordTextController = TextEditingController();
    super.onInit();
  }

  void logged() async{


      User? authed = await repo.login(emailTextController.value.text, passwordTextController.value.text);
      if (authed != null) {
        print(authed.toMap());
        boxController.box.write('user', authed.toMap());
        boxController.box.write('authed', true);
        boxController.user = authed;
        boxController.update();
        Get.toNamed(AppRoutes.homepage);
      }
    }


  }
