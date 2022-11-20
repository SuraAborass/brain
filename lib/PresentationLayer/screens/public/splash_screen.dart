import 'dart:async';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../Constants/colors.dart';
import '../../../Constants/routes.dart';
import '../auth/login_screen.dart';
import 'home_page.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});


  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override

  void initState() {
    super.initState();
    Timer( const Duration(seconds: 3),
            ()=> Get.toNamed(AppRoutes.loginPage));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: BrainColors.primary,
        body: Container(
          decoration: const BoxDecoration(
              color: BrainColors.primary
          ),
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
