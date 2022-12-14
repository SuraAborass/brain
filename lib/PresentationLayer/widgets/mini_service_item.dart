import 'package:brain/Constants/font_styles.dart';
import 'package:brain/DataAccessLayer/Models/mini_service.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../Constants/colors.dart';
import '../screens/public/mini_service_details.dart';

class MiniServiceItem extends StatelessWidget {
  MiniServiceItem({super.key, required this.miniService,});
  final MiniService miniService;


  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 5),
      child: Row(
        children: [
          Container(
            width: 100,
            height: 100,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: BrainColors.grey,
              /*image: DecorationImage(
                  fit: BoxFit.cover,
                  image: CachedNetworkImageProvider(miniService.icon)),*/
            ),
            child: InkWell(
              onTap: ()=> Get.to(MiniServiceDetails(miniService: miniService,)),
              child: Hero(
                tag: "mini service",
                child: Image(image: CachedNetworkImageProvider(miniService.icon),fit: BoxFit.cover),
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: Padding(
              padding: const EdgeInsets.all(5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    miniService.name,
                    style: AppTextStyles.boldBodyMedium.apply(
                      color: BrainColors.primary,
                    ),
                  ),
                  Text(miniService.description,
                      style: AppTextStyles.normalBodyMedium
                          .apply(color: BrainColors.grey, fontSizeFactor: .7)),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "الأسعار ( الحد الادنى - الاعلى )  : ",
                        style: AppTextStyles.normalBodySmall.apply(
                            fontSizeFactor: .6,
                            overflow: TextOverflow.ellipsis),
                      ),
                      Text(
                        miniService.price_minimum +
                            "S.P" +
                            " - " +
                            miniService.price_maximum +
                            "S.P",
                        style: AppTextStyles.boldBodyMedium.apply(
                            color: BrainColors.secondary,
                            fontSizeFactor: .6,
                            overflow: TextOverflow.ellipsis),
                      )
                    ],
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
