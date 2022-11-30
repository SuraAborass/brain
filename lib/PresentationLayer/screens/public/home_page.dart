import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../BusinessLayer/Controllers/balance_controller.dart';
import '../../../Constants/colors.dart';
import '../../../Constants/font_styles.dart';
import '../../widgets/appbar.dart';
import '../../widgets/drawer.dart';
import '../../widgets/home_page/latest_projects.dart';
import 'button_navigation_bar.dart';
import 'my_projects.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);
  final BalanceController balanceController = Get.find();

  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;

    return Directionality(
      textDirection: Get.locale!.languageCode == "ar"
          ? TextDirection.rtl
          : TextDirection.ltr,
      child: Scaffold(
        backgroundColor: BrainColors.primary,
        drawer: MyDrawer(),
        appBar: customAppBar(context),
        bottomNavigationBar: const NavBar(),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  children: [
                    Container(
                      height: 205,
                      color: Colors.white,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: BrainColors.primary,
                          borderRadius: Get.locale!.languageCode != "ar"
                              ? BorderRadius.only(
                                  bottomRight: Radius.circular(80.0))
                              : BorderRadius.only(
                                  bottomLeft: Radius.circular(80.0))),
                      width: deviceSize.width,
                      height: 205,
                      child: Padding(
                        padding:
                            const EdgeInsets.only(left: 30, top: 60, right: 30),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "My Balance".tr,
                              style: AppTextStyles.boldBodylarge
                                  .apply(color: BrainColors.White),
                            ),
                            const SizedBox(
                              height: 10.0,
                            ),
                            GetBuilder(
                                init: balanceController,
                                builder: (_) {
                                  if (balanceController.balance == null ||
                                      balanceController.balance == "") {
                                    return CircularProgressIndicator();
                                  } else {
                                    return Text(
                                      balanceController.balance!,
                                      style: AppTextStyles.boldBodyMedium
                                          .apply(color: BrainColors.lightWhite),
                                    );
                                  }
                                })
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  height: Get.height - 300,
                  decoration: BoxDecoration(
                      color: BrainColors.White,
                      borderRadius: Get.locale!.languageCode != "ar"
                          ? BorderRadius.only(topLeft: Radius.circular(80))
                          : BorderRadius.only(topRight: Radius.circular(80))),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 30.0, vertical: 20),
                        child: Row(
                          children: [
                            Text(
                              "Latest Projects".tr,
                              style: AppTextStyles.boldBodyMedium,
                            ),
                            const Spacer(),
                            InkWell(
                              child: Text(
                                "See more".tr,
                                style: AppTextStyles.boldBodySmall
                                    .apply(color: BrainColors.grey),
                              ),
                              onTap: () {
                                Get.to(MyProjects());
                              },
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 8, horizontal: 20),
                        child: LatestProjects(),
                      ),
                    ],
                  ),
                ),
              ]),
        ),
      ),
    );
  }
}
