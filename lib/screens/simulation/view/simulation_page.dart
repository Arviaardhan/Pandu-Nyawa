import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pandu_nyawa/screens/identify_page/quiz_page/view/quiz_view.dart';
import '../../../data/models/identify_model/identify_model.dart';
import '../../../data/models/identify_quiz_model/identify_quiz_model.dart';
import '../../../widgets/drawer.dart';
import '../../identify_page/detail_page/controller/detail_controller.dart';

class SimulationPage extends StatelessWidget {
  final List<IdentifyModel> lukaModels;
  DetailIdentifyController detailIdentifyController = Get.put(DetailIdentifyController());
   SimulationPage({Key? key, required this.lukaModels,}) : super(key: key);

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
        child: AppBar(
          centerTitle: true,
          backgroundColor: Colors.white,
          surfaceTintColor: Colors.white,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
      endDrawer: DrawerCustom(),
      body: Padding(
        padding: EdgeInsets.only(top: screenHeight * 0.03),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Identifikasi Gejala - Simulation',
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
                            // Navigate to the QuizIdentifyPage instead of DetailIdentifyPage
                            // print(modelsInGroup[groupIndex]);
                            IdentifyModel lastSubab = modelsInGroup.last;
                            Get.to(() => QuizIdentifyPage(quizzes: lastSubab.quizzes));
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
