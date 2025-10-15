import 'package:flutter/material.dart';
import 'package:patterns_guide_app/core/navigation/navigation.dart';
import 'package:patterns_guide_app/core/navigation/routes.enum.dart';
import 'package:patterns_guide_app/widgets/big_menu_button.dart';

class MenuElements {
  static final menuItems = [ 
    BigMenuButton(
      title: "Ejercicios de programación",
      subtitle: "Mejorar lógica de programación",
      icon: Icons.menu_book_rounded,
      onPress: () => Navigation.goToPage(page: Routes.exercisesPage),
      mainColor: const Color.fromARGB(255, 10, 101, 176),
      secondaryColor: const Color.fromARGB(255, 89, 127, 157),
    ),

    BigMenuButton(
      title: "Patrones de diseño",
      subtitle: "Detalles de los patrones de diseño",
      icon: Icons.palette_rounded,
      onPress: () => Navigation.goToPage(page: Routes.desingPatternsMenuPage),
      mainColor: const Color.fromARGB(255, 168, 35, 35),
      secondaryColor: const Color.fromARGB(255, 181, 91, 91),
    ),

    BigMenuButton(
      title: "Solid",
      subtitle: "Principios de diseño SOLID",
      icon: Icons.rule_rounded,
      onPress: () => Navigation.goToPage(page: Routes.solidPage),
      mainColor: const Color.fromARGB(255, 176, 101, 10),
      secondaryColor: const Color.fromARGB(255, 157, 127, 89),
    ),

    BigMenuButton(
      title: "Clean Code",
      subtitle: "Principios de Clean Code",
      icon: Icons.clean_hands_rounded,
      onPress: () => Navigation.goToPage(page: Routes.exercisesPage),
      mainColor: const Color.fromARGB(255, 34, 139, 34),
      secondaryColor: const Color.fromARGB(255, 85, 163, 85),
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