import 'package:flutter/material.dart';
import 'package:patterns_guide_app/features/japones/presentation/widgets/index.dart';
import 'package:patterns_guide_app/features/languages/domain/entities/topic.entity.dart';

class TopicExamples extends StatelessWidget {

   final List<TopicExample> examples;

   const TopicExamples({super.key, required this.examples});
  
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ...examples.map( (example) => Example(
          example: example,
        )),
      ],
    );
  }
}