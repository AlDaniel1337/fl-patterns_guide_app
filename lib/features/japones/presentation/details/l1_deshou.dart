import 'package:flutter/material.dart';
import 'package:patterns_guide_app/features/languages/japanese/data/topics/index.dart';
import 'package:patterns_guide_app/features/japones/presentation/widgets/index.dart';

class Deshou extends StatelessWidget {
   
  const Deshou({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Topic(topic: deshou)
      ],
    );
  }
}