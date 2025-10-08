import 'package:flutter/material.dart';
import 'package:patterns_guide_app/features/languages/japanese/data/topics/t21_teokimasu_teoite.dart';
import 'package:patterns_guide_app/features/japones/presentation/widgets/index.dart';

class TeokimasuTeoite extends StatelessWidget {
   
  const TeokimasuTeoite({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Topic(topic: teokimasuTeoite)
      ],
    );
  }
}