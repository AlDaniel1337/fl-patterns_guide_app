import 'package:flutter/material.dart';
import 'package:patterns_guide_app/features/languages/japanese/presentation/pages/menus/main_menu.dart';


class JaponesMainPage extends StatelessWidget {

  static const String route = "/JaponesMainPage";
   
  const JaponesMainPage({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
   
      appBar: AppBar(
        title: const Text('Japones'),
        centerTitle: true,
      ),

      body: JaponeseMenu()
    );
  }

}

