import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:pandu_nyawa/data/models/identify_model/identify_model.dart';

import '../detail_page/binding/detail_binding.dart';
import '../detail_page/view/detail_page.dart';

class CustomCard extends StatelessWidget {
  final String text;
  final String imagePath;
  final LukaModel lukaModel;

  const CustomCard({Key? key, required this.text, required this.imagePath, required this.lukaModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return GestureDetector(
      onTap: () {
        Get.to(() => DetailIdentifyPage(lukaModel: lukaModel), binding: DetailIdentifyBinding());
      },
      child: Container(
        width: screenWidth * 0.3,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Colors.black, width: 1.5),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisSize: MainAxisSize.min, // Adjusts height based on content
            children: [
              Image.asset(imagePath),
              SizedBox(height: 8), // Add some space between the image and text
              Text(text, textAlign: TextAlign.center),
            ],
          ),
        ),
      ),
    );
  }
}
