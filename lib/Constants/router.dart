import 'package:brain/BusinessLayer/bindings/home_binding.dart';
import 'package:brain/Constants/routes.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

import '../PresentationLayer/screens/auth/login_screen.dart';
import '../PresentationLayer/screens/public/home_page.dart';
//import '../PresentationLayer/screens/public/services_screen.dart';
import '../PresentationLayer/screens/public/splash_screen.dart';
//import '../PresentationLayer/screens/public/webservice_screen.dart';

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
  /* GetPage(name: AppRoutes.homepage, page: () => Services()),
  GetPage(
    name: AppRoutes.homepage,
    page: () => Webservice(),
  ), */
];
