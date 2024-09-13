import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Color getLabelColor(int index) {
  if (index == 1) {
    return Colors.orange;
  }else if (index == 2) {
    return Color(0xFF6750A4);
  }  else if (index == 3) {
    return Color.fromARGB(255,38,71,76);
  } else if (index == 4) {
    return Color(0xFFB3261E);
  }else {
    return Colors.black; // Default to red for other statuses
  }
}
Color buttonNavbar(int index) {
  if (index == 1) {
    return Color.fromARGB(255, 255, 240, 194);
  }else if (index == 2) {
    return Color.fromARGB(255, 187, 165, 247);
  }  else if (index == 3) {
    return Color.fromARGB(255, 100, 152, 160);
  } else if (index == 4) {
    return Color.fromARGB(255, 232, 106, 99);
  }else {
    return Colors.black; // Default to red for other statuses
  }
}
TextStyle BottomNavbarSelectedTextStyle(int index) {
  return GoogleFonts.poppins(
  color: getLabelColor(index),
  fontWeight: FontWeight.bold,
  fontSize: 10,
);
}
