import 'package:flutter/material.dart';
import 'package:patterns_guide_app/core/navigation/navigation.dart';
import 'package:patterns_guide_app/core/navigation/routes.enum.dart';
import 'package:patterns_guide_app/features/home/components/menu_element.entity.dart';

class MenuElements {
  static final menuItems = [
    MenuElement(
      title: "Patrones de diseño",
      subtitle: "Detalles de los patrones de diseño",
      icon: Icons.palette_rounded,
      onPress: () => Navigation.goToPage(page: Routes.desingPatternsMenuPage),
    ),
    
    MenuElement(
      title: "Ejercicios",
      subtitle: "Ejercicios de programación",
      icon: Icons.menu_book_rounded,
      onPress: () => Navigation.goToPage(page: Routes.exercisesPage),
    ),
  ];
}