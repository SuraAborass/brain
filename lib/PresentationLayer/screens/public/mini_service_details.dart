import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../Constants/colors.dart';
import '../../../Constants/font_styles.dart';
import '../../../DataAccessLayer/Models/mini_service.dart';

class MiniServiceDetails extends StatelessWidget {
  MiniServiceDetails({Key? key, required this.miniService}) : super(key: key);

  final MiniService miniService;

  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(8.0),
        child: MaterialButton(onPressed: (){},
          height: 47,
          minWidth: deviceSize.width,
          color: BrainColors.primary,
          shape: const RoundedRectangleBorder(
              borderRadius:
              BorderRadius.all(Radius.circular(20.0))),
          child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text('Get the service'.tr,
                    style: AppTextStyles.boldBodyMedium.copyWith(color: BrainColors.White)),
              ],
            )),
      ),
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 400,
            pinned: true,
            backgroundColor: Theme.of(context).scaffoldBackgroundColor,
            flexibleSpace: FlexibleSpaceBar(
              background: Hero(
                tag: "mini service" + miniService.id.toString(),
                child: Container(
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(
                            miniService.icon,
                          ),
                          fit: BoxFit.cover),
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(20),
                          bottomRight: Radius.circular(20))),
                ),
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate([
              Padding(padding: EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Text(miniService.description,
                            style: AppTextStyles.normalBodyMedium.copyWith(color: Colors.black),),
                        ),
                      ],
                    ),
                  ),
                  Container(height: 50, width: deviceSize.width, color: BrainColors.softGrey,
                    child: Row(
                      children: [
                        Container(height: 50,width: 15, color: BrainColors.primary,),
                        Expanded(
                            child: Row(children: [
                                  Text("Maximum price: ",style: AppTextStyles.normalBodyMedium
                                      .copyWith(color: Colors.black),
                                      textAlign: TextAlign.start),
                                  Text(miniService.price_maximum,style: AppTextStyles.normalBodyMedium
                                      .copyWith(color: Colors.black),)
                        ],))
                      ],
                    ),
                  ),
                  const SizedBox(height: 15,),
                  Container(height: 70, width: deviceSize.width, color: BrainColors.softGrey,
                    child: Row(
                      children: [
                        Container(height: 70,width: 15, color: BrainColors.primary,),
                        Expanded(
                          child: Row(children: [
                                    Text("Minimum price: ",style: AppTextStyles.normalBodyMedium.copyWith(color: Colors.black),),
                                    Text(miniService.price_minimum,style: AppTextStyles.normalBodyMedium.copyWith(color: Colors.black),)
                          ],),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(height: 15,),
                  Container(height: 50, width: deviceSize.width, color: BrainColors.softGrey,
                    child: Row(
                      children: [
                        Container(height: 50,width: 15, color: BrainColors.primary,),
                        Expanded(child: Row(children: [
                         Text("Service: ",style: AppTextStyles.normalBodyMedium.copyWith(color: Colors.black),),
                          Text(miniService.service,style: AppTextStyles.normalBodyMedium.copyWith(color: Colors.black),)
                        ],))
                      ],
                    ),
                  )
                ],
              ),),
            ],
            ),
          ),
        ],
      ),
    );
  }
}
