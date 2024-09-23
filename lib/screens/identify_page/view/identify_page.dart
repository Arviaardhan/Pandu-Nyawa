import 'package:flutter/material.dart';
import 'package:pandu_nyawa/screens/navigation_page/view/navigator_view.dart';

import '../../../data/models/identify_model/identify_model.dart';
import '../../../widgets/drawer.dart';
import '../widget/custom_card.dart';
class IdentifyPage extends StatelessWidget {
  const IdentifyPage({Key? key}) : super(key: key);

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
              Expanded(
                child: Align(
                  alignment: Alignment.center,
                  child: Container(
                    padding: EdgeInsets.symmetric(
                        vertical: 6, horizontal: screenWidth * 0.05),
                    decoration: BoxDecoration(
                        color: Color(0xFFE8B931),
                        borderRadius: BorderRadius.circular(10)),
                    child: Icon(Icons.person),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      endDrawer: DrawerCustom(),
      body: Padding(
        padding: EdgeInsets.only(top: screenHeight * 0.03),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text('Treat Wound', style: TextStyle(fontWeight: FontWeight.w500, fontSize: screenWidth * 0.05),),
              SizedBox(height: 15,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomCard(
                    text: 'Luka Bakar Ringan',
                    imagePath: 'lib/assets/images/luka-bakar.png',
                    lukaModel: lukaBakar,
                  ),
                  SizedBox(width: 15),
                  CustomCard(
                    text: 'Luka Sayat atau Baret',
                    imagePath: 'lib/assets/images/luka-sayat.png',
                    lukaModel: lukaSayat,
                  ),
                ],
              ),
              SizedBox(height: screenHeight * 0.03,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.info_outline),
                  SizedBox(width: 5,),
                  Text('Klik untuk cari tahu')
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
