import 'package:get/get.dart';
import 'package:pandu_nyawa/screens/identify_page/controller/identify_controller.dart';

class IdentifyBinding extends Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut<IdentifyController>(() => IdentifyController());
  }
}
