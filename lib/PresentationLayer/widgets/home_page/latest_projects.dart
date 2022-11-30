import 'package:brain/PresentationLayer/widgets/project_item.dart';
import 'package:brain/PresentationLayer/widgets/shimmers/project_item_shimmer.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../BusinessLayer/Controllers/projects_controller.dart';

class LatestProjects extends StatelessWidget {
  LatestProjects({Key? key}) : super(key: key);
  final ProjectController projectController = Get.find();
  @override
  Widget build(BuildContext context) {
    return GetBuilder(
        init: projectController,
        builder: (context) {
          return SizedBox(
            height: Get.height - 400,
            child: projectController.loading.value == true
                ? ListView.builder(
                    itemCount: 5,
                    itemBuilder: (BuildContext context, int index) {
                      return ProjectItemShimmer();
                    },
                  )
                : ListView.builder(
                    itemCount: projectController.projects.length,
                    itemBuilder: (BuildContext context, int index) {
                      return ProjectItem(
                          project: projectController.projects[index]);
                    },
                  ),
          );
        });
  }
}
