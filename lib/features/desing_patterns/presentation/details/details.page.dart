import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:patterns_guide_app/features/desing_patterns/controller/desing_patterns.controller.dart';
import 'package:patterns_guide_app/features/desing_patterns/domain/entities/desing_pattern.entity.dart';
import 'package:patterns_guide_app/features/desing_patterns/presentation/details/components/pattern_description.dart';
import 'package:patterns_guide_app/widgets/custom_text_button.dart';

import './components/pattern_menu.dart';

DesingPattersController desingPattersController = Get.put(DesingPattersController());

class DesingPatternsDetailsPage extends StatelessWidget {

  static const String route = "/DesingPatternsDetailsPage";
   
  const DesingPatternsDetailsPage({super.key});
  
  @override
  Widget build(BuildContext context) {

    DesingPattern selectedPattern = desingPattersController.selectedPattern;

    return Scaffold(
   
      appBar: AppBar(
        title: Text( selectedPattern.name ),
        centerTitle: true,
      ),
   
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
                        
            PatternMenu(),
            const SizedBox(height: 20),

            Obx(() {
              if( desingPattersController.showPurpose ) {
                return PatternDescription( description: selectedPattern.description );
              }
              if( desingPattersController.showUsage ) {
                return PatternDescription( description: selectedPattern.whereToUse );
              }
              if( desingPattersController.showAplicability ) {
                return PatternDescription( description: selectedPattern.aplicability);
              }
              if( desingPattersController.showExample ) {
                return Column(
                  children: [
                    Wrap(
                      spacing: 8.0,
                      crossAxisAlignment: WrapCrossAlignment.center,
                      alignment: WrapAlignment.center,
                      children: [
                        ...List.generate(selectedPattern.exampleSteps.length, (index) => 
                          CustomTextBtn(
                            color: desingPattersController.selectedIndex.value == index ? Colors.blue : Colors.grey,
                            title:  index == 0 
                              ? "Caso Hipotético" 
                              : index == selectedPattern.exampleSteps.length -1 
                                ? "Resumen"
                                : "Paso $index",
                            onPress: () => desingPattersController.selectedIndex.value = index,
                          )
                        )
                      ],
                    ),
                    PatternDescription( description: selectedPattern.exampleSteps[desingPattersController.selectedIndex.value] ),
                  ],
                );
              }
              return Container();
            }),

          ],
        ),
      ),
    );
  }
}