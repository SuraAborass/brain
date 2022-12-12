import 'package:flutter/material.dart';
import 'package:get/get.dart';


import '../../../Constants/colors.dart';
import '../../../Constants/font_styles.dart';
import '../../widgets/appbar.dart';
import '../../widgets/drawer.dart';
import '../../widgets/title.dart';
import 'button_navigation_bar.dart';


class ContactUs extends StatelessWidget {
  const ContactUs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: Get.locale!.languageCode == "ar"
          ? TextDirection.rtl
          : TextDirection.ltr,
      child: Scaffold(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        drawer: MyDrawer(),
        appBar: myAppBar(context),
        bottomNavigationBar: const NavBar(),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            pageTitle("Contact Us".tr),
            SizedBox(height: 30,),
            Center(
                child: Image.asset('assets/images/logo-dark.png',height: 56 ,width: 130 ,fit: BoxFit.cover, )),
            SizedBox(height: 30,),
            ListTile(
                  leading: Icon(Icons.location_on_sharp,color: BrainColors.secondary,),
                  title: Text("Address".tr,style: AppTextStyles.boldBodyMedium,),
                  subtitle: Text("Syria, Damascus, Salhya".tr ,style: AppTextStyles.boldBodyMedium.apply(color: BrainColors.grey) ,),
              ),
            ListTile(
              leading: Icon(Icons.phone,color: BrainColors.secondary,),
              title: Text("Phone".tr,style: AppTextStyles.boldBodyMedium,),
              subtitle: Text("00000000".tr ,style: AppTextStyles.boldBodyMedium.apply(color: BrainColors.grey) ,),
            ),
            ListTile(
              leading: Icon(Icons.switch_account_sharp,color: BrainColors.secondary,),
              title: Text("Social Accounts".tr,style: AppTextStyles.boldBodyMedium.apply(color: BrainColors.grey),),
              subtitle: Row(
                children: [
                  Icon(Icons.facebook),
                ],
              ),

            ),

            Padding(
              padding: const EdgeInsets.only(left: 30.0, right: 30,top: 70),
              child: MaterialButton(onPressed: (){},
                color: BrainColors.primary,
                height: 47,
                minWidth: 312,
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                        Radius.circular(20.0))),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset('assets/images/Icon weather-lightning.png',height: 22, width: 17,),
                    Text("  Quick Support",style: AppTextStyles.boldBodyMedium.apply(color: BrainColors.grey),),
                  ],),
              ),
            ),
          ],),
      ),
    );
  }
}
