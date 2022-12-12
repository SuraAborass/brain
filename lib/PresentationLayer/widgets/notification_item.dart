import 'package:flutter/material.dart';
import '../../Constants/colors.dart';
import '../../Constants/font_styles.dart';
import '../../DataAccessLayer/Models/notification.dart';

class NotificationItem extends StatelessWidget {
   NotificationItem({Key? key,required this.notification}) : super(key: key);

   final UserNotification notification;

  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;

    return Container(
      margin: EdgeInsets.symmetric(vertical: 8),
      //padding: EdgeInsets.all(5),
      width: deviceSize.width,
      decoration: BoxDecoration(
          color: BrainColors.White,
          borderRadius: BorderRadius.all(Radius.circular(10.0))),
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: CircleAvatar(
              radius: 100,
            backgroundImage: NetworkImage(notification.from_user.avatar),
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
                    Text(
                      notification.title,
                      style: AppTextStyles.boldBodyMedium
                          .apply(color: BrainColors.grey),
                    ),
                    SizedBox(
                      height: 1,
                    ),
                    Text(
                      notification.description,
                      style: AppTextStyles.normalBodySmall
                          .apply(color: BrainColors.grey),
                    ),
                    SizedBox(
                      height: 1,
                    ),
                    Text(
                      notification.time,
                      style: AppTextStyles.normalBodySmall
                          .apply(color: BrainColors.softGrey),
                    )
                  ],
                ),
              ))
        ],
      ),
    );
  }
}
