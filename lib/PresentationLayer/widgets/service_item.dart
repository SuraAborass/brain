import 'package:brain/DataAccessLayer/Models/service.dart';
import 'package:flutter/material.dart';
import '../../Constants/colors.dart';
import '../../Constants/font_styles.dart';

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
            color: BrainColors.primary,
            borderRadius: BorderRadius.all(Radius.circular(10.0))),
        child: Row(
          children: [
            Expanded(
              flex: 2,
              child: Container(
                decoration: BoxDecoration(
                    color: BrainColors.White,
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    image: DecorationImage(
                        image: NetworkImage(service.icon), fit: BoxFit.cover)),
                   height: 150,
                width: 75,
              ),
            ),
            Expanded(
              flex: 3,
                child: Padding(
                  padding:
                  const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        child: Text(
                          service.name,
                          style: AppTextStyles.boldBodyMedium
                          .apply(color: BrainColors.White),
                        ),
                      ),
                      SizedBox(
                        height: 1,
                      ),
                      Container(
                        child: Text(
                          service.description,
                          style: AppTextStyles.normalBodySmall
                              .apply(color: BrainColors.White),
                        ),
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
