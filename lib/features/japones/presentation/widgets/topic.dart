import 'package:flutter/material.dart';
import 'package:patterns_guide_app/features/japones/domain/entities/topic.entity.dart';
import 'package:patterns_guide_app/features/japones/presentation/widgets/index.dart';

class Topic extends StatelessWidget {

  final TopicEntity topic;
   
  const Topic({
    super.key,
    required this.topic
    });
  
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        CustomTitle(
          title: topic.title,
          subtitle: topic.subtitle,
          smallDescription: topic.smallDescription,
          details: topic.details,
          rules: topic.rule,
          extraData: topic.extraData,
        ),

        ScrollableSpace(
          height: topic.extraData != null ? 450 : 800,
          data: topic.examples.map( (example) => Example(
            example: example.example, 
            translation: example.translation,
            explanation: example.explanation,
            posibleAnswers: example.posibleAnswers,
          )).toList(),
        )
      ],
    );
  }
}