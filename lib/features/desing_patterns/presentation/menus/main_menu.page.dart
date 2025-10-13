import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:patterns_guide_app/features/desing_patterns/controller/desing_patterns.controller.dart';
import 'package:patterns_guide_app/widgets/big_menu_button.dart';

DesingPattersController _desingPattersController = Get.put(DesingPattersController());

class DesingPatternsMenuPage extends StatelessWidget {

  static const String route = "/DesingPatternsMenuPage";
   
  const DesingPatternsMenuPage({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
   
      appBar: AppBar(
        title: const Text('Patrones de Diseño'),
        centerTitle: true,
      ),
   
      body: ListView(
            padding: const EdgeInsets.all(16),
            children: [

              BigMenuButton(
                title: "Creacionales", 
                subtitle: "Patrones que facilitan la creación de objetos.",
                icon: Icons.add_box,
                onPress: () => _desingPattersController.selectPatterns(0),
                mainColor: Colors.grey.shade900,
                secondaryColor: Colors.grey.shade600,
                borderRadius: 8,
                height: 100,
              ),

              BigMenuButton(
                title: "Estructurales", 
                subtitle: "Patrones que organizan clases y objetos en estructuras mayores.",
                icon: Icons.account_tree,
                onPress: () => _desingPattersController.selectPatterns(1),
                mainColor: Colors.green.shade900,
                secondaryColor: Colors.green.shade600,
                borderRadius: 8,
                height: 100,
              ),

              BigMenuButton(
                title: "Comportamiento", 
                subtitle: "Patrones que gestionan algoritmos, relaciones y responsabilidades entre objetos.",
                icon: Icons.coffee,
                onPress: () => _desingPattersController.selectPatterns(2),
                mainColor: Colors.purple.shade900,
                secondaryColor: Colors.purple.shade600,
                borderRadius: 8,
                height: 100,
              ),
            ],
          ),
    );
  }
}