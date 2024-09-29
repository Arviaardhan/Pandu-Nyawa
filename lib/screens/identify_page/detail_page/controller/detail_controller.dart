import 'package:get/get.dart';

import '../../../../data/models/identify_model/identify_model.dart';
import '../../../../data/models/identify_quiz_model/identify_quiz_model.dart';
import '../view/detail_page.dart';

class DetailIdentifyController extends GetxController {
  var currentPage = 0.obs;
  var currentSubBabIndex = 0.obs;
  var lukaModel = LukaModel(
    imagePath: '',
    title: '',
    steps: [],
    bab: '',
    subBab: '',
    quizzes: [],
  ).obs;

  List<LukaModel> subBabs = [];

  @override
  void onInit() {
    super.onInit();
    currentPage.value = 0;
    currentSubBabIndex.value = 0;

    subBabs = [
      syokAnafilaksis,
      epinefrin,
      resutasiJantungParu,
      mengalamiAsma,
      orangLainMengalamiAsma,
      perdarahanLuarBerat,
      perdarahanLuarRingan,
      perdarahanDalam,
      pertolonganPatahTulang,
      diabetes
    ];
  }

  void updateLukaModel({
    required String title,
    required String bab,
    required String subBab,
    required List<String> steps,
    required List<QuizModel> quizzes,
    required String imagePath,
  }) {
    lukaModel.value = LukaModel(
      imagePath: imagePath,
      title: title,
      steps: steps,
      bab: bab,
      subBab: subBab,
      quizzes: quizzes,
    );
  }

  void setCurrentLukaModel(LukaModel newLukaModel) {
    lukaModel.value = newLukaModel; // Set nilai LukaModel saat ini
  }

  void nextPage(int totalPages) {
    if (currentPage.value < totalPages - 1) {
      currentPage.value++;
      print('Next Page: ${currentPage.value}');
    } else {
      nextSubBab();
    }
  }

  void previousPage() {
    if (currentPage.value > 0) {
      currentPage.value--;
      print('Previous Page: ${currentPage.value}');
    }
  }

  void nextSubBab() {
    if (currentSubBabIndex.value < subBabs.length - 1) {
      currentSubBabIndex.value++;
      lukaModel.value = subBabs[currentSubBabIndex.value]; // Update the current LukaModel instance
      lukaModel.refresh();
      currentPage.value = 0; // Reset to the first page of the next sub-bab
      Get.off(() => DetailIdentifyPage(
        lukaModel: lukaModel.value, // Pass the updated lukaModel
        quizType: lukaModel.value.title, // Pass the updated quiz type
      ));
      print('Navigating to next sub-bab: ${subBabs[currentSubBabIndex.value].title}');
    } else {
      print('You have reached the last sub-bab.');
    }
  }
}
