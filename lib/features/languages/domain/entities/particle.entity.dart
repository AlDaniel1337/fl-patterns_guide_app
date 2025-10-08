import 'package:flutter/material.dart';

class ParticleData {
  final String usage;
  final bool isImportant;
  final List<ParticleExample> examples;

  ParticleData({
    required this.usage,
    required this.examples,
    this.isImportant = false,
  });
}

class ParticleExample {
  final String example;
  final String translation;
  final String? note;
  final Color noteColor;

  ParticleExample({
    required this.example,
    required this.translation,
    this.note,
    this.noteColor = Colors.black87,
  });
}