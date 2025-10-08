import 'package:flutter/material.dart';

class DesingPattern {
  final String name;
  final String smallDescription;
  final String description;
  final String whereToUse;
  final List<String> exampleSteps;
  final IconData? icon;

  DesingPattern({
    required this.name, 
    required this.smallDescription,
    required this.description,
    required this.whereToUse,
    required this.exampleSteps,
    this.icon,
  });
}