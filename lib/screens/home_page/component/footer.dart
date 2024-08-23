import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widget/list_icon.dart';
class Footer extends StatelessWidget {
  const Footer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    return Container(
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20))
      ),
      height: screenHeight * 0.3,width: double.infinity,child:
    Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              'lib/assets/images/logo-pandu-nyawa.png',
              height: screenHeight * 0.075,
            ),
            SizedBox(
              width: 10,
            ),
            Column(
              children: [
                Image.asset(
                  'lib/assets/icons/img.png',
                  height: screenHeight * 0.04,
                ),
                SizedBox(
                  height: 3,
                ),
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
          ],
        ),
        ListIcon(),
        Text('© 2024 PANDU NYAWA.',  style: GoogleFonts.poppins(
          color: Colors.black,
          fontWeight: FontWeight.w700,
          fontSize: 11,
        ),)
      ],
    ),);
  }
}
