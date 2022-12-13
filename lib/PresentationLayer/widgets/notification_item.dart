import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../../Constants/colors.dart';
import '../../Constants/font_styles.dart';
import '../../DataAccessLayer/Models/notification.dart';

class NotificationItem extends StatelessWidget {
  NotificationItem({Key? key, required this.notification}) : super(key: key);

  final UserNotification notification;

  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;

    return Container(
      margin: EdgeInsets.symmetric(vertical: 8),
      //padding: EdgeInsets.all(5),
      width: deviceSize.width,
      height: 100,
      decoration: BoxDecoration(
          color: BrainColors.White,
          borderRadius: BorderRadius.all(Radius.circular(10.0))),
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: CircleAvatar(
              radius: 40,
              backgroundImage: CachedNetworkImageProvider(
                  notification.from_user.avatar,
                  maxHeight: 200,
                  maxWidth: 200),
            ),
          ),
          Expanded(
              flex: 3,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      notification.title,
                      style: AppTextStyles.boldBodyMedium
                          .apply(color: BrainColors.grey),
                    ),
                    Text(
                      notification.description,
                      style: AppTextStyles.normalBodySmall.apply(
                          color: BrainColors.grey,
                          overflow: TextOverflow.ellipsis),
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
