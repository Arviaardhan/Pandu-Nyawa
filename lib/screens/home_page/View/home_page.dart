import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pandu_nyawa/screens/home_page/Controller/home_controller.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);
  HomeController homeController = Get.find<HomeController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Homepage'),
      ),
    );
  }
}
