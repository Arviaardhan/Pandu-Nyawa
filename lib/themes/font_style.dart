import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Color getLabelColor(int index) {
  if (index == 1) {
    return Colors.orange;
  }else if (index == 2) {
    return Color(0xFF6750A4);
  }  else if (index == 3) {
    return Color(0xFF649DF6);
  } else if (index == 4) {
    return Color(0xFFB3261E);
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
