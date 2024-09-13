import 'package:get/get.dart';
import 'package:pandu_nyawa/screens/identify_page/detail_page/controller/detail_controller.dart';

class DetailIdentifyBinding extends Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut<DetailIdentifyController>(() => DetailIdentifyController());
  }
}
