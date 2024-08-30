import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:pandu_nyawa/screens/emergency/view/emergency_page.dart';
import 'package:pandu_nyawa/screens/first_aid_page/view/first_aid_page.dart';
import 'package:pandu_nyawa/screens/home_page/View/home_page.dart';
import 'package:pandu_nyawa/screens/identify_page/view/identify_page.dart';
import 'package:pandu_nyawa/screens/simulation/view/simulation_page.dart';
import 'package:pandu_nyawa/themes/font_style.dart';

import '../../../themes/icon.dart';
import '../controller/navigator_controller.dart';

class BottomNavbar extends StatelessWidget {
  final NavigatorController controller = Get.put(NavigatorController());
  final List<Widget> pages = [
    HomePage(),
    FirstAidPage(),
    IdentifyPage(),
    SimulationPage(),
    EmergencyPage()
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
              unselectedItemColor: Colors.black,
              type: BottomNavigationBarType.fixed,
              showUnselectedLabels: true,
              items: [
                BottomNavigationBarItem(
                  icon: Icon(Icons.home,color: Colors.black,),
                  label: '',
                ),
                BottomNavigationBarItem(
                  icon: Obx(() => controller.currentIndex.value == 1
                      ?
                  Container(
                    padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          color: Color.fromARGB(200, 255, 240, 194),
                          borderRadius: BorderRadius.all(Radius.circular(20))
                        ),
                        child: Row(children: [
                          SvgPicture.asset(IconThemes.iconShield, color: Colors.orange),
                                            SizedBox(width: 5,),
                                            Text('First Aid',style: BottomNavbarSelectedTextStyle(1),)
                                          ]),
                      )
                      : SvgPicture.asset(
                    IconThemes.iconShield,
                  )),
                  label: '',
                ),

                BottomNavigationBarItem(
                  icon: Obx(() => controller.currentIndex.value == 2
                      ?
                  Container(
                    padding: EdgeInsets.all(3),
                    decoration: BoxDecoration(
                        color: Color.fromARGB(200, 187, 165, 247),
                        borderRadius: BorderRadius.all(Radius.circular(20))
                    ),
                    child: Row(children: [
                      Icon(Icons.search, color:Color(0xFF6750A4),),
                      SizedBox(width: 5,),
                      Text('Identify',style: BottomNavbarSelectedTextStyle(2),)
                    ]),
                  )
                      : Icon(
                    Icons.search,
                    color: Colors.black,
                  )),
                  label: '',
                ),
                BottomNavigationBarItem(
                  icon: Obx(() => controller.currentIndex.value == 3
                      ?
                  Container(
                    padding: EdgeInsets.all(3),
                    decoration: BoxDecoration(
                        color: Color.fromARGB(200, 100, 152, 160),
                        borderRadius: BorderRadius.all(Radius.circular(20))
                    ),
                    child: Row(children: [
                      Icon(Icons.monitor_heart_outlined, color:Color.fromARGB(255,38,71,76),),
                      SizedBox(width: 5,),
                      Text('Simulation',style: BottomNavbarSelectedTextStyle(3),)
                    ]),
                  )
                      : Icon(
                    Icons.monitor_heart_outlined,
                    color: Colors.black,
                  )),
                  label: '',
                ),
                BottomNavigationBarItem(
                  icon: Obx(() => controller.currentIndex.value == 4
                      ?
                  Container(
                    padding: EdgeInsets.all(3),
                    decoration: BoxDecoration(
                        color: Color.fromARGB(200, 232, 106, 99),
                        borderRadius: BorderRadius.all(Radius.circular(20))
                    ),
                    child: Row(children: [
                      Icon(Icons.warning_outlined, color:Color(0xFFB3261E),),
                      SizedBox(width: 5,),
                      Text('Emergency',style: BottomNavbarSelectedTextStyle(4),)
                    ]),
                  )
                      : Icon(
                    Icons.warning_outlined,
                    color: Colors.black,
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

