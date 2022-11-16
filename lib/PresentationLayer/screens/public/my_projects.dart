import 'package:brain/PresentationLayer/screens/public/project_screen.dart';
import 'package:brain/PresentationLayer/widgets/appbar.dart';
import 'package:flutter/material.dart';
import '../../../Constants/colors.dart';
import '../../../Constants/font_styles.dart';
import '../../widgets/drawer.dart';
import '../../widgets/title.dart';
import 'button_navigation_bar.dart';
import 'package:get/get.dart';


class MyProjects extends StatelessWidget {
  const MyProjects({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final deviceSize=MediaQuery.of(context).size;

    return Directionality(
      textDirection: Get.locale!.languageCode == "ar"
          ? TextDirection.rtl
          : TextDirection.ltr,
      child: Scaffold(
        backgroundColor : Theme.of(context).scaffoldBackgroundColor,
        drawer: MyDrawer(),
        appBar: customAppBar(context),
        bottomNavigationBar: const NavBar(),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                     Padding(
                       padding: const EdgeInsets.all(10.0),
                       child: pageTitle("My Projects".tr,),
                     ),
                 //const Icon(Icons.arrow_circle_down,color: BrainColors.primary,)
                ]),
              Padding(padding: const  EdgeInsets.only(left: 10,right: 10),
                child: Column(
                  children: [
                    const SizedBox(height: 10,),
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
                    const SizedBox(height: 10,),
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
                )
              ),


            ],
          ),

        ),
      ),
    );
  }
}
