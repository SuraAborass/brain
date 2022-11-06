import 'package:brain/Constants/colors.dart';
import 'package:flutter/material.dart';


class LatestProjects extends StatelessWidget {
  const LatestProjects({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final deviceSize=MediaQuery.of(context).size;

    return  Column(
      children:  [
        Padding(padding: const EdgeInsets.only(left: 10, right: 10),
        child: Column(
          children: [
            const SizedBox(
              height: 10,
            ),
            Stack(
              children: [
                Container(
                  decoration: const BoxDecoration(color: BrainColors.secondary,
                      borderRadius: BorderRadius.all(Radius.circular(10.0))),
                  height: 63,
                  width: deviceSize.width,
                ),
                Container(
                  margin: const EdgeInsets.all(8.0),
                  decoration: const BoxDecoration(color: BrainColors.White,
                      borderRadius: BorderRadius.all(Radius.circular(10.0))),
                  height: 51 ,
                  width: 51 ,
                  child: Image.asset('assets/images/logo-dark.png'),
                )
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Stack(
              children: [
                Container(
                  decoration: const BoxDecoration(color: BrainColors.secondary,
                      borderRadius: BorderRadius.all(Radius.circular(10.0))),
                  height: 63,
                  width: deviceSize.width,
                ),
                Container(
                  margin: const EdgeInsets.all(8.0),
                  decoration: const BoxDecoration(color: BrainColors.White,
                      borderRadius: BorderRadius.all(Radius.circular(10.0))),
                  height: 51 ,
                  width: 51 ,
                  child: Image.asset('assets/images/logo-dark.png'),

                )
              ],
            ),
          ],
        ),)

      ],

    );
  }
}
