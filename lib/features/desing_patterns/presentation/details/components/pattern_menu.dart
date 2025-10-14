import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:patterns_guide_app/features/desing_patterns/controller/desing_patterns.controller.dart';
import 'package:patterns_guide_app/widgets/custom_text_button.dart';


DesingPattersController desingPattersController = Get.put(DesingPattersController());
class PatternMenu extends StatelessWidget {
  const PatternMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 8.0,
      crossAxisAlignment: WrapCrossAlignment.center,
      alignment: WrapAlignment.center,
      children: [
        CustomTextBtn(
          title: "Propósito",
          onPress: () => desingPattersController.toggleShowPurpose()
        ),   
        CustomTextBtn(
          title: "Uso",
          onPress: () => desingPattersController.toggleShowUsage()
        ),
        CustomTextBtn(
          title: "Aplicabilidad",
          onPress: () => desingPattersController.toggleShowAplicability()
        ),
        CustomTextBtn(
          title: "Ejemplo",
          onPress: () => desingPattersController.toggleShowExample(),
        ),
      ],
    );
  }
}