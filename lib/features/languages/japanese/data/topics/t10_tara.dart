import 'package:flutter/material.dart';
import 'package:patterns_guide_app/features/languages/domain/entities/topic.entity.dart';

TopicEntity tara = TopicEntity(
  icon: Icons.help,
  title: "たら",
  subtitle: "Si, posibilidad",
  smallDescription: "'Si' o 'cuando'.",
  details: "Se usa para hablar de situaciones hipotéticas o futuras.",
  rule: "Forma diccionario + たら",
  
  considerations: [
    "Terminación: 【い】 ➞ 美味しい ➞ 美味しかったら ",
    "Terminación: 【な】 ➞ 暇 ➞ 暇だったら "
  ],

  examples: [
    TopicExample(
      example: "お金【が】あったら、車【を】買います。", 
      exampleWithHighlight: ["あったら"],
      translation: "Si tuviera dinero, compraría un coche.",
    ),
    TopicExample(
      example: "料理【が】美味しかったら、また来ます。", 
      exampleWithHighlight: ["美味しかったら"],
      translation: "Si la comida estaba deliciosa, volveré.",
    ),
    TopicExample(
      example: "暇だったら、映画【を】【に】行きます。", 
      exampleWithHighlight: ["暇だったら"],
      translation: "Si tengo tiempo libre, iré a ver una película.",
    ),
  ],
);