import 'package:get/get.dart';
import 'package:pandu_nyawa/screens/emergency/controller/emergency_controller.dart';

class EmergencyBinding extends Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut<EmergencyController>(() => EmergencyController());
  }
}
