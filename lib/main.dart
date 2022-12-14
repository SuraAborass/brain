import 'package:brain/theme_service.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'BusinessLayer/bindings/init_bindings.dart';
import 'Constants/colors.dart';
import 'Constants/languages.dart';
import 'Constants/router.dart';
import 'Constants/theme.dart';


const AndroidNotificationChannel channel = AndroidNotificationChannel(
    'importance-channel',
    'high importance notifications',
    description: 'this channel is used for importance notifications',
    importance: Importance.high,
    playSound: true);

final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
FlutterLocalNotificationsPlugin();

Future<void> _firebaseMessagingBackgroundHandler(RemoteMessage message) async{
  await Firebase.initializeApp();
  print('message shows up : ${message.messageId}');
}

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await GetStorage.init();
  await Firebase.initializeApp();
  FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);

  await flutterLocalNotificationsPlugin
      .resolvePlatformSpecificImplementation<AndroidFlutterLocalNotificationsPlugin>()
  ?.createNotificationChannel(channel);

  await FirebaseMessaging.instance
      .setForegroundNotificationPresentationOptions(
    alert: true,
    badge: true,
     sound: true
  );
  FirebaseMessaging.onMessageOpenedApp.listen((RemoteMessage message) {
    print('Anew Message was published');
    RemoteNotification? notification = message.notification;
    AndroidNotification? android = message.notification?.android;
  });
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
  /*flutterLocalNotificationsPlugin.show(
      0, 'testing', 'anything',
      NotificationDetails(
          android: AndroidNotificationDetails(
            channel.id,
            channel.name,
            channelDescription: channel.description,
            importance: Importance.high,
            color: BrainColors.primary,
            icon: '@mipmap/launcher_icon',
          )
      ));*/
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  static int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      translations: Languages(),
      locale: Get.deviceLocale,
      fallbackLocale: const Locale.fromSubtags(languageCode: "ar"),
      initialBinding: InitBinding(),
      theme: AppThemes.lightTheme
          .copyWith(textTheme: TextTheme().apply(fontFamily: "Cairo")),
      darkTheme: AppThemes.darkTheme,
      themeMode: ThemeService().theme,
      getPages: router,
    );
  }
}



