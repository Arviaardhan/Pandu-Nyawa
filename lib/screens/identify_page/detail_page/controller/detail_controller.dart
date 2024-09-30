import 'package:get/get.dart';
import '../../../../data/models/identify_model/identify_model.dart';
import '../../../../data/models/identify_quiz_model/identify_quiz_model.dart';
import '../view/detail_page.dart';

class DetailIdentifyController extends GetxController {
  var currentPage = 0.obs;
  var currentSubBabIndex = 0.obs;
  var currentImageIndex = 0.obs;
  var lukaModel = IdentifyModel(
    imagePath: [],
    title: '',
    steps: [],
    bab: '',
    subBab: '',
    quizzes: [],
  ).obs;

  List<IdentifyModel> subBabs = [];

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
      diabetes,
      distress,
      tersedak,
      lukaBakar,
    ];
  }

  void updateLukaModel({
    required String title,
    required String bab,
    required String subBab,
    required List<String> steps,
    required List<QuizModel> quizzes,
    required List<String> imagePath,
  }) {
    lukaModel.value = IdentifyModel(
      imagePath: imagePath,
      title: title,
      steps: steps,
      bab: bab,
      subBab: subBab,
      quizzes: quizzes,
    );
    currentImageIndex.value = 0;
  }

  void setCurrentLukaModel(IdentifyModel newLukaModel) {
    lukaModel.value = newLukaModel;
    currentImageIndex.value = 0;
  }

  void nextPage() {
    int totalPages = (lukaModel.value.steps.length / 4).ceil(); // Calculate total pages
    if (currentPage.value < totalPages - 1) {
      currentPage.value++;
      currentImageIndex.value = (currentPage.value * 4) ~/ 4;
    } else {
      nextSubBab(); // Go to the next sub-bab if it's the last page
    }
  }

  void previousPage() {
    if (currentPage.value > 0) {
      currentPage.value--;
      currentImageIndex.value = (currentPage.value * 4) ~/ 4;
    }
  }

  void nextSubBab() {
    if (currentSubBabIndex.value < subBabs.length - 1) {
      currentSubBabIndex.value++;
      lukaModel.value = subBabs[currentSubBabIndex.value];
      currentPage.value = 0;
      currentImageIndex.value = 0;
      Get.to(() => DetailIdentifyPage(
        lukaModel: lukaModel.value, // Pass the updated lukaModel
        quizType: lukaModel.value.title, // Pass the updated quiz type
      ));
    } else {

    }
  }
}
