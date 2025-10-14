import 'package:flutter/material.dart';

class DesingPattern {
  final String name;
  final String smallDescription;
  final String description;
  final String whereToUse;
  final String aplicability;
  final List<String> exampleSteps;
  final IconData? icon;
  final String? imageUrl;

  DesingPattern({
    required this.name, 
    required this.smallDescription,
    required this.description,
    required this.whereToUse,
    required this.exampleSteps,
    required this.aplicability,
    this.imageUrl,
    this.icon,
  });
}