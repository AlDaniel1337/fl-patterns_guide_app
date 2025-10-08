import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:patterns_guide_app/core/adapters/animate_do.dart';
import 'package:patterns_guide_app/features/japones/controller/japanese_controller.dart';
import 'package:patterns_guide_app/features/languages/japanese/presentation/pages/particles/components/particle_example.dart';
import 'package:patterns_guide_app/features/languages/japanese/presentation/pages/particles/components/particle_usage.dart';
import 'package:patterns_guide_app/features/languages/japanese/presentation/pages/particles/components/show_more_btn.dart';
import 'package:patterns_guide_app/widgets/back_button.dart';


JapaneseController _japaneseController = Get.put(JapaneseController());
class ParticlesPage extends StatelessWidget {

  static const String route = "/ParticlesPage";
   
  const ParticlesPage({super.key});
  
  @override
  Widget build(BuildContext context) {
    
    final particleData = _japaneseController.getCurrentParticle();

    return Scaffold(
      
      body: Stack(
        children: [

          BackButtonWidget(),
          Obx(() => ShowMoreBtn(
            showDetails: _japaneseController.showDetails,
            onPressed: _japaneseController.toggleDetails,
          )),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
            child: Column(
              children: [
                Text(_japaneseController.getCurrentParticleKey(), 
                  style: TextStyle(fontSize: 52, fontWeight: FontWeight.bold) 
                ),
          
                SizedBox(
                  height: MediaQuery.of(context).size.height - 120,
                  child: ListView.builder(
                    itemCount: particleData.length,
                    itemBuilder: (context, index) {

                      final usage = particleData[index];

                      return Obx( () => Column(
                        children: [
          
                          ParticleUsage(usage: usage.usage),
          
                          SizedBox(height: 8),
                          if (_japaneseController.showDetails)
                          ...usage.examples.map((example) => AnimateDoAdapter.fadeIn(
                            child: ParticleFullExample(
                              example: example.example, 
                              translation: example.translation,
                              note: example.note,
                              noteColor: example.noteColor,
                            )
                          )),
                          Divider()

                        ],
                      ));
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      )
    );
  }
}