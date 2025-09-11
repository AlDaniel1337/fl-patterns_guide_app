import 'package:flutter/material.dart';

class DesingPatternsMenuPage extends StatelessWidget {

  static const String route = "/DesingPatternsMenuPage";
   
  const DesingPatternsMenuPage({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
   
      appBar: AppBar(
         title: const Text('DesingPatternsMenuPage'),
         centerTitle: true,
      ),
   
      body: const Center(
         child: Text('DesingPatternsMenuPage'),
      ),
    );
  }
}