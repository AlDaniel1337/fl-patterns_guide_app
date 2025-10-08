import 'package:flutter/material.dart';
import 'package:patterns_guide_app/features/languages/domain/entities/topic.entity.dart';

TopicEntity iru = TopicEntity(
  icon: Icons.visibility,
  title: "いる",
  subtitle: "Enfatizar",
  smallDescription: "Enfatizar existencia, presencia, algo o alguien",
  details: "Se usa para enfatizar, por ejemplo: la existencia o presencia de algo o alguien en un lugar específico",
  rule: " + いる",
  examples: [
    TopicExample(
      example: "今【は】日本【に】住んでいます", 
      exampleWithHighlight: ["住んでいます"],
      translation: "Ahora estoy viviendo en Japón",
      explanation: "SIN ENFATIZAR: la frase simplemente indica que la persona vive en Japón.",
    ),
    
    TopicExample(
      example: "今住んでいる場所【は】日本です", 
      exampleWithHighlight: ["住んでいる"],
      translation: "El lugar donde estoy viviendo ahora es Japón",
      explanation: "ENFATIZANDO: la frase resalta el lugar específico donde la persona está viviendo actualmente.",
    ),
  ],
);