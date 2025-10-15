import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:patterns_guide_app/features/solid/controller/solid.controller.dart';
import 'package:patterns_guide_app/features/solid/domain/solid_principles.entity.dart';
import 'package:patterns_guide_app/widgets/custom_text_button.dart';
import 'components/components.index.dart';

SolidController _solidController = Get.put(SolidController());
class PrincipleDetailsPage extends StatelessWidget {

  static const String route = "/PrincipleDetailsPage";
   
  const PrincipleDetailsPage({super.key});
  
  @override
  Widget build(BuildContext context) {

    SolidPrinciples selected = _solidController.principles[_solidController.selectedIndex];

    return Scaffold(
   
      appBar: AppBar(
         title: Text(selected.name),
         centerTitle: true,
      ),
   
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Obx(() => Column(
            children: [

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [

                  CustomTextBtn(
                    title: 'Description',
                    onPress: () => _solidController.toggleShowDescription(),
                    color: _solidController.showDescription ? Colors.blue : Colors.grey,
                  ),
                  CustomTextBtn(
                    title: 'Caracteristicas',
                    onPress: () => _solidController.toggleShowCharacteristics(),
                    color: _solidController.showCharacteristics ? Colors.blue : Colors.grey,
                  ),
                  CustomTextBtn(
                    title: 'Ejemplo',
                    onPress: () => _solidController.toggleShowExample(),
                    color: _solidController.showExample ? Colors.blue : Colors.grey,
                  ),

                ],
              ),
              const SizedBox(height: 20),

              if( _solidController.showDescription )
              Description(description: selected.description),
              
              if( _solidController.showCharacteristics )
              Characteristics(
                characteristics: selected.characteristics,
                violations: selected.violations,
                benefits: selected.benefits,
              ),

              if( _solidController.showExample )
              Examples(
                onCorrectTap: () => _solidController.toggleShowCorrectExample(),
                onWrongTap: () => _solidController.toggleShowWrongExample(),
                selectedOption: _solidController.showWrongExample,
                example: _solidController.showWrongExample 
                  ?  selected.correctExample
                  : selected.wrongExample,
              ),
              
            ],
          ),
        ),
      ),
    ));
  }
}

