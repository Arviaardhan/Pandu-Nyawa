import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pandu_nyawa/data/models/identify_model/identify_model.dart';
import 'package:pandu_nyawa/screens/identify_page/detail_page/binding/detail_binding.dart';
import 'package:pandu_nyawa/screens/identify_page/detail_page/controller/detail_controller.dart';

class DetailIdentifyPage extends StatelessWidget {
  final LukaModel lukaModel;

  DetailIdentifyPage({Key? key, required this.lukaModel}) : super(key: key);

  DetailIdentifyController detailIdentifyController = Get.find<DetailIdentifyController>();

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    List<List<String>> stepPages = [];
    for (var i = 0; i < lukaModel.steps.length; i += 6) {
      stepPages.add(lukaModel.steps.sublist(
        i,
        i + 6 > lukaModel.steps.length ? lukaModel.steps.length : i + 6,
      ));
    }

    WidgetsBinding.instance.addPostFrameCallback((_) {
      detailIdentifyController.currentPage.value = 0;
    });

    return Scaffold(
      backgroundColor: Color(0xFFFFF5D7),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(screenHeight * 0.08),
        child: AppBar(
          centerTitle: true,
          backgroundColor: Colors.white,
          surfaceTintColor: Colors.white,
          title: Text(
            'Detail Page',
            style: TextStyle(fontWeight: FontWeight.w600),
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: screenWidth * 0.05,
          vertical: screenHeight * 0.05,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Pertolongan pertama pada ${lukaModel.title}',
              style: TextStyle(
                fontSize: screenWidth * 0.04,
                fontWeight: FontWeight.w500,
              ),
            ),
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
                      return Container(
                        margin: EdgeInsets.only(
                          right: screenWidth * 0.05,
                          left: screenWidth * 0.05,
                          top: screenHeight * 0.01,
                          bottom: screenHeight * 0.099,
                        ),
                        width: screenWidth * 0.9, // Adjust as needed
                        decoration: BoxDecoration(
                          color: Color(0xFFFF9D29),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: ListView(
                          padding: EdgeInsets.all(8.0),
                          children: stepPages[detailIdentifyController.currentPage.value].map((step) {
                            return Padding(
                              padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 12),
                              child: Text(
                                step,
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white,
                                ),
                              ),
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
                      ) : SizedBox.shrink();
                    }),
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Obx(() {
                      return detailIdentifyController.currentPage.value < stepPages.length - 1
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
                          icon: Icon(Icons.arrow_forward_ios, size: 24, color: Colors.black),
                          onPressed: () {
                            detailIdentifyController.nextPage(stepPages.length);
                          },
                        ),
                      ) : SizedBox.shrink();
                    }),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
