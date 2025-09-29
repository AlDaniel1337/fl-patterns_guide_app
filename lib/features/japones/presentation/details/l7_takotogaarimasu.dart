import 'package:flutter/material.dart';
import 'package:patterns_guide_app/features/japones/data/topics/index.dart';
import 'package:patterns_guide_app/features/japones/presentation/widgets/index.dart';

class Takotogaarimasu extends StatelessWidget {
   
  const Takotogaarimasu({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Topic(topic: takotogaarimasu)
      ],
    );
  }
}