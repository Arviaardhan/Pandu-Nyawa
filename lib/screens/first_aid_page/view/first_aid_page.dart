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
              Stack(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top:screenHeight * 0.08,),
                    child: Image.asset('lib/assets/images/rak_first_aid.png',),
                  ),
                  Column(
                    children: [
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
                              fit: BoxFit.cover,
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
                              'lib/assets/images/inhaler.PNG',
                              fit: BoxFit.cover,
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
                              fit: BoxFit.cover,
                              height: 100,
                              width: 100,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: screenHeight * 0.04,),
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
                              fit: BoxFit.cover,
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
                              'lib/assets/images/salep.PNG',
                              fit: BoxFit.cover,
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
                              fit: BoxFit.cover,
                              height: 100,
                              width: 100,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: screenHeight * 0.05,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          GestureDetector(
                            onTap: () {
                              controller.currentindex.value = 7;
                              controller.mainTitle();
                            },
                            child: Image.asset(
                              'lib/assets/images/8.png',
                              fit: BoxFit.cover,
                              height: 93,
                              width: 100,
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              controller.currentindex.value = 8;
                              controller.mainTitle();
                            },
                            child: Image.asset(
                              'lib/assets/images/distress.PNG',
                              fit: BoxFit.cover,
                              height: 80,
                              width: 100,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              Obx(() => AnimatedSize(
                  duration: Duration(milliseconds: 300),
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
              // Obx(() {
              //   return AnimatedSize( duration: const Duration(milliseconds: 300),
              //     curve: Curves.easeInOut,
              //     child: _value.value == 2
              //         ? Container(
              //         width: double.infinity,
              //         padding: const EdgeInsets.all(10),
              //         decoration: const BoxDecoration(
              //             color: Colors.white,
              //             border: Border( bottom: BorderSide(color: Colors.black),
              //               left: BorderSide(color: Colors.black),
              //               right: BorderSide(color: Colors.black),),
              //             borderRadius: BorderRadius.only(bottomRight: Radius.circular(5),bottomLeft: Radius.circular(5))
              //         ),
              //         child:
              //         Column(
              //           crossAxisAlignment: CrossAxisAlignment.start,
              //           children: [
              //             const Text(
              //               'Pengembalian uang jika memakai tunai 100% tanpa biaya admin',
              //               style: TextStyle(color: Colors.black, fontSize: 16),
              //             ),
              //             Text(
              //                 '*Uang pengembalian ${currencyFormat.format(controller.calculatePriceCancel(order.paymentMethod ?? 'tunai', (order.orderMethod == 'delivery' ? totalprice += order.deliveryfee!.toInt() : totalprice) ))}',
              //                 style: boldTextStyle
              //             ),
              //             const  SizedBox(height: 10,),
              //           ],
              //         )
              //
              //     )
              //         : const SizedBox.shrink(), // Return an empty container if not selected
              //   );
              // }),
              SizedBox(height: screenHeight * 0.1,)
            ],
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
