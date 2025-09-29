import 'package:patterns_guide_app/features/japones/domain/entities/answers.entity.dart';
import 'package:patterns_guide_app/features/japones/domain/entities/topic.entity.dart';

TopicEntity deshou = TopicEntity(
  title: "でしょう",
  subtitle: "Verdad?",
  smallDescription: "Afirmar o confirmar algo",
  details: "Se usa para afirmar o confirmar algo que se cree que es verdad",
  rule: "+ でしょう",
  extraData: [
    "También se puede usar para indicar que parece que algo va a pasar porque escuche eso de otra persona o el contexto me lo indica",
    "Con una か al final pasa a 'crees que'",
    "También puede significar 'podre'",
  ],

  examples: [
    TopicExample(
      example: "今日食べに来ないでしょう", 
      translation: "Hoy no vendras a comer, verdad?",
      explanation: "Aquí, でしょう se usa para confirmar una suposición o expectativa sobre una acción futura.",
    ),

    TopicExample(
      example: "雨が降るでしょう", 
      translation: "Parece que va a llover",
    ),
    
    TopicExample(
      example: "雨が降るでしょうか", 
      translation: "Crees que va a llover?",
    ),

    TopicExample(
      example: "明日雨がつつくでしょうか", 
      translation: "Crees que mañana seguirá lloviendo?",
      posibleAnswers: [
        AnswersEntity(
          answer: "つつくでしょう", 
          translation: "Si, eso creo",
          explanation: "Confirmo algo basado en lo que escuche o el contexto",
        ),
        AnswersEntity(
          answer: "つつくと思います", 
          translation: "Creo que si",
          explanation: "Confirmo algo basado enteramente en mi opinión",
        ),
      ]
    ),
  ],
);