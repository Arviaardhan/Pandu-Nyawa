import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomElevatedButton extends StatelessWidget {
  final String text;
  final String image;
  final Color buttonColor;
  final Color iconColor;
  final VoidCallback onPressed;
  final double width;
  final double height;

  CustomElevatedButton({
    required this.text,
    required this.image,
    required this.buttonColor,
    required this.iconColor,
    required this.onPressed,
    required this.width,
    required this.height,
  });

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Container(
      width: width,
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
              child: Image.asset(image, scale: 1.5,),
              padding: EdgeInsets.all(10),
            ),
            SizedBox(width: screenWidth * 0.03),
            Text(
              text,
              style: GoogleFonts.lexend(fontSize: 13, color: Colors.black, fontWeight: FontWeight.w600),
            ),
          ],
        ),
      ),
    );
  }
}
