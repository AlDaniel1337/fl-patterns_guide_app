import 'package:flutter/material.dart';
import 'package:patterns_guide_app/core/navigation/navigation.dart';
import 'package:patterns_guide_app/core/navigation/routes.enum.dart';
import 'package:patterns_guide_app/widgets/big_menu_button.dart';

class JaponeseMenu extends StatelessWidget {
   
  const JaponeseMenu({super.key});
  
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(16),
      children: [

        BigMenuButton(
          title: "Partículas", 
          subtitle: "Aprende sobre las partículas en japonés", 
          icon: Icons.category,
          onPress: () => Navigation.goToPage( page: Routes.japaneseParticlesMenuPage ),
          mainColor: Color.fromRGBO(127, 18, 18, 1),
          secondaryColor: Color.fromRGBO(188, 107, 107, 1),
        ),

        BigMenuButton(
          title: "Temas", 
          subtitle: "Explora diferentes temas en japonés", 
          icon: Icons.topic,
          onPress: () {},
          mainColor: Color.fromRGBO(1, 118, 59, 1),
          secondaryColor: Color.fromRGBO(102, 204, 124, 1),
        ),
        
        BigMenuButton(
          title: "Kanji", 
          subtitle: "Practica y aprende Kanji", 
          icon: Icons.book,
          onPress: () {},
          mainColor: Color.fromRGBO(127, 99, 18, 1),
          secondaryColor: Color.fromRGBO(188, 163, 107, 1),
        ),
        
        BigMenuButton(
          title: "Aleatorio", 
          subtitle: "Tema aleatorio para practicar",
          icon: Icons.shuffle,
          onPress: () => Navigation.goToPage(page: Routes.japaneseRandomPage),
          mainColor: Color.fromRGBO(18, 99, 127, 1),
          secondaryColor: Color.fromRGBO(107, 188, 204, 1),
        ),

      ],
    );
  }
}