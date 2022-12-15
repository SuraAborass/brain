import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:get/get.dart';

import '../../../BusinessLayer/Controllers/notification_controller.dart';
import '../../../Constants/colors.dart';
import '../../../main.dart';
import '../../widgets/appbar.dart';
import '../../widgets/drawer.dart';
import '../../widgets/notification_item.dart';
import '../../widgets/title.dart';
import 'button_navigation_bar.dart';

class Notifications extends StatelessWidget {
  Notifications({Key? key}) : super(key: key);

  final NotificationController _controller = Get.find();

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
          body: SingleChildScrollView(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Expanded(flex:3,child: pageTitle('Notifications'.tr)),
                      Expanded(child: MyHomePage())
                    ],
                  ),
                  Column(
                    children: [
                      const SizedBox(
                        height: 10,
                      ),
                      SizedBox(
                        height: Get.height - 300,
                        child: ListView.builder(
                          itemCount: _controller.userNotifications.length,
                          itemBuilder: (BuildContext context, int index) {
                            return NotificationItem(
                              notification:
                                  _controller.userNotifications[index],
                            );
                          },
                        ),
                      ),
                    ],
                  )
                ]),
          ),
        ));
  }
}
class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}
class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  @override
  void initState(){
    super.initState();
    FirebaseMessaging.onMessage.listen((RemoteMessage message) {
      RemoteNotification? notification = message.notification;
      AndroidNotification? android = message.notification?.android;
      if(notification !=null && android != null ){
        flutterLocalNotificationsPlugin.show(
            notification.hashCode,
            notification.title,
            notification.body,
            NotificationDetails(
              android: AndroidNotificationDetails(
                  channel.id,
                  channel.name,
                  playSound: true,
                  channelDescription: channel.description,
                  color: BrainColors.primary,
                  icon: '@mipmap/launcher_icon'),));
      }
    });
    FirebaseMessaging.onMessageOpenedApp.listen((RemoteMessage message) {
      print('Anew Message was published');
      RemoteNotification? notification = message.notification;
      AndroidNotification? android = message.notification?.android;
      if(notification !=null && android != null){
        showDialog(context: context, builder: (_){
          return AlertDialog(
            title: Text(''),
            content: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [Text(notification.body.toString())],
              ),
            ),
          );
        });
      }
    });
  }

  void showNotification(){
    setState(() {
      _counter++;
    });
    flutterLocalNotificationsPlugin.show(
        0, 'testing ${_counter}', 'anything',
        NotificationDetails(
            android: AndroidNotificationDetails(
              channel.id,
              channel.name,
              channelDescription: channel.description,
              importance: Importance.high,
              color: BrainColors.primary,
              icon: '@mipmap/launcher_icon',
            )
        ));
  }
  @override
  Widget build(BuildContext context) {
    return IconButton(icon: Icon(Icons.notifications),
      color: BrainColors.secondary,
      onPressed: showNotification,
    );
  }
}



