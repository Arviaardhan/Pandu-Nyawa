import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pandu_nyawa/screens/first_aid_page/controller/first_aid_controller.dart';
import 'package:pandu_nyawa/screens/first_aid_page/widget/rakwidget.dart';

import '../../../widgets/drawer.dart';
import '../../../widgets/reusable_appbar.dart';

class FirstAidPage extends GetView<FirstAidController> {
  const FirstAidPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(screenHeight * 0.08),
          child: const AppbarCustom(),
        ),
        endDrawer: DrawerCustom(),
        backgroundColor: const Color(0xFFFFF5D7),
        body: SingleChildScrollView(
          physics: const AlwaysScrollableScrollPhysics(),
          child: Column(
            children: [
              const SizedBox(height: 20,),
              Text(
                "First Aid Kit",
                style: GoogleFonts.poppins(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                ),
              ),
              RakWidget(arrayImages: const ['lib/assets/images/anti2.png','lib/assets/images/Inhaler.PNG','lib/assets/images/bandage.PNG'], indexImages: const [1,2,3]),
              RakWidget(arrayImages: const ['lib/assets/images/kaki.png','lib/assets/images/salep.PNG','lib/assets/images/glukosw.png'], indexImages: const [4,5,6]),
              RakWidget(arrayImages: const ['lib/assets/images/choking.PNG','lib/assets/images/distress.PNG'], indexImages: const [7,8]),
              SizedBox(height: screenHeight * 0.01,),
            Obx(() => AnimatedSize(
                  duration: const Duration(milliseconds: 300),
                curve: Curves.easeInOut,
                  child: Visibility(
                    visible: controller.currentindex.value != 0,
                    child: Container(
                      constraints: BoxConstraints(
                        maxWidth: controller.currentindex.value != 0 ? double.infinity : 0,
                        maxHeight: controller.currentindex.value != 0 ? double.infinity : 0,
                      ),
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.orange,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      padding: const EdgeInsets.all(10),
                      margin: const EdgeInsets.symmetric(horizontal: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            controller.title.value,
                            style: GoogleFonts.poppins(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              color: Colors.white,
                            ),
                            textAlign: TextAlign.justify,
                          ),
                          Text(
                            controller.desc.value,
                            style: GoogleFonts.poppins(
                              fontSize: 11,
                              fontWeight: FontWeight.w500,
                              color: Colors.white,
                            ),
                            textAlign: TextAlign.justify,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),),

            ],
          ),
        ));
  }
}

