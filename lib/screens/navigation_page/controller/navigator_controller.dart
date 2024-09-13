import 'package:get/get.dart';


class NavigatorController extends GetxController {

  // final historyController = Get.put(HistoryController());
  var currentIndex = 0.obs;
  var menuPageArgument = 0.obs;

  @override
  void onInit() async {
    // TODO: implement onInit
    super.onInit();
  }
  void changeIndex(int index) async {
    currentIndex.value = index;
  }
}
