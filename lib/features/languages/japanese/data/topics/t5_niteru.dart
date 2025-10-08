import 'package:flutter/material.dart';
import 'package:patterns_guide_app/features/languages/domain/entities/topic.entity.dart';

TopicEntity niteru = TopicEntity(
  icon: Icons.people,
  title: "にてる",
  subtitle: "Semejanza",
  smallDescription: "Se parece a...",
  details: "Se usa para indicar que algo o alguien se parece a otra cosa o persona",
  rule: "+ にてる (似てる)",
  examples: [
    TopicExample(
      example: "彼女【は】母【に】にている。", 
      exampleWithHighlight: ["母【に】にている"],
      translation: "Ella se parece a su madre",
      explanationNote: "Quien + は/が + A quien + に + にてる (似てる)",
    ),
    
    TopicExample(
      example: "この絵【は】本物【に】にている。", 
      exampleWithHighlight: ["本物【に】にている"],
      translation: "Este cuadro se parece al original",
      explanationNote: "Objeto + は + A que + に + にてる (似てる)",
    ),
  ],
);