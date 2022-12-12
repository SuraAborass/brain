import 'package:brain/BusinessLayer/Controllers/profile_controlloer.dart';
import 'package:brain/BusinessLayer/Controllers/user_controller.dart';
import 'package:brain/Constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../Constants/font_styles.dart';
import '../../widgets/appbar.dart';
import '../../widgets/drawer.dart';
import '../../widgets/title.dart';
import 'button_navigation_bar.dart';
class Profile extends StatelessWidget {
  Profile({Key? key}) : super(key: key);
final UserController _userController = Get.find();
final ProfileController _profileController = Get.put(ProfileController());

  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;
    return  Directionality(textDirection: Get.locale!.languageCode == "ar"
        ? TextDirection.rtl
        : TextDirection.ltr,
      child: Scaffold(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        drawer: MyDrawer(),
        appBar: myAppBar(context),
        bottomNavigationBar: const NavBar(),
          body: GetBuilder(
              init: _profileController,
            builder: (context) {
              return SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      pageTitle('Profile'.tr),
                      Center(
                        child: ListTile(
                          title: CircleAvatar(
                            radius: 80,
                            backgroundImage: AssetImage("assets/images/pexels-motional-studio-1081685.png"),
                          ),
                          subtitle: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Text("Sura Aborass".tr,style: AppTextStyles.boldBodyMedium.copyWith(fontSize: 18,color: BrainColors.grey),textAlign: TextAlign.center,),
                          ),
                        ),
                      ),
                      SizedBox(height: 20,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [Text('Update Profile Info'.tr,style: AppTextStyles.normalBodySmall.copyWith(color: BrainColors.grey,fontSize: 16))]
                      ),
                      SizedBox(height:20),
                      TextFormField(
                        controller: _profileController.emailController,
                        keyboardType: TextInputType.emailAddress,
                        maxLines: 1,
                        decoration: InputDecoration(
                          hintText: 'Enter Your Email'.tr,
                          hintStyle: AppTextStyles.normalBodyMedium.copyWith(color: BrainColors.grey) ,
                        ),
                      ),
                      const SizedBox(height: 20),
                      TextFormField(
                        controller: _profileController.passwordController,
                        keyboardType: TextInputType.emailAddress,
                        maxLines: 1,
                        decoration: InputDecoration(
                          hintText: 'Leave it empty to avoid changes'.tr,
                          hintStyle: AppTextStyles.normalBodyMedium.copyWith(color: BrainColors.grey),
                        ),
                      ),
                      const SizedBox(height: 50),
                     MaterialButton(onPressed: ()async{
                          await _profileController.updateInfo();
                        },
                          height: 47,
                          minWidth: deviceSize.width,
                          color: BrainColors.primary ,
                          shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(
                                  Radius.circular(20.0))),
                          child: Text('Update'.tr, style: AppTextStyles.boldBodylarge.copyWith(color: BrainColors.White) ),)

                    ]),
                ),
              );
            }
          ),
      ),
    );
  }
}
