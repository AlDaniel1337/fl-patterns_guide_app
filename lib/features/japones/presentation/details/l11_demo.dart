import 'package:flutter/material.dart';
import 'package:patterns_guide_app/features/japones/data/topics/t11_demo.dart';
import 'package:patterns_guide_app/features/japones/presentation/widgets/index.dart';

class Demo extends StatelessWidget {
   
  const Demo({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Topic(topic: demo)        
      ],
    );
  }
}