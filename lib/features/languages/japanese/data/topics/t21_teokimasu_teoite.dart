import 'package:flutter/material.dart';
import 'package:patterns_guide_app/features/languages/domain/entities/topic.entity.dart';

TopicEntity teokimasuTeoite = TopicEntity(
  icon: Icons.event_available,
  title: "て+おきます, て+おいて",
  subtitle: "Tener que hacer",
  smallDescription: "Tener que realizar una acción para facilitar otra acción futura.",
  details: "Se usa para indicar que una acción se realiza con el propósito de preparar o facilitar una acción futura.",
  rule: "Forma て + おきます / おいて",

  examples: [
    TopicExample(
      example: "コンサート【の】前に，きっぷ【を】買っておきます", 
      translation: "Antes del concierto, compraré los boletos (para tenerlos listos).",
      explanation: "La acción de comprar los boletos se realiza con el propósito de tenerlos listos para el concierto.",
    ),
    TopicExample(
      example: "椅子【は】そのまま【に】しておいてください", 
      translation: "Por favor, deje las sillas como están (no las mueva).",
      explanation: "Deja las sillas así porque se van a utilizar en el futuro.",
    ),
    TopicExample(
      example: '机の上【に】いす【を】片付けておいてください.',
      translation: "Por favor, acomoda las sillas sobre el escritorio.",
      explanation: 
      "Se utiliza 【に】 para indicar el lugar donde se debe dejar la acción realizada.\n"
      "Se utiliza 【を】 para inidicar la acción que se debe realizar.",
    ),
    TopicExample(
      example: '机の上【で】いす【が】片付けておいてください.',
      translation: "Las sillas están acomodadas sobre el escritorio.",
      explanation: 
      "Se utiliza 【で】 para indicar el lugar donde se encuentra la acción realizada.\n"
      "Se utiliza 【が】 para inidicar la acción que se ha realizado.",
    )
  ],
);