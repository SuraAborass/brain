import 'package:brain/Constants/font_styles.dart';
import 'package:brain/DataAccessLayer/Models/project.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../Constants/colors.dart';

class ProjectScreen extends StatelessWidget {
  ProjectScreen({Key? key, required this.project}) : super(key: key);

  final UserProject project;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 300,
            pinned: true,
            backgroundColor: Theme.of(context).scaffoldBackgroundColor,
            flexibleSpace: FlexibleSpaceBar(
              background: Stack(
                alignment: Alignment.topCenter,
                children: [
                  Container(
                    height: 320,
                    decoration: BoxDecoration(
                        color: BrainColors.primary,
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(20),
                            bottomRight: Radius.circular(20))),
                  ),
                  Hero(
                    tag: "projects" + project.id.toString(),
                    child: Container(
                      height: 300,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: NetworkImage(
                                project.image,
                              ),
                              fit: BoxFit.cover),
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(20),
                              bottomRight: Radius.circular(20))),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Row(
                    children: [
                      Icon(
                        Icons.task,
                        color: BrainColors.secondary,
                      ),
                      Text(
                        "Tasks ",
                        style: AppTextStyles.boldBodylarge,
                      ),
                      Text(
                        "(3 of 5 Done)",
                        style: AppTextStyles.boldBodyMedium
                            .apply(color: BrainColors.grey),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: SizedBox(
                    height: Get.height - 300,
                    child: ListView.builder(
                      itemCount: project.tasks!.length,
                      itemBuilder: (BuildContext context, int index) {
                        return Container(
                          margin: EdgeInsets.symmetric(vertical: 10),
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              color: project.tasks![index].status != 2
                                  ? BrainColors.grey
                                  : BrainColors.secondary,
                              borderRadius: BorderRadius.circular(10)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                flex: 5,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      project.tasks![index].title,
                                      style: AppTextStyles.boldBodyMedium
                                          .apply(color: Colors.white),
                                    ),
                                    Text(
                                      project.tasks![index].description,
                                      style: AppTextStyles.normalBodySmall
                                          .apply(color: Colors.white),
                                    )
                                  ],
                                ),
                              ),
                              Expanded(
                                  flex: 1,
                                  child: buildStatueWidget(
                                      project.tasks![index].status))
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

Widget buildStatueWidget(int statue) {
  switch (statue) {
    case 0:
      return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.timeline,
            color: Colors.white,
          ),
          Text("On Hold")
        ],
      );
    case 1:
      return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.work,
            color: Colors.white,
          ),
          Text("Working")
        ],
      );
    case 2:
      return Column(
        children: [
          Icon(
            Icons.done,
            color: Colors.white,
          ),
          Text("Done")
        ],
      );
    default:
      return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.done,
            color: Colors.white,
          ),
          Text("Done")
        ],
      );
  }
}
