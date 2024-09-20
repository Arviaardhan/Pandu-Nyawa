import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../data/models/identify_quiz_model/identify_quiz_model.dart';

class QuizIdentifyPage extends StatelessWidget {
  const QuizIdentifyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Retrieving the QuizModel passed through navigation
    final QuizModel quiz = Get.arguments;

    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Color(0xFFFFF5D7),
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
                'lib/assets/images/logo-pandu-nyawa.png', // Your logo here
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
      endDrawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text('Menu'),
            ),
            ListTile(
              title: Text('Item 1'),
              onTap: () {},
            ),
            ListTile(
              title: Text('Item 2'),
              onTap: () {},
            ),
          ],
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.05),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: screenHeight * 0.03),
            Text(
              'Test Simulasi',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: screenHeight * 0.02),
            Text(
              quiz.question,
              style: TextStyle(fontSize: 18),
              textAlign: TextAlign.start,
            ),
            SizedBox(height: screenHeight * 0.03),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: screenWidth * 0.45,
                  height: screenHeight * 0.3,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                  ),
                  child: Image.asset(quiz.imagePath, height: 50, width: 50,),
                ),
                SizedBox(width: screenWidth * 0.05),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: quiz.options.map((option) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(vertical: 5.0),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white,
                            side: BorderSide(color: Colors.grey.shade400),
                            padding: EdgeInsets.symmetric(
                              vertical: 10,
                              horizontal: screenWidth * 0.05,
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          onPressed: () {
                            // Logic for checking the answer
                            if (option == quiz.correctAnswer) {
                              Get.snackbar('Correct!', 'You selected the right answer.',
                                  backgroundColor: Colors.green, colorText: Colors.white);
                            } else {
                              Get.snackbar('Incorrect', 'Try again!',
                                  backgroundColor: Colors.red, colorText: Colors.white);
                            }
                          },
                          child: Text(
                            option,
                            style: TextStyle(color: Colors.black, fontSize: 16),
                          ),
                        ),
                      );
                    }).toList(),
                  ),
                ),
              ],
            ),
            // Navigation Button (Next or Back)
            Align(
              alignment: Alignment.bottomRight,
              child: IconButton(
                icon: Icon(Icons.arrow_forward),
                onPressed: () {
                  // Add your next page navigation logic here
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
