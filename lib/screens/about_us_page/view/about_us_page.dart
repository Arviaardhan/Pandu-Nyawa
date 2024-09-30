import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../themes/font_style.dart';

class AboutUsPage extends StatelessWidget {
  const AboutUsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(title: const Text(''),surfaceTintColor: Colors.white,backgroundColor: Colors.white,),
      body: Container(
        decoration: const BoxDecoration(
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
                  child: Image.asset('lib/assets/images/about-us.png'),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Text('Pandu Nyawa adalah sebuah organisasi nirlaba (NGO) pemuda yang berfokus pada upaya meningkatkan pengetahuan, keterampilan, dan kesiapsiagaan masyarakat serta siswa/i sekolah dalam memberikan pertolongan pertama pada situasi darurat. Pandu Nyawa bertujuan untuk mewujudkan masyarakat yang tangguh dan mampu menjaga keselamatan diri serta orang lain melalui edukasi dan pelatihan yang komprehensif.',style: aboutUs,textAlign: TextAlign.center,),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Image.asset('lib/assets/images/meetourteam2.png'),
                ),
                _buildAboutUs("lib/assets/images/person/zaenal.jpg", "Zaenal",
                    "Initiative Leader"),
                _buildAboutUs("lib/assets/images/person/wifda.jpg", "Wifda",
                    "Head of Digital Media"),
                _buildAboutUs("lib/assets/images/person/fauzan.jpg", "Fauzan",
                    "Lead App Developer"),
                _buildAboutUs("lib/assets/images/person/ewaldo.JPG", "Ewaldo",
                    "Public Relations"),
                _buildAboutUs("lib/assets/images/person/keiji.jpg", "Keiji",
                    "Project Manager"),
                _buildAboutUs("lib/assets/images/person/aily.jpg", "Aily",
                    "Creative Director"),
                _buildAboutUs("lib/assets/images/person/ghadisa.jpg", "Ghadiza",
                    "Creative Director"),
                _buildAboutUs("lib/assets/images/person/shadiqa.jpg", "Shadiqa",
                    "Creative Director"),
                _buildAboutUs("lib/assets/images/person/arvi.jpg", "Arvia",
                    "App Developer"),
                _buildAboutUs("lib/assets/images/person/marlen.jpg", "Marlen",
                    "App Developer"),
                _buildAboutUs("lib/assets/images/person/damar.jpg", "Damar",
                    "App Developer"),
                _buildAboutUs("lib/assets/images/person/joseph.jpg", "Joseph",
                    "App Developer"),
                _buildAboutUs("lib/assets/images/person/syamil.jpg", "Syamil",
                    "App Designer"),
                _buildAboutUs("lib/assets/images/person/gavrilla.jpg",
                    "Gavrilla", "Illustrator"),
                _buildAboutUs("lib/assets/images/person/almer.jpg", "Almer",
                    "Illustrator"),
                _buildAboutUs("lib/assets/images/person/fia.jpg", "Fia",
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
  return SizedBox(
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
                      const Shadow(
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
                        offset: const Offset(1, 1),
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
