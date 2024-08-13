import 'package:get/get.dart';
import 'package:pandu_nyawa/screens/home_page/Controller/home_controller.dart';
import 'package:pandu_nyawa/screens/home_page/View/home_page.dart';
import 'package:pandu_nyawa/screens/home_page/Binding/home_binding.dart';

import 'app_routes.dart';

class AppPages {
  static const HOME = Route.HOMEVIEW_PAGE;

  static final routes = [
    GetPage(
      name: Path.HOMEVIEW_PAGE,
      page: () => HomePage(),
      binding: HomeBinding(),  // Bind HomeController here
      transition: Transition.noTransition,
    ),
    // other routes
  ];
}
