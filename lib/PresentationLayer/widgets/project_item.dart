import 'package:brain/DataAccessLayer/Models/project.dart';
import 'package:brain/PresentationLayer/screens/public/project_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../Constants/colors.dart';
import '../../Constants/font_styles.dart';

class ProjectItem extends StatelessWidget {
  ProjectItem({Key? key, required this.project});
  final UserProject project;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Get.to(ProjectScreen(project: project)),
      child: Hero(
        tag: "projects" + project.id.toString(),
        child: Container(
          margin: EdgeInsets.symmetric(vertical: 8),
          padding: EdgeInsets.all(5),
          decoration: BoxDecoration(
              color: BrainColors.lightWhite,
              borderRadius: BorderRadius.all(Radius.circular(10.0))),
          child: Row(
            children: [
              Container(
                decoration: BoxDecoration(
                    color: BrainColors.White,
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    image: DecorationImage(
                        image: NetworkImage(project.image), fit: BoxFit.cover)),
                height: 75,
                width: 75,
              ),
              Expanded(
                  child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      project.title,
                      style: AppTextStyles.boldBodyMedium,
                    ),
                    SizedBox(
                      height: 1,
                    ),
                    Text(
                      project.service,
                      style: AppTextStyles.normalBodySmall
                          .apply(color: Colors.grey),
                    )
                  ],
                ),
              ))
            ],
          ),
        ),
      ),
    );
  }
}
