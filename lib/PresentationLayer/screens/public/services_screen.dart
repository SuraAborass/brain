import 'package:brain/BusinessLayer/Controllers/services_controller.dart';
import 'package:brain/PresentationLayer/widgets/service_item.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../widgets/appbar.dart';
import '../../widgets/drawer.dart';
import '../../widgets/title.dart';
import 'button_navigation_bar.dart';

class Services extends StatelessWidget {
  Services({Key? key}) : super(key: key);
  final ServicesController _servicesController = Get.find();

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
            body: GetBuilder(
                init: _servicesController,
                builder: (context) {
                  return SingleChildScrollView(
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          pageTitle('Services'.tr),
                          Padding(
                              padding: EdgeInsets.only(left: 20, right: 20),
                              child: Column(
                                children: [
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  SizedBox(
                                    height: Get.height - 300,
                                    child: ListView.builder(
                                      itemCount:
                                          _servicesController.services.length,
                                      itemBuilder:
                                          (BuildContext context, int index) {
                                        return ServicesItem(
                                            service: _servicesController
                                                .services[index]);
                                      },
                                    ),
                                  ),
                                ],
                              ))
                        ]),
                  );
                })));
  }
}
