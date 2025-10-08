import 'package:flutter/material.dart';
import 'package:patterns_guide_app/features/languages/japanese/data/topics/t5_niteru.dart';
import 'package:patterns_guide_app/features/japones/presentation/widgets/index.dart';

class Niteru extends StatelessWidget {
   
  const Niteru({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Topic(topic: niteru)
      ],
    );
  }
}