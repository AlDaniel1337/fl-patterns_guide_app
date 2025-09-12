import 'package:flutter/material.dart';
import 'package:patterns_guide_app/features/home/components/menu_elements.dart';

class HomePage extends StatelessWidget {

  static const String route = "/HomePage";
   
  const HomePage({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(   
      body: Center(
        child: ListView.builder(
          itemCount: MenuElements.menuItems.length,
          itemBuilder: (context, index) {
            var menuItem = MenuElements.menuItems[index];
            return menuItem;
          },
        ),
      ),
    );
  }
}