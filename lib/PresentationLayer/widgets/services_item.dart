import 'package:brain/DataAccessLayer/Models/service.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../BusinessLayer/Controllers/services_controller.dart';
import '../../Constants/colors.dart';
import '../../Constants/font_styles.dart';
import '../screens/public/services_screen.dart';

class ServicesItem extends StatelessWidget {
   ServicesItem({Key? key, required this.service,}) : super(key: key);


   final  BrainService service ;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 8),
        padding: EdgeInsets.all(5),
        decoration: BoxDecoration(
            color: BrainColors.lightWhite,
            borderRadius: BorderRadius.all(Radius.circular(10.0))),
        child: Row(
          children: [
            Container(
              decoration: BoxDecoration(
                  color: BrainColors.White,
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  image: DecorationImage(
                      image: NetworkImage(service.icon), fit: BoxFit.cover)),
              height: 75,
              width: 75,
            ),
            Expanded(
                child: Padding(
                  padding:
                  const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        service.name,
                        style: AppTextStyles.boldBodyMedium,
                      ),
                      SizedBox(
                        height: 1,
                      ),
                      Text(
                        service.description,
                        style: AppTextStyles.normalBodySmall
                            .apply(color: Colors.grey),
                      )
                    ],
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
