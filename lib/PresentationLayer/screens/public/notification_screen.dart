import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../widgets/appbar.dart';
import '../../widgets/drawer.dart';
import '../../widgets/title.dart';
import 'button_navigation_bar.dart';

class Notifications extends StatelessWidget {
  const Notifications({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Directionality(textDirection: Get.locale!.languageCode == "ar"
        ? TextDirection.rtl
        : TextDirection.ltr,
        child: Scaffold(
            backgroundColor: Theme.of(context).scaffoldBackgroundColor,
            drawer: MyDrawer(),
            appBar: customAppBar(context),
            bottomNavigationBar: const NavBar(),
            body: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                   pageTitle("Notifications".tr,),

            ],
          ),
        ));
  }
}
