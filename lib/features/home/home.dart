import 'package:flutter/material.dart';
import 'package:patterns_guide_app/core/navigation/navigation.dart';
import 'package:patterns_guide_app/core/navigation/routes.enum.dart';
import 'package:patterns_guide_app/features/home/components/menu_element.dart';

class HomePage extends StatelessWidget {

  static const String route = "/HomePage";
   
  const HomePage({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(   
      body: Center(
        child: ListView.builder(
          itemCount: 1,
          itemBuilder: (context, index) {
            return MenuElement(
              title: "Patrones de diseño",
              subtitle: "Detalles de los patrones de diseño",
              icon: Icons.palette_rounded,
              onPress: () => Navigation.goToPage(page: Routes.desingPatternsMenuPage),
            );
          },
        ),
      ),
    );
  }
}