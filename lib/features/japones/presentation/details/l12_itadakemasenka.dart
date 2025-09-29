import 'package:flutter/material.dart';
import 'package:patterns_guide_app/features/japones/data/topics/index.dart';
import 'package:patterns_guide_app/features/japones/presentation/widgets/index.dart';

class Itadakemasenka extends StatelessWidget {
   
  const Itadakemasenka({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Topic(topic: itadakemasenka)
      ],
    );
  }
}