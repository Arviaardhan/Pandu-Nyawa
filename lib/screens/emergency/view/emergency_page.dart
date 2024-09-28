import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pandu_nyawa/data/models/emergency_model/emergency_model.dart';
import 'package:pandu_nyawa/screens/emergency/controller/emergency_controller.dart';
import '../../../themes/font_style.dart';
import '../../../widgets/drawer.dart';
import '../widget/phone_number_widget.dart';

class EmergencyPage extends GetView<EmergencyController> {
  EmergencyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      extendBody: true,
      backgroundColor: const Color(0xFFFFF5D7),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(screenHeight * 0.08),
        child: AppBar(
          automaticallyImplyLeading: false,
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
                        color: const Color(0xFFE8B931),
                        borderRadius: BorderRadius.circular(10)),
                    child: const Icon(Icons.person),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      endDrawer: const DrawerCustom(),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(top: screenHeight * 0.05),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'EMERGENCY CONTACT',
                  style: txtEmergencyHeading,
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 20),
                Wrap(
                  alignment: WrapAlignment.center,
                  children: EmergencyList.asMap().entries.map((entry) {
                    int index = entry.key;
                    var contact = entry.value;
                    return PhoneNumberWidget(
                      title: contact.title,
                      phoneNumber: contact.phoneNumbers,
                      onPressed: () {
                        controller.showDialogEmergency(context: context, index: index, title: contact.title, phoneNumber: contact.phoneNumbers);
                      },
                    );
                  }).toList(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
