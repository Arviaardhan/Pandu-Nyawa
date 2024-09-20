import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/bindings_interface.dart';
import 'package:pandu_nyawa/screens/identify_page/quiz_page/controller/quiz_controller.dart';

class QuizIdentifyBinding extends Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut<QuizIdentifyController>(() => QuizIdentifyController());
  }
}