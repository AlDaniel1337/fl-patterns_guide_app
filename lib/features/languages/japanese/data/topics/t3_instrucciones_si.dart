import 'package:flutter/material.dart';
import 'package:patterns_guide_app/features/languages/domain/entities/topic.entity.dart';

TopicEntity instruccionesSi = TopicEntity(
  icon: Icons.check_circle_outline,
  title: "と",
  subtitle: "Sí (instrucciones)",
  smallDescription: "Instrucciones sí",
  details: "Se usa para indicar que una accion ocurre si otra acción sucede",
  rule: "Coloquial + と",
  examples: [
    TopicExample(
      example: "このボタン【を】押す【と】，電気【を】つけます。", 
      exampleWithHighlight: ["押す【と】"],
      translation: "Sí precionas este botón, la luz se enciende",
      explanation: "Aquí, と se usa para indicar que una acción (presionar el botón) causa otra acción (encender la luz).",
    ),

    TopicExample(
      example: "このボタン【を】押す【と】，寒くなります。", 
      exampleWithHighlight: ["押す【と】"],
      translation: "Sí giras este botón, se hara más frio",
      explanation: "Aquí, と se usa para indicar que una acción (girar el botón) causa otra acción (hacerse más frio).",
    ),
  ],
);