import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../BusinessLayer/Controllers/balance_controller.dart';
import '../../../Constants/colors.dart';
import '../../../Constants/font_styles.dart';
import '../../../Constants/routes.dart';
import '../../../main.dart';
import '../../widgets/appbar.dart';
import '../../widgets/drawer.dart';
import '../../widgets/home_page/latest_projects.dart';
import 'button_navigation_bar.dart';
import 'my_projects.dart';

class MyHomePage extends StatelessWidget {
   MyHomePage({Key? key}) : super(key: key);
  final BalanceController controller = Get.find();


  @override
  Widget build(BuildContext context) {

    final deviceSize=MediaQuery.of(context).size;

    return  Directionality(
      textDirection: Get.locale!.languageCode == "ar"
          ? TextDirection.rtl
          : TextDirection.ltr,
      child: Scaffold(
        backgroundColor : BrainColors.primary,
        drawer: MyDrawer(),
        appBar: customAppBar(context),
        bottomNavigationBar: const NavBar(),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children:[
                    Stack(
                          children: [
                                  Container(height: 205,color: Colors.white,),
                                  Container( decoration: const BoxDecoration(color:BrainColors.primary,
                                             borderRadius: BorderRadius.only(bottomLeft: Radius.circular(80.0))),
                                             width: deviceSize.width,
                                              height: 205,
                                     child:  Padding(padding: const EdgeInsets.only(left: 30,top: 60,right: 30),
                                                child: Column(
                                                                   mainAxisAlignment: MainAxisAlignment.start,
                                                                   crossAxisAlignment: CrossAxisAlignment.start,
                                                                   children:  [
                                                                              Text("My Balance".tr,
                                                                                    style: title3,),
                                                                              const SizedBox(height: 10.0,),
                                                                             GetBuilder(
                                                                                 init: controller,
                                                                                 builder: (_){
if(controller.balance==null ||controller.balance==""){
  return CircularProgressIndicator();
}
else{
  return Text(controller.balance!,
    style: title6,);
}

                                                                             })],),),),],),

                    Container(height: deviceSize.height,
                              decoration:const BoxDecoration(
                                color: BrainColors.White,
                                 borderRadius: BorderRadius.only(topRight: Radius.circular(80))),
                                 child: Column(
                                           children: [
                                                Padding(padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 20),
                                                           child: Row(
                                                                       children: [
                                                                                  Text("Latest Projects".tr,
                                                                                         style: title5,),
                                                                                   const Spacer(),
                                                                                   InkWell(
                                                                                     child: Text("See more".tr,
                                                                                         style: title4,),
                                                                                     onTap: (){ Get.to(const MyProjects());},
                                                                                   ),],),),
                                                 const LatestProjects(),
                                                  ],),),]),
        ),
      ),
    );
  }
}
