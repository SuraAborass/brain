import 'package:brain/BusinessLayer/Controllers/splash_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../Constants/colors.dart';

class SplashScreen extends StatelessWidget {
  SplashScreen({super.key});
  final SplashController splashController = Get.put(SplashController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: BrainColors.primary,
        body: Container(
          decoration: const BoxDecoration(color: BrainColors.primary),
          child: Center(
            child: Image.asset(
              'assets/images/logo.png',
              height: 88,
              width: 204,
            ),
          ),
        ));
  }
}
