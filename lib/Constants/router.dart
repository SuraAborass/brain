import 'package:brain/BusinessLayer/bindings/home_binding.dart';
import 'package:brain/Constants/routes.dart';
import 'package:brain/PresentationLayer/screens/public/services_screen.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

import '../PresentationLayer/screens/auth/login_screen.dart';
import '../PresentationLayer/screens/public/home_page.dart';
import '../PresentationLayer/screens/public/notification_screen.dart';
import '../PresentationLayer/screens/public/profile_screen.dart';
import '../PresentationLayer/screens/public/splash_screen.dart';

List<GetPage<dynamic>> router = [
  GetPage(
    name: AppRoutes.splashScreen,
    page: () => SplashScreen(),
  ),
  GetPage(
    name: AppRoutes.loginPage,
    page: () => LoginScreen(),
  ),
  GetPage(
      name: AppRoutes.homepage, page: () => HomePage(), binding: HomeBinding()),
  GetPage(
      name: AppRoutes.services, page: () => Services(), binding: HomeBinding()),
  GetPage(
      name: AppRoutes.notifications,
      page: () => Notifications(),
      binding: HomeBinding()),
  GetPage(
      name: AppRoutes.userprofile,
      page: () => Profile(),
      binding: HomeBinding()),
];
