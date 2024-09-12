import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pandu_nyawa/screens/first_aid_page/controller/first_aid_controller.dart';

class FirstAidPage extends GetView<FirstAidController> {
  const FirstAidPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(screenHeight * 0.08),
          child: _buildAppbar(screenHeight, screenWidth),
        ),
        endDrawer: Drawer(
          child: ListView(
            children: [
              const DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.blue,
                ),
                child: Text('Menu'),
              ),
              ListTile(
                title: const Text('Item 1'),
                onTap: () {},
              ),
              ListTile(
                title: const Text('Item 2'),
                onTap: () {},
              ),
            ],
          ),
        ),
        backgroundColor: const Color(0xFFFFF5D7),
        body: SingleChildScrollView(
          padding: const EdgeInsets.all(15),
          child: Center(
            child: Column(
              children: [
                Text(
                  "First Aid Kit",
                  style: GoogleFonts.poppins(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                  ),
                ),
                Stack(
                  alignment: Alignment.center,
                  children: [
                    Image.asset('lib/assets/images/rak_image.png'),
                    Column(
                      children: [
                        const SizedBox(height: 40),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            GestureDetector(
                              onTap: () {
                                controller.currentindex.value = 1;
                                controller.mainTitle();
                              },
                              child: Image.asset(
                                'lib/assets/images/3.png',
                                height: 80,
                                width: 80,
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                controller.currentindex.value = 2;
                                controller.mainTitle();
                              },
                              child: Image.asset(
                                'lib/assets/images/4.png',
                                height: 100,
                                width: 100,
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                controller.currentindex.value = 3;
                                controller.mainTitle();
                              },
                              child: Image.asset(
                                'lib/assets/images/5.png',
                                height: 100,
                                width: 100,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 20),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            GestureDetector(
                              onTap: () {
                                controller.currentindex.value = 4;
                                controller.mainTitle();
                              },
                              child: Image.asset(
                                'lib/assets/images/6.png',
                                height: 80,
                                width: 80,
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                controller.currentindex.value = 5;
                                controller.mainTitle();
                              },
                              child: Image.asset(
                                'lib/assets/images/7.png',
                                height: 100,
                                width: 100,
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                controller.currentindex.value = 6;
                                controller.mainTitle();
                              },
                              child: Image.asset(
                                'lib/assets/images/9.png',
                                height: 100,
                                width: 100,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
                Obx(
                  () => Visibility(
                    visible: controller.currentindex.value != 0,
                    child: Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.orange,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      padding: const EdgeInsets.all(10),
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
                )
              ],
            ),
          ),
        ));
  }
}

Widget _buildAppbar(screenHeight, screenWidth) {
  return AppBar(
    centerTitle: true,
    backgroundColor: Colors.white,
    surfaceTintColor: Colors.white,
    title: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image.asset(
          'lib/assets/images/logo-pandu-nyawa.png',
          height: screenHeight * 0.075,
        ),
        Expanded(
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
      ],
    ),
  );
}
