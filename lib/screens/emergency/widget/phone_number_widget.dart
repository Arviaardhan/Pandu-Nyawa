import 'package:flutter/material.dart';
import 'package:pandu_nyawa/themes/colors.dart';

import '../../../themes/font_style.dart';
class PhoneNumberWidget extends StatelessWidget {
  String title;
  String phoneNumber;
  final GestureTapCallback onPressed;
  PhoneNumberWidget({Key? key,required this.title,required this.phoneNumber, required this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return InkWell(
      onTap: onPressed,
      child: Container(
        margin: const EdgeInsets.all(10),
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(40)),
          color: ColorsResources.emergencyColors,
        ),
        padding: const EdgeInsets.symmetric(horizontal: 12,vertical: 5),
        height: screenHeight * 0.18,
        width: screenWidth * 0.4,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(title,textAlign: TextAlign.center,style: txtEmergencyH1,),
            SizedBox(height: screenHeight * 0.01,),
            Text(phoneNumber,style: txtEmergencyParaf,)
          ],
        ),
      ),
    );
  }
}
