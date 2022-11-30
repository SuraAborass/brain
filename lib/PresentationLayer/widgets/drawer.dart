import 'package:brain/BusinessLayer/Controllers/user_controller.dart';
import 'package:brain/theme_service.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../Constants/colors.dart';
import '../../Constants/font_styles.dart';
import '../screens/public/contact_us_screen.dart';
import '../screens/public/services_screen.dart';

class MyDrawer extends StatelessWidget {
  MyDrawer({Key? key}) : super(key: key);

  final themeData = Get.isDarkMode ? ThemeData.dark() : ThemeData.light();
  final ThemeService _themeService = Get.find();
  final UserController userController = Get.find();
  @override
  Widget build(BuildContext context) {
    return Drawer(
        backgroundColor: BrainColors.lightWhite,
        child: ListView(padding: EdgeInsets.zero, children: <Widget>[
          UserAccountsDrawerHeader(
              decoration: BoxDecoration(color: BrainColors.primary),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(userController.user!.avatar),
              ),
              accountName: userController.user != null
                  ? Text(
                      userController.user!.name,
                      style: AppTextStyles.boldBodyMedium
                          .apply(color: Colors.white),
                    )
                  : Text("App User",
                      style: AppTextStyles.boldBodyMedium
                          .apply(color: Colors.white)),
              accountEmail: Text(userController.user!.email,
                  style: AppTextStyles.normalBodySmall
                      .apply(color: Colors.white))),
          ListTile(
            leading: const Icon(
              Icons.home,
              color: BrainColors.primary,
            ),
            title: Text('Home'.tr,
                style: AppTextStyles.normalBodySmall
                    .apply(color: BrainColors.grey)),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.person, color: BrainColors.primary),
            title: Text('Profile'.tr,
                style: AppTextStyles.normalBodySmall
                    .apply(color: BrainColors.grey)),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.home_repair_service,
                color: BrainColors.primary),
            title: Text('Services'.tr,
                style: AppTextStyles.normalBodySmall
                    .apply(color: BrainColors.grey)),
            onTap: () {
              Get.to(Services());
            },
          ),
          ListTile(
            leading: Icon(
                Theme.of(context).brightness == Brightness.light
                    ? Icons.dark_mode_rounded
                    : Icons.light_mode_rounded,
                color: BrainColors.primary),
            title: Text(
                themeData == ThemeData.dark()
                    ? 'Light Theme'.tr
                    : 'Dark Theme'.tr,
                style: AppTextStyles.normalBodySmall
                    .apply(color: BrainColors.grey)),
            onTap: () {
              if (Get.isDarkMode) {
                Get.changeThemeMode(ThemeMode.light);
              } else {
                Get.changeThemeMode(ThemeMode.dark);
              }
              _themeService.switchTheme();
            },
          ),
          ListTile(
            leading: const Icon(Icons.language, color: BrainColors.primary),
            title: Text('Language'.tr,
                style: AppTextStyles.normalBodySmall
                    .apply(color: BrainColors.grey)),
            onTap: () {
              Get.defaultDialog(
                  title: 'Choose Language'.tr,
                  titleStyle: Theme.of(context).textTheme.bodyLarge,
                  content: Column(
                    children: [
                      ListTile(
                        title: Text("Arabic".tr),
                        onTap: () {
                          Get.updateLocale(const Locale('ar', 'AR'));
                          Get.back();
                        },
                      ),
                      ListTile(
                        title: Text("English".tr),
                        onTap: () {
                          Get.updateLocale(const Locale('en', 'US'));
                          Get.back();
                        },
                      )
                    ],
                  ));
            },
          ),
          ListTile(
            leading:
                const Icon(Icons.contact_support, color: BrainColors.primary),
            title: Text("Contact US".tr,
                style: AppTextStyles.normalBodySmall
                    .apply(color: BrainColors.grey)),
            onTap: () {
              Get.to(ContactUs());
            },
          ),
          ListTile(
            onTap: () async {
              await userController.logout();
            },
            title: Text(
              "Logout".tr,
              style:
                  AppTextStyles.normalBodySmall.apply(color: BrainColors.grey),
            ),
            leading: const Icon(
              Icons.logout,
              color: BrainColors.primary,
            ),
          ),
        ]));
  }
}
