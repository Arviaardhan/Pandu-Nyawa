import 'package:carousel_slider/carousel_controller.dart';
import 'package:get/get.dart';

class SimulationController extends GetxController {
  RxInt currentindex = 0.obs;
  final CarouselSliderController carouselSliderController = CarouselSliderController();
}
