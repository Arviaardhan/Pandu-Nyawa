import 'package:get/get.dart';
import 'package:pandu_nyawa/screens/first_aid_page/controller/first_aid_controller.dart';



class FirstAidBinding extends Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut<FirstAidController>(() => FirstAidController());
  }
}
