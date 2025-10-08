import 'package:flutter/material.dart';
import 'package:patterns_guide_app/features/languages/domain/entities/answers.entity.dart';
import 'package:patterns_guide_app/features/languages/domain/entities/topic.entity.dart';

TopicEntity deshou = TopicEntity(
  icon: Icons.help_outline,
  title: "でしょう",
  subtitle: "Verdad?",
  smallDescription: "Afirmar o confirmar algo",
  details: "Se usa para afirmar o confirmar algo que se cree que es verdad",
  rule: "+ でしょう",
  considerations: [
    "También se puede usar para indicar que parece que algo va a pasar porque escuche eso de otra persona o el contexto me lo indica",
    "Con una か al final pasa a 'crees que'",
    "También puede significar 'podre'",
  ],

  examples: [
    TopicExample(
      example: "今日食べ【に】来ないでしょう", 
      exampleWithHighlight: ["でしょう"],
      translation: "Hoy no vendras a comer, verdad?",
      explanation: "Aquí, でしょう se usa para confirmar una suposición o expectativa sobre una acción futura.",
    ),

    TopicExample(
      example: "雨【が】降るでしょう", 
      exampleWithHighlight: ["降るでしょう"],
      translation: "Parece que va a llover",
    ),
    
    TopicExample(
      example: "雨【が】降るでしょうか", 
      exampleWithHighlight: ["降るでしょうか"],
      translation: "Crees que va a llover?",
    ),

    TopicExample(
      example: "明日雨【が】つつくでしょうか", 
      exampleWithHighlight: ["つつくでしょうか"],
      translation: "Crees que mañana seguirá lloviendo?",
      posibleAnswers: [
        AnswersEntity(
          answer: "つつくでしょう", 
          translation: "Si, eso creo",
          explanation: "Confirmo algo basado en lo que escuche o el contexto",
        ),
        AnswersEntity(
          answer: "つつく【と】思います", 
          translation: "Creo que si",
          explanation: "Confirmo algo basado enteramente en mi opinión",
        ),
      ]
    ),
  ],
);