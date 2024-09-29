import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pandu_nyawa/data/models/identify_model/identify_model.dart';
import 'package:pandu_nyawa/screens/emergency/view/emergency_page.dart';
import 'package:pandu_nyawa/screens/identify_page/detail_page/controller/detail_controller.dart';
import 'package:pandu_nyawa/screens/identify_page/quiz_page/view/quiz_view.dart';

import '../../../../widgets/drawer.dart';
import '../widget/button.dart';

class DetailIdentifyPage extends StatelessWidget {
  final LukaModel lukaModel;
  final String quizType;

  DetailIdentifyPage({Key? key, required this.lukaModel, required this.quizType}) : super(key: key);

  DetailIdentifyController detailIdentifyController = Get.put(DetailIdentifyController());

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    WidgetsBinding.instance.addPostFrameCallback((_) {
      detailIdentifyController.setCurrentLukaModel(lukaModel); // Update LukaModel
      detailIdentifyController.currentPage.value = 0;
    });

    void navigateToSubBab(LukaModel newLukaModel) {
      detailIdentifyController.updateLukaModel(
        title: newLukaModel.title,
        bab: newLukaModel.bab,
        subBab: newLukaModel.subBab,
        steps: newLukaModel.steps,
        quizzes: newLukaModel.quizzes,
        imagePath: newLukaModel.imagePath,
      );
    }

    return Scaffold(
      backgroundColor: Color(0xFFFFF5D7),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(screenHeight * 0.08),
        child: AppBar(
          automaticallyImplyLeading: false,
          centerTitle: true,
          backgroundColor: Colors.white,
          surfaceTintColor: Colors.white,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                'lib/assets/images/logo-pandu-nyawa.png',
                height: screenHeight * 0.075,
              ),
              Expanded(
                child: Align(
                  alignment: Alignment.center,
                  child: Container(
                    padding: EdgeInsets.symmetric(
                        vertical: 6, horizontal: screenWidth * 0.05),
                    decoration: BoxDecoration(
                        color: Color(0xFFE8B931),
                        borderRadius: BorderRadius.circular(10)),
                    child: Icon(Icons.person),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      endDrawer: DrawerCustom(),
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: screenWidth * 0.05,
          vertical: screenHeight * 0.05,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Obx(() => Text(
              detailIdentifyController.lukaModel.value.bab,
              style: TextStyle(
                fontSize: screenWidth * 0.05,
                fontWeight: FontWeight.w500,
              ),
            )),
            SizedBox(height: 5),
            Obx(() => Text(
              detailIdentifyController.lukaModel.value.title,
              style: TextStyle(
                fontSize: screenWidth * 0.04,
                fontWeight: FontWeight.w500,
              ),
            )),
            SizedBox(height: 15),
            Container(
              width: screenWidth.toDouble(),
              height: screenHeight * 0.2,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black,
                    spreadRadius: 1,
                    blurRadius: 3,
                    offset: Offset(0, 3),
                  ),
                ],
              ),
              child: Image.asset(lukaModel.imagePath),
            ),
            SizedBox(height: 20),
            Expanded(
              child: Stack(
                children: [
                  Center(
                    child: Obx(() {
                      List<String> currentSteps = detailIdentifyController.lukaModel.value.steps;
                      int pageSize = 4;
                      int totalPages = (currentSteps.length / pageSize).ceil();
                      int currentPage = detailIdentifyController.currentPage.value;

                      List<String> stepsToDisplay = currentSteps.skip(currentPage * pageSize).take(pageSize).toList();

                      return Container(
                        margin: EdgeInsets.symmetric(horizontal: screenWidth * 0.05),
                        decoration: BoxDecoration(
                          color: Color(0xFFFF9D29),
                          borderRadius: BorderRadius.circular(15),
                          boxShadow: [BoxShadow(color: Colors.black.withOpacity(0.3), spreadRadius: 1, blurRadius: 3)],
                        ),
                        child: ListView(
                          padding: EdgeInsets.all(8.0),
                          children: stepsToDisplay.map((step) {
                            return Padding(
                              padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 12),
                              child: Text(step, style: TextStyle(fontWeight: FontWeight.w500, color: Colors.white)),
                            );
                          }).toList(),
                        ),
                      );
                    }),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Obx(() {
                      return detailIdentifyController.currentPage.value > 0
                          ? Container(
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.2),
                              spreadRadius: 1,
                              blurRadius: 3,
                              offset: Offset(0, 3),
                            ),
                          ],
                        ),
                        child: IconButton(
                          icon: Icon(Icons.arrow_back_ios_new, size: 24, color: Colors.black),
                          onPressed: () {
                            detailIdentifyController.previousPage();
                          },
                        ),
                      )
                          : SizedBox.shrink();
                    }),
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Obx(() {
                      final isLastPage = detailIdentifyController.currentPage.value >= (detailIdentifyController.lukaModel.value.steps.length / 4).ceil() - 1;

                      return CustomButton(
                        icon: isLastPage ? Icons.arrow_forward : Icons.arrow_forward_ios,
                        onPressed: () {
                          if (isLastPage) {
                            detailIdentifyController.nextSubBab(); // Call nextSubBab
                          } else {
                            detailIdentifyController.nextPage(detailIdentifyController.lukaModel.value.steps.length ~/ 4);
                          }
                        },
                      );
                    }),
                  ),
                ],
              ),
            ),
            Obx(() {
              int totalSteps = detailIdentifyController.lukaModel.value.steps.length;

              // Check if we're on the last page based on the steps length
              bool isLastPage = detailIdentifyController.currentPage.value == (totalSteps / 4).ceil() - 1;

              if (isLastPage) {
                return Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        if (lukaModel.quizzes.isNotEmpty) // Ensure there's at least one quiz
                          ElevatedButton(
                            onPressed: () {
                              Get.to(() => QuizIdentifyPage(quizzes: lukaModel.quizzes));
                            },
                            style: OutlinedButton.styleFrom(
                              side: BorderSide(color: Colors.black, width: 1.0),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                              backgroundColor: Color(0xFFFFF5D7),
                            ),
                            child: Text('Test Simulasi', style: TextStyle(color: Colors.black)),
                          ),
                        ElevatedButton(
                          onPressed: () {
                            Get.to(EmergencyPage());
                          },
                          style: OutlinedButton.styleFrom(
                            side: BorderSide(color: Colors.black, width: 1.0),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                            backgroundColor: Color(0xFFFFF5D7),
                          ),
                          child: Text('Emergency', style: TextStyle(color: Colors.black)),
                        ),
                      ],
                    ),
                  ),
                );
              } else {
                return SizedBox.shrink(); // Hide the buttons if not on the last page
              }
            }),
          ],
        ),
      ),
    );
  }
}
