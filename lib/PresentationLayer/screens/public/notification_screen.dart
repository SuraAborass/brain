import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../BusinessLayer/Controllers/notification_controller.dart';
import '../../widgets/appbar.dart';
import '../../widgets/drawer.dart';
import '../../widgets/notification_item.dart';
import 'button_navigation_bar.dart';

class Notifications extends StatelessWidget {
  Notifications({Key? key}) : super(key: key);
  final NotificationController _controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Directionality(
        textDirection: Get.locale!.languageCode == "ar"
            ? TextDirection.rtl
            : TextDirection.ltr,
        child: Scaffold(
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          drawer: MyDrawer(),
          appBar: myAppBar(context),
          bottomNavigationBar: const NavBar(),
          body: SingleChildScrollView(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    children: [
                      const SizedBox(
                        height: 10,
                      ),
                      SizedBox(
                        height: Get.height - 300,
                        child: ListView.builder(
                          itemCount: _controller.userNotifications.length,
                          itemBuilder: (BuildContext context, int index) {
                            return NotificationItem(
                              notification:
                                  _controller.userNotifications[index],
                            );
                          },
                        ),
                      ),
                    ],
                  )
                ]),
          ),
        ));
  }
}




