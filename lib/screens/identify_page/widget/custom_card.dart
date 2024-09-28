import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:pandu_nyawa/data/models/identify_model/identify_model.dart';

import '../detail_page/binding/detail_binding.dart';
import '../detail_page/view/detail_page.dart';

class CustomCard extends StatelessWidget {
  final String text;
  final LukaModel lukaModel;

  const CustomCard({Key? key, required this.text, required this.lukaModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return GestureDetector(
      onTap: () {
        Get.to(() => DetailIdentifyPage(lukaModel: lukaModel, quizType: 'Tipe Quiz',), binding: DetailIdentifyBinding());
      },
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: screenWidth * 0.15, vertical: screenHeight * 0.01),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Colors.black, width: 1.5),
          color: Colors.white, // Optional: Add background color
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Center(
            child: Text(
              text,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: screenWidth * 0.037, fontWeight: FontWeight.w500),
            ),
          ),
        ),
      ),
    );
  }
}
