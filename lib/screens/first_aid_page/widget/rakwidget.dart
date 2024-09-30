import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pandu_nyawa/screens/first_aid_page/controller/first_aid_controller.dart';

class RakWidget extends StatelessWidget {
  final FirstAidController controller = Get.put(FirstAidController());
  final List<String> arrayImages;
  final List<int> indexImages;
  RakWidget({Key? key, required this.arrayImages, required this.indexImages}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 0),
          child: Image.asset(
            'lib/assets/images/rak_individu.png',
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: screenHeight * 0.027),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: List.generate(arrayImages.length, (index) {
              return GestureDetector(
                onTap: () {
                  controller.currentindex.value = indexImages[index];
                  controller.mainTitle();
                },child: Image.asset(arrayImages[index],
                height: screenHeight * 0.07, // Adjust the size as needed
                width: screenWidth * 0.24,
              ),
              );
            },)
          ),
        ),
      ],
    );
  }
}
