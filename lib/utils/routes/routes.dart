import 'package:app_structure/utils/routes/routes_name.dart';
import 'package:app_structure/view/splash/splash_screen.dart';
import 'package:get/get.dart';

class Routes {
  static List<GetPage> pages = [
    GetPage(name: RoutesName.splashScreen, page: () => const SplashScreen()),
  ];
}
