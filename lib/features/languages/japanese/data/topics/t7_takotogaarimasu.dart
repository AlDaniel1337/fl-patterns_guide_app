import 'package:flutter/material.dart';
import 'package:patterns_guide_app/features/languages/domain/entities/answers.entity.dart';
import 'package:patterns_guide_app/features/languages/domain/entities/topic.entity.dart';

TopicEntity takotogaarimasu = TopicEntity(
  icon: Icons.checklist_sharp,
  title: "ことがあります",
  subtitle: "Experiencias",
  smallDescription: "Experiencias pasadas",
  details: "Se usa para hablar de experiencias pasadas o cosas que alguien ha hecho en su vida",
  rule: "Forma た + ことがあります",
  examples: [
    TopicExample(
      example: "【も】見ました", 
      translation: "Ya lo he visto / ya lo viste?",
      explanation: "Con も: Implica un promesa o una accion que se prometio como una tarea u obligacion",
    ),

    TopicExample(
      example: "見たこと【が】あります", 
      exampleWithHighlight: ["見たこと【が】あります"],
      translation: "He visto / la he visto",
      explanation: "Con ことがあります: Implica una experiencia hecha en algun momento de la vida",
    ), 

    TopicExample(
      example: "さしみ【を】食べたこと【が】あしますか.", 
      exampleWithHighlight: ["食べたこと【が】あしますか"],
      translation: "¿Has comido sashimi alguna vez?",
      explanation: "Aquí, たことがあります se usa para preguntar si alguien ha tenido la experiencia de comer sashimi en su vida.",
      posibleAnswers: [
        AnswersEntity(
          answer: "はい、あります。",
          translation: "Sí, he comido.",
          color: Colors.green
        ),
        AnswersEntity(
          answer: "いいえ，ありません",
          translation: "No, no he comido.",
          color: Colors.red
        ),
        AnswersEntity(
          answer: "一度だけ",
          translation: "Solo una vez",
        ),
        AnswersEntity(
          answer: "一度【も】",
          translation: "Nunca / ni una sola vez",
        ),
      ]
    )
  ],
);