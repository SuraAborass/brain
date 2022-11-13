import 'package:brain/BusinessLayer/bindings/init_bindings.dart';
import 'package:brain/Constants/routes.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';
import '../PresentationLayer/screens/auth/login_screen.dart';
import '../PresentationLayer/screens/public/home_page.dart';
import '../PresentationLayer/screens/public/services_screen.dart';
import '../PresentationLayer/screens/public/splash_screen.dart';
import '../PresentationLayer/screens/public/webservice_screen.dart';

List<GetPage<dynamic>> router = [
  GetPage(
     name: AppRoutes.splashScreen,
      page: () => const SplashScreen(),
      ),

  GetPage(
    name: AppRoutes.loginPage,
    page: () => const LoginScreen(),
    binding: InitBinding()
        ),

  GetPage(
    name: AppRoutes.homepage,
    page: () =>  MyHomePage(),
      binding: InitBinding()
  ),

  GetPage(
      name: AppRoutes.homepage,
      page: () =>  Services(),
      binding: InitBinding()
  ),

  GetPage(
      name: AppRoutes.homepage,
      page: () =>  Webservice(),
      binding: InitBinding()
  ),
];