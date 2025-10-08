import 'package:flutter/material.dart';
import 'package:patterns_guide_app/features/languages/domain/entities/topic.entity.dart';

TopicEntity itadakemasenka = TopicEntity(
   icon: Icons.person_search_rounded,
  title: "いただけませんか",
  subtitle: "No quieres que",
  smallDescription: "No quieres que (yo)",
  details: "Usamos いただけませんか para hacer una petición de manera educada.",
  rule: "Verbo en forma ます + いただけませんか",

  considerations: [
    "La acción la haría YO a no ser que se especifique alguien más",
    "Forma casual: くれない？ / くれないかな？ / くれないかい？",
    "Forma muy formal: いただけますでしょうか",
    "Forma muy formal negativa: いただけませんでしょうか",
  ],

  examples: [
    TopicExample(
      example: "薬【を】買っていただけませんか。", 
      translation: "¿No quieres que yo compre la medicina?",
      explanation: "En esta oración, la persona se esta ofreciendo de forma educada  para comprar la medicina.",
    ),
    
    TopicExample(
      example: "よくわからなかったので、もう一度説明していただけませんか。", 
      translation: "No lo entendí bien, ¿podrías explicarlo una vez más, por favor?",
      explanation: "Aquí, la persona está haciendo una petición educada para que alguien explique algo nuevamente.",
    ),
  ],
);