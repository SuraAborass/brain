import 'package:brain/BusinessLayer/Controllers/projects_controller.dart';
import 'package:brain/PresentationLayer/widgets/appbar.dart';
import 'package:brain/PresentationLayer/widgets/project_item.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../widgets/drawer.dart';
import 'button_navigation_bar.dart';

class MyProjects extends StatelessWidget {
  MyProjects({Key? key}) : super(key: key);

  final ProjectController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: Get.locale!.languageCode == "ar"
          ? TextDirection.rtl
          : TextDirection.ltr,
      child: Scaffold(
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          drawer: MyDrawer(),
          appBar: customAppBar(context),
          bottomNavigationBar: const NavBar(),
          body: Container(
            padding: EdgeInsets.all(8),
            child: ListView.builder(
              itemCount: controller.projects.length,
              itemBuilder: (BuildContext context, int index) {
                return ProjectItem(project: controller.projects[index]);
              },
            ),
          )),
    );
  }
}
