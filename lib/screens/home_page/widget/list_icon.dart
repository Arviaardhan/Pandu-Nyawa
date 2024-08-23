import 'package:flutter/material.dart';
import 'package:pandu_nyawa/themes/icon.dart';

Widget ListIcon() {
  // The widget that you want to return
  return SizedBox(
    width: double.infinity,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(IconThemes.iconFacebook, scale: 1,),
        Image.asset(IconThemes.iconTwitter, scale: 1,),
        Image.asset(IconThemes.iconYoutube, scale: 1,),
        Image.asset(IconThemes.iconInstagram, scale: 1,),
        Image.asset(IconThemes.iconLinkiden, scale: 1,),
        Image.asset(IconThemes.iconLine, scale: 1,),
        Image.asset(IconThemes.iconFrame, scale: 1,),
      ],
    ),
  );
}
