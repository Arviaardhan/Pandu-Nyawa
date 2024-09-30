import 'package:flutter/material.dart';
import 'package:pandu_nyawa/themes/colors.dart';
import 'package:pandu_nyawa/themes/font_style.dart';
import 'package:get/get.dart';
import '../screens/about_us_page/view/about_us_page.dart';
import '../screens/home_page/component/footer.dart';
import '../screens/navigation_page/controller/navigator_controller.dart';

class DrawerCustom extends StatelessWidget {
  final NavigatorController controller = Get.find<NavigatorController>();
  DrawerCustom({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      elevation: 0,
      backgroundColor: Colors.white,
      child: ListView(
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            decoration: BoxDecoration(color: Colors.white, boxShadow: []),
            child: Center(
              child: Text(
                'DASHBOARD',
                style: txtMenuHeading,
              ),
            ),
          ),
          Container(
            color: ColorsResources.primarycolorMenu,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  color: ColorsResources.primarycolorMenu,
                  child: Column(
                    children: [
                      SizedBox(
                        height: 20,
                      ),
                      ListTile(
                        title: Row(
                          children: [
                            Icon(
                              Icons.home,
                              size: 40,
                              color: Colors.black,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              'HOME',
                              style: txtMenuRegular,
                            ),
                          ],
                        ),
                        onTap: () {
                          Get.back();
                          controller.currentIndex.value = 0;
                        },
                      ),
                      ListTile(
                        title: Row(
                          children: [
                            Icon(Icons.info_outline,
                                size: 35, color: Colors.black),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              'ABOUT US',
                              style: txtMenuRegular,
                            ),
                          ],
                        ),
                        onTap: () {
                          Get.to(() => AboutUsPage());
                        },
                      ),
                    ],
                  ),
                ),
                Image.asset(
                  'lib/assets/images/menubackground.png',
                ),
                const Footer(
                  colors: ColorsResources.primarycolorMenu,
                  isImageRequired: false,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
