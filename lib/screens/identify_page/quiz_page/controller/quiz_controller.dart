import 'dart:async';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../data/models/identify_model/identify_model.dart';
import '../../../../data/models/identify_quiz_model/identify_quiz_model.dart';

class QuizIdentifyController extends GetxController {
  var currentIndex = 0.obs;
  var correctScore = 0.obs;
  var incorrectScore = 0.obs;
  var selectedAnswerIndex = Rxn<int>();
  var answerSelected = false.obs;
  var hasAnsweredCorrectly = false.obs;
  var isSnackBarOpen = false.obs;
  var canNavigate = true.obs;

  var lukaModel = IdentifyModel(
    imagePath: [],
    title: '',
    steps: [],
    bab: '',
    subBab: '',
    quizzes: [],
  ).obs;

  void navigateToNextQuiz(List<QuizModel> quizzes) {
    if (currentIndex.value + 1 < quizzes.length) {
      canNavigate.value = false; // Mencegah navigasi lebih lanjut
      currentIndex.value++;
      selectedAnswerIndex.value = null; // Reset jawaban yang dipilih untuk kuis berikutnya
      answerSelected.value = false; // Reset flag pemilihan jawaban
      hasAnsweredCorrectly.value = false; // Reset flag jawaban benar

      Future.delayed(const Duration(milliseconds: 100), () {
        canNavigate.value = true; // Mengizinkan navigasi lagi untuk pertanyaan berikutnya
      });
    }
  }

  void showResult() {
    Get.defaultDialog(
      title: "Kuis Selesai",
      titleStyle: const TextStyle(
        fontSize: 20, // Set the title font size
        fontWeight: FontWeight.bold, // Set the title font weight
        color: Colors.blueAccent, // Set the title color
      ),
      content: Column(
        mainAxisSize: MainAxisSize.min, // Change to min to prevent overflow
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 16.0), // Add vertical padding
            child: Text(
              "Terima kasih telah mengikuti kuis!",
              style: TextStyle(
                fontSize: 16, // Set content font size
                color: Colors.black54, // Set content color
              ),
              textAlign: TextAlign.center, // Center-align the text
            ),
          ),
          ElevatedButton(
            onPressed: () {
              Get.back();
              Get.back();
            },
            style: ElevatedButton.styleFrom(
              foregroundColor: Colors.white,
              backgroundColor: Colors.blueAccent, // Set button text color
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12), // Set button padding
              textStyle: const TextStyle(
                fontSize: 16, // Set button text size
              ),
            ),
            child: const Text("Kembali"),
          ),
        ],
      ),
      barrierDismissible: false, // Prevent closing the dialog when tapping outside
    );
  }

  void selectAnswer(int index, QuizModel quizModel, List<QuizModel> quizzes) {
    if (hasAnsweredCorrectly.value) return;

    if (selectedAnswerIndex.value != index) {
      selectedAnswerIndex.value = index;
      answerSelected.value = true;

      if (index == quizModel.correctAnswer) {
        correctScore.value++;
        hasAnsweredCorrectly.value = true; // Tandai jawaban benar

        // Memungkinkan navigasi setelah 3 detik
        Future.delayed(const Duration(seconds: 3), () {
          if (hasAnsweredCorrectly.value) {
            navigateToNextQuiz(quizzes); // Navigasi otomatis setelah 3 detik
          }
        });
      } else {
        incorrectScore.value++;
        answerSelected.value = false; // Reset pemilihan jawaban jika salah
      }
    }
  }

  void showSnackbar(String title, String message) {
    if (!isSnackBarOpen.value) {
      isSnackBarOpen.value = true; // Set to true when Snackbar is shown
      Get.snackbar(
        title,
        message,
        duration: const Duration(seconds: 2), // Duration for the Snackbar
      );

      // Reset the flag after the duration
      Future.delayed(const Duration(seconds: 2), () {
        isSnackBarOpen.value = false; // Set to false after the Snackbar is dismissed
      });
    }
  }
}
