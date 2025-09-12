import 'package:flutter/material.dart';

class ExercisesMainPage extends StatelessWidget {

  static const String route = "/ExercisesMainPage";
   
  const ExercisesMainPage({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
   
      appBar: AppBar(
        title: const Text('ExercisesMainPage'),
        centerTitle: true,
      ),
   
      body: const Center(
        child: Text('ExercisesMainPage'),
      ),
    );
  }
}