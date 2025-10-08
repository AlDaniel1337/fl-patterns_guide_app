import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:patterns_guide_app/features/desing_patterns/controller/desing_patterns.controller.dart';
import 'package:patterns_guide_app/widgets/big_menu_button.dart';

DesingPattersController _desingPattersController = Get.put(DesingPattersController());

class PatternsMenu extends StatelessWidget {

  static const String route = "/PatternsMenu";
   
  const PatternsMenu({super.key});
  
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

          ..._desingPattersController.creationalPatterns.map((pattern) => 
            BigMenuButton(
              title: pattern.name, 
              subtitle: pattern.smallDescription,
              icon: pattern.icon ?? Icons.extension,
              onPress: (){},
              mainColor: Colors.grey.shade900,
              secondaryColor: Colors.grey.shade600,
              borderRadius: 8,
              height: 100,
            )
          )
        ],
      ),
    );
  }
}