import 'package:flutter/material.dart';
import 'package:patterns_guide_app/features/languages/domain/entities/topic.entity.dart';

TopicEntity hougaiidesu = TopicEntity(
  icon: Icons.help,
  title: "ほうがいいです",
  subtitle: "lo mejor es que...",
  smallDescription: "Recomendaciones o consejos.",
  details: "Se usa para dar recomendaciones o consejos sobre una acción que se debería tomar.",
  rule: "Forma た / Forma ない + ほうがいいです",
  considerations: [
    "PRESENTE: Recomendación para el futuro",
    "PASADO: Recomendación basada en experiencias pasadas",
    "En preguntas se usa para pedir consejo",
    "No es común que se use en preguntas, pero puede ser usado en temas MUY específicos como consultar sobre medicamentos o tratamientos médicos.",
  ],

  examples: [
    TopicExample(
      example: "コーラ【を】飲まないほうがいいです", 
      translation: "Lo mejor es que no tomes refresco de cola.",
    ),

    TopicExample(
      example: "毎日日本のドラマ【を】見たほうがいいでです", 
      translation: "Lo mejor es que veas dramas japoneses todos los días.",
      explanation: "Se utiliza en pasado por que el hablante ya tiene experiencia en eso y en base a eso da su recomendación"
    ),

    TopicExample(
      example: "風邪【を】引いたとき、薬【を】飲んだほうがいいですか", 
      translation: "Cuando uno se resfría, ¿es mejor tomar medicina?",
      explanation: "Aquí se usa en pregunta para pedir consejo más específico sobre un tema de salud."
    ),
  ],
);