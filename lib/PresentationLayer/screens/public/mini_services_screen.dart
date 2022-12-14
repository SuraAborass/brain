import 'package:brain/BusinessLayer/Controllers/mini_services_controller.dart';
import 'package:brain/PresentationLayer/widgets/mini_service_item.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../widgets/appbar.dart';
import '../../widgets/drawer.dart';
import '../../widgets/title.dart';
import 'button_navigation_bar.dart';

class MiniServiceScreen extends StatelessWidget {
  MiniServiceScreen({super.key});
  final MiniServicesController miniServicesController =
      Get.put(MiniServicesController(Get.arguments[0]));
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
                init: miniServicesController,
                builder: (context) {
                  return SingleChildScrollView(
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          pageTitle(miniServicesController.service.name),
                          Padding(
                              padding: EdgeInsets.only(left: 20, right: 20),
                              child: Column(
                                children: [
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  SizedBox(
                                    height: Get.height - 300,
                                    child: miniServicesController.loading.value
                                        ? Center(
                                            child: CircularProgressIndicator(),
                                          )
                                        : ListView.builder(
                                            itemCount: miniServicesController
                                                .miniservices.length,
                                            itemBuilder: (BuildContext context,
                                                int index) {
                                              return MiniServiceItem(
                                                  miniService:
                                                      miniServicesController
                                                          .miniservices[index]);
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
