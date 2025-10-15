import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:patterns_guide_app/features/solid/controller/solid.controller.dart';
import 'package:patterns_guide_app/widgets/character_and_text_btn.dart';

SolidController _solidController = Get.put(SolidController());
class SolidPagePage extends StatelessWidget {

  static const String route = "/SolidPagePage";
   
  const SolidPagePage({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
   
      appBar: AppBar(
        title: const Text('Principios SOLID'),
        centerTitle: true,
      ),
   
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            CharacterAndTextButton(
              mainColor: Colors.red,
              title: "Single Responsibility Principle",
              onPress: () => _solidController.goToDetails(0)
            ),
            CharacterAndTextButton(
              mainColor: Colors.green,
              title: "Open/Closed Principle",
              onPress: () => _solidController.goToDetails(1)
            ),
            CharacterAndTextButton(
              mainColor: Colors.blue,
              title: "Liskov Substitution Principle",
              onPress: () => _solidController.goToDetails(2)
            ),
            CharacterAndTextButton(
              mainColor: Colors.orange,
              title: "Interface Segregation Principle",
              onPress: () => _solidController.goToDetails(3)
            ),
            CharacterAndTextButton(
              mainColor: Colors.purple,
              title: "Dependency Inversion Principle",
              onPress: () => _solidController.goToDetails(4)
            ),
          ],
        ),
      ),
    );
  }
}
