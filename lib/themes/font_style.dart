import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Color getLabelColor(int index) {
  if (index == 1) {
    return Colors.orange;
  }else if (index == 2) {
    return const Color(0xFF6750A4);
  }  else if (index == 3) {
    return const Color.fromARGB(255,38,71,76);
  } else if (index == 4) {
    return const Color(0xFFB3261E);
  }else {
    return Colors.black; // Default to red for other statuses
  }
}
Color buttonNavbar(int index) {
  if (index == 1) {
    return const Color.fromARGB(255, 255, 240, 194);
  }else if (index == 2) {
    return const Color.fromARGB(255, 187, 165, 247);
  }  else if (index == 3) {
    return const Color.fromARGB(255, 100, 152, 160);
  } else if (index == 4) {
    return const Color.fromARGB(255, 232, 106, 99);
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

TextStyle txtMenuHeading = GoogleFonts.lexend(
    textStyle: const TextStyle(
        color: Colors.black,
        fontWeight: FontWeight.bold,
        fontSize: (16))
);

TextStyle txtMenuRegular = GoogleFonts.lexend(
    textStyle: const TextStyle(
        color: Colors.black,
        fontWeight: FontWeight.bold,
        fontSize: (12))
);

TextStyle txtEmergencyHeading = GoogleFonts.montserrat(
    textStyle: const TextStyle(
        color: Colors.black,
        fontWeight: FontWeight.bold,
        fontSize: (20))
);

TextStyle txtEmergencyH1 = GoogleFonts.montserrat(
    textStyle: const TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.bold,
        fontSize: (13))
);

TextStyle txtEmergencyParaf = GoogleFonts.montserrat(
    textStyle: const TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.normal,
        fontSize: (12))
);

TextStyle dialogButtonTextStyle = GoogleFonts.montserrat(
    textStyle: const TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.bold,
        fontSize: 12));

TextStyle contentDialogButtonTextStyle = GoogleFonts.oxygen(
    textStyle: const TextStyle(
        color: Colors.black,
        fontWeight: FontWeight.normal,
        fontSize: 12));

TextStyle titleDialogButtonTextStyle = GoogleFonts.montserrat(
    textStyle: const TextStyle(
        color: Colors.black,
        fontWeight: FontWeight.bold,
        fontSize: 14));

TextStyle aboutUs = GoogleFonts.montserrat(
    textStyle: const TextStyle(
        // color: Colors.green,
        color: Color.fromARGB(255, 33, 115, 22),
      // color: Colors.white,
        fontWeight: FontWeight.bold,
        fontSize: 12));
