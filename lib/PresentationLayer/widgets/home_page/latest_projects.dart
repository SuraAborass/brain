import 'package:brain/Constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../screens/public/project_screen.dart';


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
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    //margin: const EdgeInsets.all(8.0),
                    decoration: const BoxDecoration(color: BrainColors.White,
                        borderRadius: BorderRadius.all(Radius.circular(10.0))),
                    height: 51 ,
                    width: 51 ,
                    child: MaterialButton(
                      onPressed: ()=>Get.to( const Project()),
                      child: Hero(
                        tag: "to project",
                        child: Image.asset('assets/images/Mockup6.png'),
                      ),
                    ),
                  ),
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
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    //margin: const EdgeInsets.all(8.0),
                    decoration: const BoxDecoration(color: BrainColors.White,
                        borderRadius: BorderRadius.all(Radius.circular(10.0))),
                    height: 51 ,
                    width: 51 ,
                    child: MaterialButton(
                      onPressed: ()=>Get.to( const Project()),
                      child: Hero(
                        tag: "to project",
                        child: Image.asset('assets/images/Mockup6.png'),
                      ),
                    ),

                  ),
                )
              ],
            ),
          ],
        ),)

      ],

    );
  }
}
