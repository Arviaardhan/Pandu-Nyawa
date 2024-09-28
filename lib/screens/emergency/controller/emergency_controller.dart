import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher_string.dart';

import '../../../widgets/reusable_popup.dart';

class EmergencyController extends GetxController{

  void showDialogEmergency ({required BuildContext context,required int index,required String title,required String phoneNumber}){
    showDialog(
      context: context,
      builder: (context) => ReusableDialog(
        title: '$title $phoneNumber',
        content: 'Apakah anda ingin menelpon nomor darurat ini ',
        cancelText: 'Tidak',
        confirmText: 'Telpon',
        onCancelPressed: (){
          Get.back();
        },
        onConfirmPressed: (){
          launchUrlString("tel:$phoneNumber");
        },
      )
    );
  }
}
