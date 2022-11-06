import 'package:brain/theme_service.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get_storage/get_storage.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'BusinessLayer/bindings/init_bindings.dart';
import 'Constants/languages.dart';
import 'Constants/router.dart';
import 'Constants/theme.dart';
import 'package:get/get.dart';



SharedPreferences? sharedpref;

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await GetStorage.init();
  sharedpref = await SharedPreferences.getInstance();
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
      locale:Get.deviceLocale,
      fallbackLocale: const Locale.fromSubtags(languageCode: "ar"),
      initialBinding: InitBinding(),
      theme: AppThemes.lightTheme,
      darkTheme: AppThemes.darkTheme,
      themeMode: ThemeService().theme,
      getPages: router,
    );
  }
}

