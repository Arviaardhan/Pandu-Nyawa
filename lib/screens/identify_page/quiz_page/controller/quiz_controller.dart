import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../data/models/identify_quiz_model/identify_quiz_model.dart';

class QuizIdentifyController extends GetxController {
  var currentIndex = 0.obs;
  var correctScore = 0.obs; // Score for correct answers
  var incorrectScore = 0.obs; // Score for incorrect answers
  var selectedAnswerIndex = Rxn<int>(); // Holds selected answer index
  var answerSelected = false.obs; // Flag to track if an answer has been selected

  void navigateToNextQuiz(List<QuizModel> quizzes) {
    if (currentIndex.value + 1 < quizzes.length) {
      currentIndex.value++;
      selectedAnswerIndex.value = null; // Reset selected answer for the next quiz
      answerSelected.value = false; // Reset the answer selection flag
    } else {
      // Show result after finishing the quiz
      showResult(quizzes.length);
    }
  }

  void showResult(int totalQuizzes) {
    double percentageScore = (correctScore.value / totalQuizzes) * 100; // Calculate percentage score
    Get.defaultDialog(
      title: "Kuis Selesai",
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text("Skor Anda: Benar: ${correctScore.value}, Salah: ${incorrectScore.value}"),
          SizedBox(height: 10),
          Text("Persentase Skor: ${percentageScore.toStringAsFixed(1)}%"),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              Get.back();
              Get.back();
            },
            child: Text("Kembali"),
          ),
        ],
      ),
    );
  }

  void selectAnswer(int index, QuizModel quizModel) {
    if (!answerSelected.value) { // Only allow selection if no answer is selected
      selectedAnswerIndex.value = index;
      answerSelected.value = true; // Set the flag to true to prevent further selections
      if (index == quizModel.correctAnswer) {
        correctScore.value++; // Increment correct score
      } else {
        incorrectScore.value++; // Increment incorrect score
      }
    }
  }
}
