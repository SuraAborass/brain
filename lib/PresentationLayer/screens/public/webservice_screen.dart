import 'package:brain/Constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../Constants/font_styles.dart';
import '../../widgets/appbar.dart';
import '../../widgets/drawer.dart';
import 'button_navigation_bar.dart';

class Webservice extends StatelessWidget {
  const Webservice({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final deviceSize=MediaQuery.of(context).size;

    return Directionality(
        textDirection: Get.locale!.languageCode == "ar"
            ? TextDirection.rtl
            : TextDirection.ltr,
        child: Scaffold(
            backgroundColor: Theme.of(context).scaffoldBackgroundColor,
            drawer: MyDrawer(),
            appBar: myAppBar(context),
            bottomNavigationBar: const NavBar(),
            body: SingleChildScrollView(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Text('Web Development'.tr,
                              style: AppTextStyles.boldBodyMedium.apply(color: BrainColors.grey),),
                          ),
                        ]),
                    Padding(padding:EdgeInsets.only(left: 20,right: 20 ),
                        child: Column(
                          children: [
                            const SizedBox(height: 10,),
                            Stack(
                              children: [
                                Container(
                                  decoration: BoxDecoration(color: BrainColors.primary,
                                      borderRadius: BorderRadius.all(Radius.circular(10.0))),
                                  height: 115,
                                  width: deviceSize.width,
                                ),
                                Padding(padding: EdgeInsets.all(8.0),
                                    child: Container(
                                      decoration: BoxDecoration(color: BrainColors.White,
                                          borderRadius: BorderRadius.all(Radius.circular(10.0))),
                                      height: 100,
                                      width: 100,
                                    ))
                              ],
                            ),
                            const SizedBox(height: 10,),
                            Stack(
                              children: [
                                Container(
                                  decoration: BoxDecoration(color: BrainColors.primary,
                                      borderRadius: BorderRadius.all(Radius.circular(10.0))),
                                  height: 115,
                                  width: deviceSize.width,
                                ),
                                Padding(padding: EdgeInsets.all(8.0),
                                    child: Container(
                                      decoration: BoxDecoration(color: BrainColors.White,
                                          borderRadius: BorderRadius.all(Radius.circular(10.0))),
                                      height: 100,
                                      width: 100,
                                    ))
                              ],
                            ),
                            const SizedBox(height: 10,),
                            Stack(
                              children: [
                                Container(
                                  decoration: BoxDecoration(color: BrainColors.primary,
                                      borderRadius: BorderRadius.all(Radius.circular(10.0))),
                                  height: 115,
                                  width: deviceSize.width,
                                ),
                                Padding(padding: EdgeInsets.all(8.0),
                                  child: Container(
                                    decoration: BoxDecoration(color: BrainColors.White,
                                        borderRadius: BorderRadius.all(Radius.circular(10.0))),
                                    height: 100,
                                    width: 100,
                                  ),
                                )
                              ],
                            ),
                            const SizedBox(height: 10,),
                            Stack(
                              children: [
                                Container(
                                  decoration: BoxDecoration(color: BrainColors.primary,
                                      borderRadius: BorderRadius.all(Radius.circular(10.0))),
                                  height: 115,
                                  width: deviceSize.width,
                                ),
                                Padding(padding: EdgeInsets.all(8.0),
                                  child: Container(
                                    decoration: BoxDecoration(color: BrainColors.White,
                                        borderRadius: BorderRadius.all(Radius.circular(10.0))),
                                    height: 100,
                                    width: 100,
                                  ),
                                )
                              ],
                            ),
                          ],
                        )
                    )
                  ]),
            )
        ));
  }
}
