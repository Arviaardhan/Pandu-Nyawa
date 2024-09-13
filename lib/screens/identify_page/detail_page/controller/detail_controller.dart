import 'package:get/get.dart';

class DetailIdentifyController extends GetxController {
  var currentPage = 0.obs;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    currentPage.value = 0;
  }

  void nextPage(int totalPages) {
    if (currentPage.value < totalPages - 1) {
      currentPage.value++;
      print('Next Page: ${currentPage.value}');
    }
  }

  void previousPage() {
    if (currentPage.value > 0) {
      currentPage.value--;
      print('Previous Page: ${currentPage.value}');
    }
  }
}
