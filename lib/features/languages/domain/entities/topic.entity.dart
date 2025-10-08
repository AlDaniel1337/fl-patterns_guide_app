import 'package:flutter/material.dart';
import 'package:patterns_guide_app/features/languages/domain/entities/answers.entity.dart';

class TopicEntity {
  final String title;
  final String subtitle;
  final String smallDescription;
  final String details;
  final String rule;
  final List<String>? considerations;
  final List<TopicExample> examples;
  final IconData? icon;
  final List<TopicEntity>? similarTopics;
  final List<TopicGroup>? groups;

  TopicEntity({
    required this.title,
    required this.subtitle,
    required this.smallDescription,
    required this.details,
    required this.rule,
    this.considerations,
    required this.examples,
    this.icon,
    this.similarTopics,
    this.groups,
  });
}



class TopicExample {
  final String example;
  final List<String> exampleWithHighlight;
  final TextStyle? highlightStyle;
  final String translation;
  final String? explanation;
  final String? explanationNote;
  final List<AnswersEntity>? posibleAnswers;

  TopicExample({
    required this.example,
    required this.translation,
    this.exampleWithHighlight = const [],
    this.highlightStyle,
    this.explanation,
    this.explanationNote,
    this.posibleAnswers,
  });
}



class TopicGroup {
  final String groupName;
  final String groupDescription;
  final List<String> details;
  final String example;

  TopicGroup({
    required this.groupName,
    required this.groupDescription,
    required this.details,
    required this.example,
  });
}