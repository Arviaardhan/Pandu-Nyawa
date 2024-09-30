

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pandu_nyawa/screens/identify_page/detail_page/view/detail_page.dart';
import 'package:pandu_nyawa/screens/navigation_page/view/navigator_view.dart';
import '../../../data/models/identify_model/identify_model.dart';
import '../../../widgets/drawer.dart';
import '../../../widgets/reusable_appbar.dart';
import '../widget/custom_card.dart';

class IdentifyPage extends StatelessWidget {
  final List<IdentifyModel> lukaModels;

  const IdentifyPage({Key? key, required this.lukaModels}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    Map<String, List<IdentifyModel>> groupedModels = {};
    for (var luka in lukaModels) {
      if (groupedModels.containsKey(luka.bab)) {
        groupedModels[luka.bab]!.add(luka);
      } else {
        groupedModels[luka.bab!] = [luka];
      }
    }

    return Scaffold(
      backgroundColor: const Color(0xFFFFF5D7),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(screenHeight * 0.08),
        child: const AppbarCustom(),
      ),
      endDrawer: DrawerCustom(),
      body: Padding(
        padding: EdgeInsets.only(top: screenHeight * 0.03),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Identifikasi Gejala',
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: screenWidth * 0.05),
              ),
              const SizedBox(height: 15),
              Expanded(
                child: ListView.builder(
                  itemCount: groupedModels.keys.length,
                  itemBuilder: (context, groupIndex) {
                    String babKey = groupedModels.keys.elementAt(groupIndex);
                    List<IdentifyModel> modelsInGroup = groupedModels[babKey]!;

                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        GestureDetector(
                          onTap: () {
                            IdentifyModel firstSubab = modelsInGroup.first;
                            Get.to(DetailIdentifyPage(lukaModel: firstSubab, quizType: 'Simulation'));
                          },
                          child: Container(
                            margin: EdgeInsets.symmetric(horizontal: screenWidth * 0.05, vertical: screenHeight * 0.01),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(color: Colors.black, width: 1.5),
                              color: Colors.white, // Optional: Add background color
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: Center(
                                child: Text(
                                  babKey,
                                  textAlign: TextAlign.center,
                                  style: TextStyle(fontSize: screenWidth * 0.037, fontWeight: FontWeight.w500),
                                ),
                              ),
                            ),
                          ),
                        ),
                        ListView.builder(
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          itemCount: modelsInGroup.length,
                          itemBuilder: (context, index) {
                            int index2 = lukaModels.indexWhere((element) => element.subBab == modelsInGroup[index].subBab,);
                            return CustomCard(
                              text: modelsInGroup[index].title,
                              lukaModel: modelsInGroup[index], index: index2,
                            );
                          },
                        ),
                      ],
                    );
                  },
                ),
              ),

              SizedBox(height: screenHeight * 0.03),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.info_outline),
                  SizedBox(width: 5),
                  Text('Klik untuk cari tahu'),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
