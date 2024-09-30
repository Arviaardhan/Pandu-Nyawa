import 'package:get/get.dart';
import 'package:pandu_nyawa/screens/about_us_page/binding/about_us_binding.dart';
import 'package:pandu_nyawa/screens/about_us_page/view/about_us_page.dart';
import 'package:pandu_nyawa/screens/emergency/binding/emergency_binding.dart';
import 'package:pandu_nyawa/screens/emergency/view/emergency_page.dart';
import 'package:pandu_nyawa/screens/first_aid_page/view/first_aid_page.dart';
import 'package:pandu_nyawa/screens/home_page/Controller/home_controller.dart';
import 'package:pandu_nyawa/screens/home_page/View/home_page.dart';
import 'package:pandu_nyawa/screens/home_page/Binding/home_binding.dart';
import 'package:pandu_nyawa/screens/navigation_page/view/navigator_view.dart';

import '../screens/first_aid_page/binding/first_aid_binding.dart';
import '../screens/navigation_page/bindings/navigator_binding.dart';
import 'app_routes.dart';

class AppPages {
  static const INITIAL = Routes.BOTTOMNAVBAR;

  static final routes = [
    GetPage(
        name: Path.BOTTOMNAVBAR,
        page: () => BottomNavbar(),
        bindings: [
          NavigatorBinding(),
          HomeBinding(),
          FirstAidBinding(),
          EmergencyBinding()
        ],
        transition: Transition.fadeIn,
        transitionDuration: const Duration(milliseconds: 500)),
    GetPage(
      name: Path.HOMEVIEW_PAGE,
      page: () => HomePage(),
      binding: HomeBinding(),  // Bind HomeController here
      transition: Transition.noTransition,
    ),
    GetPage(
      name: Path.FIRSTAID_PAGE,
      page: () => FirstAidPage(),
      binding: FirstAidBinding(),  // Bind HomeController here
      transition: Transition.noTransition,
    ),
    GetPage(
      name: Path.EMERGENCY_PAGE,
      page: () => EmergencyPage(),
      binding: EmergencyBinding(),  // Bind HomeController here
      transition: Transition.noTransition,
    ),
    GetPage(
      name: Path.ABOUT_US_PAGE,
      page: () => AboutUsPage(),
      binding: AboutUsBinding(),  // Bind HomeController here
      transitionDuration: Duration(milliseconds: 300),
      transition: Transition.fadeIn,
    ),
    // other routes
  ];
}
