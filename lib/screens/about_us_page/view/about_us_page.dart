import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AboutUsPage extends StatelessWidget {
  const AboutUsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('')),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.white,
              Color(0xFFFFD700), // Orange-like color
              Color(0xFFFF69B4), // Pink color
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Image.asset('lib/assets/images/meetourteam.png'),
                ),
                _buildAboutUs("lib/assets/images/person/zaenal.png", "Zaenal",
                    "Initiative Leader"),
                _buildAboutUs("lib/assets/images/person/wifda.png", "Wifda",
                    "Head of Digital Media"),
                _buildAboutUs("lib/assets/images/person/fauzan.png", "Fauzan",
                    "Lead App Developer"),
                _buildAboutUs("lib/assets/images/person/ewaldo.png", "Ewaldo",
                    "Public Relations"),
                _buildAboutUs("lib/assets/images/person/keiji.png", "Keiji",
                    "Project Manager"),
                _buildAboutUs("lib/assets/images/person/aily.png", "Aily",
                    "Creative Director"),
                _buildAboutUs("lib/assets/images/person/ghadiza.png", "Ghadiza",
                    "Creative Director"),
                _buildAboutUs("lib/assets/images/person/shadiqa.jpg", "Shadiqa",
                    "Creative Director"),
                _buildAboutUs("lib/assets/images/person/arvia.jpeg", "Arvia",
                    "App Developer"),
                _buildAboutUs("lib/assets/images/person/marlen.png", "Marlen",
                    "App Developer"),
                _buildAboutUs("lib/assets/images/person/damar.png", "Damar",
                    "App Developer"),
                _buildAboutUs("lib/assets/images/person/joseph.png", "Joseph",
                    "App Developer"),
                _buildAboutUs("lib/assets/images/person/syamil.png", "Syamil",
                    "App Designer"),
                _buildAboutUs("lib/assets/images/person/gavrilla.png",
                    "Gavrilla", "Illustrator"),
                _buildAboutUs("lib/assets/images/person/almer.png", "Almer",
                    "Illustrator"),
                _buildAboutUs("lib/assets/images/person/fia.png", "Fia",
                    "Ilustrasi Aplikasi"),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Widget _buildAboutUs(String imageAssets, name, role) {
  return Container(
    height: 220,
    child: Stack(
      alignment: Alignment.center,
      children: [
        Transform.rotate(
          angle: 0.16,
          child: Image.asset(
            imageAssets,
            scale: 3.2,
          ),
        ),
        Image.asset(
          'lib/assets/images/photo-frame.png',
        ),
        Padding(
          padding: const EdgeInsets.only(top: 150, right: 30),
          child: Transform.rotate(
            angle: 0.16,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  name,
                  style: GoogleFonts.happyMonkey(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    shadows: [
                      Shadow(
                        color: Colors.green,
                        offset: Offset(1, 1),
                        blurRadius: 2,
                      ),
                    ],
                  ),
                ),
                Text(
                  role,
                  style: GoogleFonts.happyMonkey(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.green[200],
                    shadows: [
                      Shadow(
                        color: Colors.green[900]!,
                        offset: Offset(1, 1),
                        blurRadius: 2,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    ),
  );
}
