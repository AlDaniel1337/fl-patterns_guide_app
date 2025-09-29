import 'package:patterns_guide_app/features/japones/domain/entities/answers.entity.dart';

class TopicEntity {
  final String title;
  final String subtitle;
  final String smallDescription;
  final String details;
  final String rule;
  final List<String>? extraData;
  final List<TopicExample> examples;

  TopicEntity({
    required this.title,
    required this.subtitle,
    required this.smallDescription,
    required this.details,
    required this.rule,
    this.extraData,
    required this.examples,
  });
}

class TopicExample {
  final String example;
  final String translation;
  final String? explanation;
  final List<AnswersEntity>? posibleAnswers;

  TopicExample({
    required this.example,
    required this.translation,
    this.explanation,
    this.posibleAnswers,
  });
}
