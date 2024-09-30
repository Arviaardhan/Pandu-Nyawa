import 'package:get/get.dart';
import 'package:pandu_nyawa/screens/simulation/controller/simulation_controller.dart';

class IdentifyBinding extends Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut<SimulationController>(() => SimulationController());
  }
}
