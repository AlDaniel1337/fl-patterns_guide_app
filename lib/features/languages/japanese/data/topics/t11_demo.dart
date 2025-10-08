import 'package:flutter/material.dart';
import 'package:patterns_guide_app/features/languages/domain/entities/topic.entity.dart';

TopicEntity demo = TopicEntity(
  icon: Icons.reviews_rounded,
  title: "でも",
  subtitle: "Aunque",
  smallDescription: "'Aunque' o 'a pesar de'.",
  details: "Usamos でも / ても para expresar 'aunque' o 'a pesar de' en una oración.",
  rule: "Verbo en forma た + でも / ても",

  considerations: [
    "Enfatizar: んでも / んても"
    "\nComo si la で o て tuviera acento",
    "Terminación: 【い】 ➞ 美味しい ➞ 美味しくても ",
    "Terminación: 【な】 ➞ 暇 ➞ 暇でも"
  ],

  examples: [
    TopicExample(
      example: "お金【が】あっても, 買いません。",
      exampleWithHighlight: ["あっても"],
      translation: "Aunque tenga dinero, no lo compraré.",
    ),
    TopicExample(
      example: "時間【が】なくても, 行きます。", 
      exampleWithHighlight: ["なくても"],
      translation: "Aunque no tenga tiempo, iré.",
    ),
    TopicExample(
      example: "暇でも, 映画【を】見ません。", 
      exampleWithHighlight: ["暇でも"],
      translation: "Aunque tenga tiempo libre, no iré a ver la película.",
    ),
  ],
);