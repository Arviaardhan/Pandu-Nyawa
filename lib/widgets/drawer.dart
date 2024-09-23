import 'package:flutter/material.dart';
import 'package:pandu_nyawa/themes/colors.dart';
import 'package:pandu_nyawa/themes/font_style.dart';

import '../screens/home_page/component/footer.dart';
class DrawerCustom extends StatelessWidget {
  const DrawerCustom({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Drawer(
      elevation: 0,
      backgroundColor: Colors.white,
      child: ListView(
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow:[
              ]
            ),
            child: Center(
              child: Text('DASHBOARD',style: txtMenuHeading,),
            ),
          ),
          Container(
            color: ColorsResources.primarycolorMenu,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  color: ColorsResources.primarycolorMenu,
                  child: Column(
                    children: [
                      SizedBox(height: 20,),
                      ListTile(
                        title: Row(
                          children: [
                            Icon(Icons.home,size: 40,color: Colors.black,),
                            SizedBox(width: 10,),
                            Text('HOME',style: txtMenuRegular,),
                          ],
                        ),
                        onTap: () {},
                      ),
                      ListTile(
                        title: Row(
                          children: [
                            Icon(Icons.info_outline,size: 35,color: Colors.black),
                            SizedBox(width: 10,),
                            Text('ABOUT US',style: txtMenuRegular,),
                          ],
                        ),
                        onTap: () {},
                      ),
                    ],
                  ),
                ),
                Image.asset('lib/assets/images/menubackground.png',),
                const Footer(colors: ColorsResources.primarycolorMenu, isImageRequired: false,)
              ],
            ),
          )
        ],
      ),
    );
  }
}
