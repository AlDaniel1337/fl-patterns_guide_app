import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:patterns_guide_app/core/navigation/navigation.dart';
import 'package:patterns_guide_app/core/navigation/routes.enum.dart';
import 'package:patterns_guide_app/features/japones/controller/japanese_controller.dart';
import 'package:patterns_guide_app/features/languages/japanese/presentation/pages/particles/components/particles_list.dart';
import 'package:patterns_guide_app/widgets/small_menu_button.dart';

JapaneseController _japaneseController = Get.put(JapaneseController());
class ParticlesMenuPage extends StatelessWidget {

  static const String route = "/ParticlesMenuPage";
   
  const ParticlesMenuPage({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: const Text('Partículas'),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        surfaceTintColor: Colors.transparent,
        scrolledUnderElevation: 0,
      ),

      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
                
            _Particles(
              title: "Partículas Básicas",
              listStart: 0,
              listEnd: 9,
            ),
            
            _Particles(
              title: "Partículas de Final de Oración",
              mainColor: Colors.purple,
              secondaryColor: Colors.purpleAccent,
              listStart: 9,
              listEnd: 17,
            ),
            
            _Particles(
              title: "Partículas Condicionales / Conjuntivas",
              mainColor: Colors.teal,
              secondaryColor: Colors.tealAccent,
              listStart: 17,
              listEnd: 28,
            ),
            
            _Particles(
              title: "Partículas de Alcance / Límite",
              mainColor: Colors.brown,
              secondaryColor: Colors.brown.shade300,
              listStart: 28,
              listEnd: 30,
            ),
            
            _Particles(
              title: "Partículas Compuestas y Especiales",
              mainColor: Colors.indigo,
              secondaryColor: Colors.indigoAccent,
              listStart: 30,
              listEnd: 43,
              buttonWidth: 180,
            ),
                
          ],
        ),
      ),
    );
  }
}

class _Particles extends StatelessWidget {

  final String title;
  final Color mainColor;
  final Color secondaryColor;
  final int listStart;
  final int listEnd;
  final double? buttonWidth;

  const _Particles({
    required this.title,
    required this.listStart,
    required this.listEnd,
    this.mainColor = const Color.fromRGBO(19, 149, 255, 1),
    this.secondaryColor = const Color.fromRGBO(149, 207, 255, 1),
    this.buttonWidth,
  });

  @override
  Widget build(BuildContext context) {
    return ParticlesList(
      title: title,
      particles: [
        ..._japaneseController.getPartOfTheList(listStart, listEnd).map((entry) => 
        SizedBox(
          width: buttonWidth ?? MediaQuery.of(context).size.width * 0.3,
          child: SmallMenuButton(
            mainColor: mainColor,
            secondaryColor: secondaryColor,
            title: entry.key, 
            onPress: (){
              _japaneseController.setParticleIndex(entry);
              Navigation.goToPage( page: Routes.japaneseParticlesPage );
            }
          ),
        ))
      ],
    );
  }
}