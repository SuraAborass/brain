import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import '../../DataAccessLayer/Models/user.dart';

class BoxController extends GetxController {
  final box = GetStorage();
  bool? authed = false;
  late User? user;

  @override
  void onInit() {
    super.onInit();
    user = null;
    authed = box.read<bool>('authed');
    if (authed != null) {
      user = User.fromBoxMap(box.read('user'));
      print(user);
    }

  }
}