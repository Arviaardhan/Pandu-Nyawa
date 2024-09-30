import 'package:get/get.dart';
import 'package:pandu_nyawa/screens/about_us_page/controller/about_us_controller.dart';

class AboutUsBinding extends Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut<AboutUsController>(() => AboutUsController());
  }
}
