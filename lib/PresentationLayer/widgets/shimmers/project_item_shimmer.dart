import 'package:flutter/material.dart';

import '../../../Constants/colors.dart';
import 'shimmer_widget.dart';

class ProjectItemShimmer extends StatelessWidget {
  const ProjectItemShimmer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 8),
      padding: EdgeInsets.all(5),
      decoration: BoxDecoration(
          color: BrainColors.lightWhite,
          borderRadius: BorderRadius.all(Radius.circular(10.0))),
      child: Row(
        children: [
          Shimmerwidget.roundedrectangler(width: 75, height: 75),
          Expanded(
              child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Shimmerwidget.rectangler(height: 20),
                SizedBox(
                  height: 10,
                ),
                Shimmerwidget.rectangler(height: 20),
              ],
            ),
          ))
        ],
      ),
    );
  }
}
