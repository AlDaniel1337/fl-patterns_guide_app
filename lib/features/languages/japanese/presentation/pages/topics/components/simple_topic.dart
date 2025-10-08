import 'package:flutter/material.dart';
import 'package:patterns_guide_app/features/japones/presentation/widgets/index.dart';
import 'package:patterns_guide_app/features/languages/domain/entities/topic.entity.dart';

class SimpleTopic extends StatelessWidget {
  const SimpleTopic({
    super.key,
    required this.topic,
  });

  final TopicEntity topic;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Topic(topic: topic)
        ],
      ),
    );
  }
}