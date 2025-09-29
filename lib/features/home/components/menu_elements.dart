import 'package:flutter/material.dart';
import 'package:patterns_guide_app/core/navigation/navigation.dart';
import 'package:patterns_guide_app/core/navigation/routes.enum.dart';
import 'package:patterns_guide_app/widgets/big_menu_button.dart';

class MenuElements {
  static final menuItems = [
    BigMenuButton(
      title: "Patrones de diseño",
      subtitle: "Detalles de los patrones de diseño",
      icon: Icons.palette_rounded,
      onPress: () => Navigation.goToPage(page: Routes.desingPatternsMenuPage),
      mainColor: const Color.fromARGB(255, 168, 35, 35),
      secondaryColor: const Color.fromARGB(255, 181, 91, 91),
    ),
    
    BigMenuButton(
      title: "Ejercicios",
      subtitle: "Ejercicios de programación",
      icon: Icons.menu_book_rounded,
      onPress: () => Navigation.goToPage(page: Routes.exercisesPage),
      mainColor: const Color.fromARGB(255, 10, 101, 176),
      secondaryColor: const Color.fromARGB(255, 89, 127, 157),
    ),
    
    BigMenuButton(
      title: "Japonés",
      subtitle: "Detalles del idioma japonés",
      icon: Icons.language_rounded,
      onPress: () => Navigation.goToPage(page: Routes.japaneseMenuPage),
      mainColor: const Color.fromARGB(255, 197, 8, 147),
      secondaryColor: const Color.fromARGB(255, 213, 98, 194),
    ),
  ];
}