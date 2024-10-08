import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../routes/app_routes.dart';
import '../screens/navigation_page/controller/navigator_controller.dart';
class AppbarCustom extends StatelessWidget {

   AppbarCustom({Key? key}) : super(key: key);
  final NavigatorController controller = Get.put(NavigatorController());
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return AppBar(
      automaticallyImplyLeading: false,
      centerTitle: true,
      backgroundColor: Colors.white,
      surfaceTintColor: Colors.white,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          InkWell(
            onTap: () {
              Get.toNamed(Routes.BOTTOMNAVBAR);
              controller.currentIndex.value = 0;
            },
            child: Image.asset(
              'lib/assets/images/logo-pandu-nyawa.png',
              height: screenHeight * 0.075,
            ),
          ),
          Expanded(
            child: InkWell(
              onTap: () {
                Get.toNamed(Routes.ABOUT_US_PAGE);
              },
              child: Align(
                alignment: Alignment.center,
                child: Container(
                  padding: EdgeInsets.symmetric(
                      vertical: 6, horizontal: screenWidth * 0.05),
                  decoration: BoxDecoration(
                      color: const Color(0xFFE8B931),
                      borderRadius: BorderRadius.circular(10)),
                  child: const Icon(Icons.person),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
