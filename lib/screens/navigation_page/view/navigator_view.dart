import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:pandu_nyawa/screens/emergency/view/emergency_page.dart';
import 'package:pandu_nyawa/screens/first_aid_page/view/first_aid_page.dart';
import 'package:pandu_nyawa/screens/home_page/View/home_page.dart';
import 'package:pandu_nyawa/screens/identify_page/view/identify_page.dart';
import 'package:pandu_nyawa/screens/simulation/view/simulation_page.dart';
import 'package:pandu_nyawa/themes/font_style.dart';

import '../../../data/models/identify_model/identify_model.dart';
import '../../../themes/icon.dart';
import '../controller/navigator_controller.dart';

class BottomNavbar extends StatelessWidget {
  final NavigatorController controller = Get.find<NavigatorController>();
  final List<IdentifyModel> lukaModels = [
    syokAnafilaksis,
    epinefrin,
    resutasiJantungParu,
    mengalamiAsma,
    orangLainMengalamiAsma,
    perdarahanLuarBerat,
    perdarahanLuarRingan,
    perdarahanDalam,
    pertolonganPatahTulang,
    diabetes,
    distress,
    tersedak,
    lukaBakar,
  ];

  BottomNavbar({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Widget> pages = [
      HomePage(),
      FirstAidPage(),
      IdentifyPage(lukaModels: lukaModels ?? []),
      SimulationPage(lukaModels: lukaModels ?? [], quizzes: [], ),
      EmergencyPage()
    ];

    return Scaffold(
      resizeToAvoidBottomInset: false,
      extendBody: true,
      body: Obx(() {
        return AnimatedSwitcher(
          duration: const Duration(milliseconds: 300),
          transitionBuilder: (Widget child, Animation<double> animation) {
            return FadeTransition(opacity: animation, child: child);
          },
          child: pages[controller.currentIndex.value],
        );
      }),
      bottomNavigationBar: Obx(() {
        return Offstage(
          offstage: controller.currentIndex.value == 0,
          child: Container(
            child: ClipRRect(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(10.0),
                topRight: Radius.circular(10.0),
              ),
              child: GNav(
                selectedIndex: controller.currentIndex.value,
                onTabChange: controller.changeIndex,
                backgroundColor: Colors.white,
                color: Colors.black, // Unselected item color
                tabBackgroundColor: buttonNavbar(controller.currentIndex.value),
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5), // Adjust padding as needed
                tabMargin: EdgeInsets.symmetric(vertical: 5),
                gap: 8, // Gap between icon and text
                tabBorderRadius: 30,
                tabs: [
                  GButton(
                    icon: Icons.home,
                    text: 'Home',
                    textStyle: BottomNavbarSelectedTextStyle(0),
                  ),
                  GButton(
                    icon: Icons.shield,
                    leading: Obx(() => controller.currentIndex.value == 1
                        ? Container(
                      padding: const EdgeInsets.all(5),
                      child: Row(
                        children: [
                          SvgPicture.asset(IconThemes.iconShield, color: Colors.orange,width: 20,height: 20,fit: BoxFit.fill,),
                          const SizedBox(width: 5),
                          Text('First Aid', style: BottomNavbarSelectedTextStyle(1)),
                        ],
                      ),
                    )
                        : SvgPicture.asset(IconThemes.iconShield, color: Colors.black,width: 20,height: 20,fit: BoxFit.fill),),
                  ),
                  GButton(
                    icon: Icons.search,
                    leading: Obx(() => controller.currentIndex.value == 2
                        ? Container(
                      padding: const EdgeInsets.all(3),
                      child: Row(
                        children: [
                          const Icon(Icons.search, color: Color(0xFF6750A4)),
                          const SizedBox(width: 5),
                          Text('Identify', style: BottomNavbarSelectedTextStyle(2)),
                        ],
                      ),
                    )
                        : const Icon(Icons.search, color: Colors.black)),
                  ),
                  GButton(
                    icon: Icons.monitor_heart_outlined,

                    leading: Obx(() => controller.currentIndex.value == 3
                        ? Container(
                      padding: const EdgeInsets.symmetric(horizontal: 1, vertical: 3),
                      child: Row(
                        children: [
                          const Icon(Icons.monitor_heart_outlined, color: Color.fromARGB(255, 38, 71, 76)),
                          const SizedBox(width: 2),
                          Text('Simulation', style: BottomNavbarSelectedTextStyle(3)),
                        ],
                      ),
                    )
                        : const Icon(Icons.monitor_heart_outlined, color: Colors.black)),
                  ),
                  GButton(
                    icon: Icons.warning_outlined,
                    leading: Obx(() => controller.currentIndex.value == 4
                        ? Container(
                      padding: const EdgeInsets.all(3),
                      child: Row(
                        children: [
                          const Icon(Icons.warning_outlined, color: Color(0xFFB3261E)),
                          const SizedBox(width: 5),
                          Text('Emergency', style: BottomNavbarSelectedTextStyle(4)),
                        ],
                      ),
                    )
                        : const Icon(Icons.warning_outlined, color: Colors.black)),
                  ),
                ],
              ),
            ),
          ),
        );
      }),
    );
  }
}

