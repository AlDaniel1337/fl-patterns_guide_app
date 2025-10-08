import 'package:flutter/material.dart';
import 'package:patterns_guide_app/features/languages/domain/entities/topic.entity.dart';

TopicEntity solo = TopicEntity(
  icon: Icons.list,
  title: "しか，だけ",
  subtitle: "Solo",
  smallDescription: "",
  details: "",
  rule: "",
  examples: [],
  similarTopics: [shika, dake],
);

TopicEntity shika = TopicEntity(
  icon: Icons.filter_none,
  title: "しか",
  subtitle: "Solo (eso)",
  smallDescription:  "Solo (negativo)",
  details: "Se usa para indicar que algo es lo único que se hace o se tiene, generalmente en oraciones negativas.",
  rule: "Sustantivo + しか + Verbo en forma negativa",

  considerations: [
    "La partícula しか siempre va seguida de un verbo en forma negativa",
    "Se usa para enfatizar la limitación o exclusividad de una acción o cosa",
    "Equivalente a 'nada más que' o 'solamente' en español",
    "Tiene una connotación negativa en la cual damos a entender que quisiéramos saber, hacer o poder hacer más, pero solo sabemos eso por el momento."
  ],

  examples: [
    TopicExample(
      example: "3キロしか走れません", 
      translation: "Solo puedo correr 3 kilómetros",
    ),
    
    TopicExample(
      example: "すみません，日本語【が】少ししかわかりません", 
      translation: "Lo siento, solo entiendo un poco de japonés",
    ),
  ],
);


TopicEntity dake = TopicEntity(
  title: "だけ",
  subtitle: "Solo",
  smallDescription: "Solo (positivo)",
  details: "Se usa para indicar que algo es lo único que se hace o se tiene, generalmente en oraciones afirmativas.",
  rule: "Sustantivo + だけ + Verbo en forma afirmativa",

  considerations: [
    "La partícula だけ va seguida de un verbo en forma afirmativa",
    "Se usa para enfatizar la limitación o exclusividad de una acción o cosa",
    "Equivalente a 'nada más que' o 'solamente' en español",
    "Tiene una connotación positiva en la cual damos a entender que estamos satisfechos con lo que sabemos, hacemos o podemos hacer.",
  ],

  examples: [
    TopicExample(
      example: "3キロだけ走れる", 
      translation: "Solo puedo correr 3 kilómetros",
    ),
  ],
);