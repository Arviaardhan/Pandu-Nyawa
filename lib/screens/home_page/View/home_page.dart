import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pandu_nyawa/screens/home_page/Controller/home_controller.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pandu_nyawa/widgets/button.dart';
import 'package:carousel_slider/carousel_slider.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);
  HomeController homeController = Get.find<HomeController>();

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
        backgroundColor: Color(0xFFFFF5D7),
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(screenHeight * 0.08),
          child: AppBar(
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
                Container(
                  padding: EdgeInsets.symmetric(vertical: 6, horizontal: screenWidth * 0.05),
                  decoration: BoxDecoration(
                      color: Color(0xFFE8B931),
                      borderRadius: BorderRadius.circular(10)
                  ),
                  child: Icon(Icons.person),
                ),
              ],
            ),
          ),
        ),
        endDrawer: Drawer(
          child: ListView(
            children: [
              DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.blue,
                ),
                child: Text('Menu'),
              ),
              ListTile(
                title: Text('Item 1'),
                onTap: () {},
              ),
              ListTile(
                title: Text('Item 2'),
                onTap: () {},
              ),
            ],
          ),
        ),
        body: Padding(
          padding: EdgeInsets.only(top: screenHeight * 0.02),
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  child: Column(
                    children: [
                      Image.asset('lib/assets/icons/img.png', height: screenHeight * 0.05,),
                      SizedBox(height: 3,),
                      Text(
                        'Panduan Modern Penyelamat Nyawa',
                        style: GoogleFonts.poppins(
                          color: Color(0xFF26474C),
                          fontWeight: FontWeight.w700,
                          fontSize: 10,
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: screenHeight * 0.03),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CustomElevatedButton(image: 'lib/assets/icons/icon-first-aid.png', height: screenHeight * 0.07, width: screenWidth * 0.4, text: 'First Aid', buttonColor: Colors.white, iconColor: Color(0xFFF9AF2A), onPressed: () {}),
                          SizedBox(width: 15,),
                          CustomElevatedButton(image: 'lib/assets/icons/icon-first-aid.png', height: screenHeight * 0.07, width: screenWidth * 0.4, text: 'Identify', buttonColor: Colors.white, iconColor: Color(0xFF6750A4), onPressed: () {}),
                        ],
                      ),
                      SizedBox(height: 15,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CustomElevatedButton(image: 'lib/assets/icons/icon-first-aid.png', height: screenHeight * 0.07, width: screenWidth * 0.4, text: 'Simulation', buttonColor: Colors.white, iconColor: Color(0xFF649DF6), onPressed: () {}),
                          SizedBox(width: 15,),
                          CustomElevatedButton(image: 'lib/assets/icons/icon-first-aid.png', height: screenHeight * 0.07, width: screenWidth * 0.4, text: 'Emergency', buttonColor: Colors.white, iconColor: Color(0xFFB3261E), onPressed: () {}),
                        ],
                      ),
                    ],
                  ),
                ),
                CarouselSlider(
                  options: CarouselOptions(
                    height: screenHeight * 0.4,
                    viewportFraction: 0.6,
                    autoPlay: true,
                    autoPlayInterval: Duration(seconds: 2),
                    autoPlayAnimationDuration: Duration(milliseconds: 800),
                    enlargeCenterPage: true,
                    aspectRatio: 16 / 9,
                    enableInfiniteScroll: true,
                  ),
                  items: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xFFF9AF2A),
                      ),
                      child: Center(child: Text('Box 1', style: GoogleFonts.lexend(fontSize: 16, color: Colors.white))),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xFF6750A4),
                      ),
                      child: Center(child: Text('Box 2', style: GoogleFonts.lexend(fontSize: 16, color: Colors.white))),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xFF649DF6),
                      ),
                      child: Center(child: Text('Box 3', style: GoogleFonts.lexend(fontSize: 16, color: Colors.white))),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xFFB3261E),
                      ),
                      child: Center(child: Text('Box 4', style: GoogleFonts.lexend(fontSize: 16, color: Colors.white))),
                    ),
                  ],
                ),
              ],
            ),
          ),
        )
    );
  }
}
