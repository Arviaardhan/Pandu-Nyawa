import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pandu_nyawa/themes/icon.dart';

class CustomElevatedButton extends StatelessWidget {
  final String text;
  final TextStyle style;
  final IconData? icons;
  final Color buttonColor;
  final Color iconColor;
  final bool isSvg;
  final VoidCallback onPressed;
  final double? width;
  final double height;
  final double bottomPadding;

  CustomElevatedButton({
    required this.text,
    required this.style,
    required this.buttonColor,
    required this.iconColor,
    required this.onPressed,
    this.width,
    required this.height, this.icons, required this.bottomPadding, required this.isSvg,
  });

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.25), // Adjust the color and opacity as needed
            offset: const Offset(0, 4.5), // x = 0, y = 4.5
            blurRadius: 4.5, // Blur radius
            spreadRadius: 0, // Spread radius
          ),
        ]
      ),
      height: height,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25),
          ),
          backgroundColor: buttonColor,
        ),
        child: Row(
          children: [
            Container(
              decoration: BoxDecoration(
                color: iconColor,
                shape: BoxShape.circle,
              ),
              padding: EdgeInsets.only(top: 5,bottom: bottomPadding,right: 5,left: 5),
              child : Center(child: isSvg ? SvgPicture.asset(IconThemes.iconSimulation,color: buttonColor,width: 30,height: 25,) : Icon(icons,color: buttonColor,size: 30,)),
            ),
            SizedBox(width: screenWidth * 0.03),
            Text(
              text,
              style: style,
            ),
          ],
        ),
      ),
    );
  }
}
