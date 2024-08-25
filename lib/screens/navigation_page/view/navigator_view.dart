import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:pandu_nyawa/screens/first_aid_page/view/first_aid_page.dart';
import 'package:pandu_nyawa/screens/home_page/View/home_page.dart';

import '../../../themes/icon.dart';
import '../controller/navigator_controller.dart';

class BottomNavbar extends StatelessWidget {
  final NavigatorController controller = Get.put(NavigatorController());
  final List<Widget> pages = [
    HomePage(),
    FirstAidPage(),
  ];

  BottomNavbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      extendBody: true,
      body: Obx(() => pages[controller.currentIndex.value]),
      bottomNavigationBar: Obx(() {
        return Visibility(
          visible: controller.currentIndex.value != 0,
          child: ClipRRect(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20.0),
                topRight: Radius.circular(20.0),
            ),
            child: BottomNavigationBar(
              currentIndex: controller.currentIndex.value,
              onTap: controller.changeIndex,
              backgroundColor: Colors.white,
              selectedItemColor: Colors.deepPurple,
              unselectedItemColor: Colors.lightBlue,
              type: BottomNavigationBarType.fixed,
              showUnselectedLabels: true,
              items: [
                BottomNavigationBarItem(
                  icon: Icon(Icons.home),
                  label: '',
                ),
                BottomNavigationBarItem(
                  icon: Obx(() => controller.currentIndex.value == 1
                      ? SvgPicture.asset(IconThemes.iconShield)
                      : SvgPicture.asset(
                    IconThemes.iconShield,
                    color: Colors.orange,
                  )),
                  label: '',
                ),
                BottomNavigationBarItem(
                  icon: Obx(() => controller.currentIndex.value == 2
                      ? Icon(Icons.search)
                      : Icon(
                    Icons.search,
                    color: Colors.purple,
                  )),
                  label: '',
                ),
                BottomNavigationBarItem(
                  icon: Obx(() => controller.currentIndex.value == 3
                      ? Icon(Icons.emergency)
                      : Icon(
                    Icons.emergency,
                    color: Colors.green,
                  )),
                  label: '',
                ),
                BottomNavigationBarItem(
                  icon: Obx(() => controller.currentIndex.value == 4
                      ? Icon(Icons.warning_outlined)
                      : Icon(
                    Icons.warning_outlined,
                    color: Colors.red,
                  )),
                  label: '',
                ),
              ],
            ),
          ),
        );
      }),
    );
  }
}
