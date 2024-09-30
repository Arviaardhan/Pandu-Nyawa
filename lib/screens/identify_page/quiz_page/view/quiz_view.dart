import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../data/models/identify_quiz_model/identify_quiz_model.dart';
import '../controller/quiz_controller.dart';

class QuizIdentifyPage extends StatelessWidget {
  final List<QuizModel> quizzes;

  const QuizIdentifyPage({
    Key? key,
    required this.quizzes,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    final QuizIdentifyController controller = Get.put(QuizIdentifyController());

    return Scaffold(
      backgroundColor: Color(0xFFFFF5D7),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        title: Text('Quiz'),
      ),
      body: SingleChildScrollView(
        child: Obx(() {
          final quizModel = quizzes[controller.currentIndex.value]; // Get current quiz

          return Padding(
            padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width * 0.05),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: MediaQuery.of(context).size.height * 0.03),
                Text(
                  'Test Simulasi',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                Text(
                  quizModel.question,
                  style: TextStyle(fontSize: 18),
                  textAlign: TextAlign.start,
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                Column(
                  children: quizModel.options.asMap().entries.map((entry) {
                    int index = entry.key;
                    String option = entry.value;

                    Color containerColor;
                    Widget icon;
                    if (controller.selectedAnswerIndex.value == index) {
                      if (index == quizModel.correctAnswer) {
                        containerColor = Colors.green;
                        icon = Padding(
                          padding: EdgeInsets.only(right: screenWidth * 0.05),
                          child: Icon(Icons.check, color: Colors.white),
                        );
                      } else {
                        containerColor = Colors.red;
                        icon = Padding(
                          padding: EdgeInsets.only(right: screenWidth * 0.05),
                          child: Icon(Icons.close, color: Colors.white),
                        );
                      }
                    } else {
                      containerColor = Colors.white; // Default color if not selected
                      icon = SizedBox.shrink(); // No icon if not selected
                    }

                    return Padding(
                      padding: const EdgeInsets.symmetric(vertical: 5.0),
                      child: GestureDetector(
                        onTap: () {
                          controller.selectAnswer(index, quizModel, quizzes);
                        },
                        child: Container(
                          width: double.infinity,
                          padding: EdgeInsets.symmetric(vertical: 10),
                          decoration: BoxDecoration(
                            color: containerColor,
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: Colors.grey.shade400),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width * 0.1, vertical: MediaQuery.of(context).size.height * 0.01),
                                child: Text(
                                  option,
                                  style: TextStyle(
                                    color: controller.selectedAnswerIndex.value == index
                                        ? Colors.white
                                        : Colors.black,
                                    fontSize: 16,
                                  ),
                                ),
                              ),
                              controller.selectedAnswerIndex.value == index ? icon : SizedBox.shrink(),
                            ],
                          ),
                        ),
                      ),
                    );
                  }).toList(),
                ),
                SizedBox(height: 15),
                Align(
                  alignment: Alignment.bottomRight,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black26,
                          blurRadius: 4,
                          offset: Offset(0, 2),
                        ),
                      ],
                    ),
                    child: Obx(() {
                      // Check if it's the last question
                      bool isLastQuestion = controller.currentIndex.value == quizzes.length - 1;

                      return IconButton(
                        icon: isLastQuestion ? Icon(Icons.check) : Icon(Icons.arrow_forward),
                          onPressed: () {
                            if (controller.answerSelected.value) {
                              // Periksa apakah jawaban yang dipilih benar
                              bool isCorrectAnswer = controller.selectedAnswerIndex.value == quizzes[controller.currentIndex.value].correctAnswer;

                              if (isCorrectAnswer) {
                                // Cek apakah ini adalah pertanyaan terakhir
                                if (isLastQuestion) {
                                  // Tampilkan dialog konfirmasi
                                  Get.defaultDialog(
                                    title: "Konfirmasi",
                                    content: Padding(
                                      padding: EdgeInsets.symmetric(horizontal: 30),
                                      child: Text("Apakah Anda yakin ingin mengakhiri kuis?"),
                                    ),
                                    actions: [
                                      TextButton(
                                        onPressed: () => Get.back(),
                                        child: Text("Tidak"),
                                      ),
                                      TextButton(
                                        onPressed: () {
                                          Get.back();
                                          controller.showResult();
                                        },
                                        child: Text("Iya"),
                                      ),
                                    ],
                                  );
                                } else {
                                  // Jika jawaban benar, izinkan navigasi manual
                                  if (controller.canNavigate.value) {
                                    controller.navigateToNextQuiz(quizzes);
                                  }
                                }
                              } else {
                                controller.showSnackbar("Peringatan", "Jawaban salah, silakan pilih jawaban yang benar.");
                              }
                            } else {
                              controller.showSnackbar("Peringatan", "Silakan pilih jawaban terlebih dahulu.");
                            }
                          },
                      );
                    }),
                  ),
                ),
              ],
            ),
          );
        }),
      ),
    );
  }
}
