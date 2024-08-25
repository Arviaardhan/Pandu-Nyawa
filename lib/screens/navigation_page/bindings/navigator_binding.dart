import 'package:get/get.dart';

import '../controller/navigator_controller.dart';

class NavigatorBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<NavigatorController>(() => NavigatorController());
  }
}
