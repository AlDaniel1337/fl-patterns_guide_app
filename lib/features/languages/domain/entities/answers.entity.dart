import 'package:flutter/material.dart';

class AnswersEntity {
  final String answer;
  final String translation;
  final String? explanation;
  final Color color;

  AnswersEntity({
    required this.answer, 
    required this.translation,
    this.explanation,
    this.color = Colors.black,
  });
}