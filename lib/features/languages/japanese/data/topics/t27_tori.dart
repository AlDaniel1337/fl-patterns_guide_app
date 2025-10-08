import 'package:flutter/material.dart';
import 'package:patterns_guide_app/features/languages/domain/entities/topic.entity.dart';

TopicEntity tori = TopicEntity(
  icon: Icons.precision_manufacturing_outlined,
  title: "とおり",
  subtitle: "Tal cual como.",
  smallDescription: "Realizar acciones exactamente como se han dicho",
  details: "La forma どおり se utiliza para indicar que una acción se realiza de la misma manera que se ha mencionado anteriormente.",
  rule: "Forma た + とおり + に / どおり + に",
  considerations: [
    "Realizar una acción tal cual como lo dije, hicieron o dijeron",
    "Si no se especifica quien lo dijo se entiende 'así es como yo lo escuche o dije'",
    "Si la instrucción viene de una persona se usa が",
    "Si la instrucción viene de un escrito u objeto se usa の",
  ],

  examples: [
    TopicExample(
      example: "言ったとおり【に】，やってください。", 
      translation: "Por favor, hazlo tal como dijiste.",
    ),

    TopicExample(
      example: "先生【が】言ったとおり【に】，やってください。", 
      translation: "Estudia tal como dice el profesor.",
    ),
    
    TopicExample(
      example: "説明書【の】とおり【に】，やってください。", 
      translation: "Hazlo tal como dice el manual.",
    ),
  ],

);