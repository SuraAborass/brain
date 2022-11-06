import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../Constants/colors.dart';
import '../../../Constants/routes.dart';
import '../../../main.dart';

class NavBar extends StatelessWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return BottomNavigationBar(

     currentIndex: MyApp.currentPage,
     onTap: (index) {
              MyApp.currentPage = index;
    switch (index) {
    case 0:
    Get.toNamed(AppRoutes.homepage);
    break;
    case 1:
    Get.toNamed(AppRoutes.notifications);
    break;
    case 2:
    Get.toNamed(AppRoutes.payment );
    break;
    case 3:
    Get.toNamed(AppRoutes.userprofile);
    break;
    default:
    }},
    backgroundColor: BrainColors.primary,
    selectedItemColor: BrainColors.White,
    unselectedItemColor: Colors.white.withOpacity(.5),
    items:  <BottomNavigationBarItem> [
    BottomNavigationBarItem(
    backgroundColor: BrainColors.secondary,
    icon: const Icon(Icons.home),
    label: "Home".tr,
    ),
    BottomNavigationBarItem(
    backgroundColor: BrainColors.secondary,
    icon: const Icon(Icons.notifications),
    label: "Notifications".tr,
    ),
    BottomNavigationBarItem(
    backgroundColor: BrainColors.secondary,
    icon:  const Icon(Icons.paid),
    label: "Payment".tr,
    ),
    BottomNavigationBarItem(
    backgroundColor: BrainColors.secondary,
    icon: const Icon(Icons.person),
    label: "Profile".tr,
    ),
    ],
    );
  }
}
