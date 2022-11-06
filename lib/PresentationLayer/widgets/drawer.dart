import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../Constants/colors.dart';
import 'package:brain/theme_service.dart';

import '../../Constants/font_styles.dart';

class MyDrawer extends StatelessWidget {
   MyDrawer({Key? key}) : super(key: key);

  final themeData = Get.isDarkMode ? ThemeData.dark() : ThemeData.light();
  final ThemeService _themeService = Get.find();


  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: BrainColors.lightWhite,
      child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
           DrawerHeader(
                 decoration: const BoxDecoration(
                 color: BrainColors.White,),
                 child: Image.asset('assets/images/logo-dark.png',alignment: Alignment.centerLeft,),
                      ),
            ListTile(
              leading: const Icon(Icons.home,size: 40,color: BrainColors.primary,),
              title: Text('Home'.tr, style: title7),
              onTap: () {},
            ),
           ListTile(
                leading: const Icon(Icons.person,size: 40,color: BrainColors.primary),
                title:  Text('Profile'.tr, style: title7),
                onTap:() {},
                  ),
           ListTile(
                 leading: Icon(Theme.of(context).brightness==Brightness.light? Icons.dark_mode_rounded : Icons.light_mode_rounded,color: BrainColors.primary),
                  title:  Text(themeData == ThemeData.dark()  ? 'Light Theme'.tr : 'Dark Theme'.tr , style: title7),
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
              leading: const Icon(Icons.language,size: 40,color: BrainColors.primary),
              title: Text('Language'.tr,style: title7),
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
              title: Text(
                "Logout".tr,
                style: title7,
              ),
              leading: const Icon(
                Icons.logout,
                color: BrainColors.primary,
              ),
            ),
              ]
      )

    );
  }
}
