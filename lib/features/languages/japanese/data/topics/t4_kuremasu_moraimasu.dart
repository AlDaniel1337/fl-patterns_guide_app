import 'package:flutter/material.dart';
import 'package:patterns_guide_app/features/languages/domain/entities/topic.entity.dart';

TopicEntity kuremasuMoraimasu = TopicEntity(
  icon: Icons.card_giftcard,
  title: "くれます, もらいます",
  subtitle: "Dar y Recibir",
  smallDescription: "Dar y Recibir (de alguien o a alguien)",
  details: "Se usa para indicar que alguien da algo a alguien o que alguien recibe algo de alguien",
  
  rule: "+ くれます / もらいます",
  
  examples: [
    TopicExample(
      example: "父【に】お金【を】もらいました。", 
      exampleWithHighlight: ["お金【を】もらいました"],
      translation: "Recibí dinero de mi padre",
      explanation: "Aquí, もらいました se usa para indicar que el hablante recibió dinero de su padre.",
      explanationNote: "De quien + に + Objeto + を + もらいます",
    ),
    
    TopicExample(
      example: "父【は】私【に】時計【を】くれました。", 
      exampleWithHighlight: ["時計【を】くれました"],
      translation: "Mi papa me dio un reloj (a mi)",
      explanation: "(Completo y formal): Aquí, くれました se usa para indicar que el padre del hablante le dio un reloj al hablante.",
      explanationNote: "De quien + は + a quien + に + Objeto + を + くれます.",
    ),
    TopicExample(
      example: "父【が】時計【を】くれました。", 
      exampleWithHighlight: ["時計【を】くれました"],
      translation: "Mi papa me dio un reloj (a mi)",
      explanation: "(Informal): Aquí, くれました se usa para indicar que el padre del hablante le dio un reloj al hablante.",
      explanationNote: "De quien + が + Objeto + を + くれます",
    ),
    TopicExample(
      example: "時計【は】父【が】くれました。", 
      exampleWithHighlight: ["くれました"],
      translation: "Mi papa me dio un reloj (a mi)",
      explanation: "(Enfasis en el objeto, el menos formal): Aquí, くれました se usa para indicar que el padre del hablante le dio un reloj al hablante.",
      explanationNote: "Objeto + は + De quien + を + くれます",
    ),

    TopicExample(
      example: "母【は】私【に】お弁当【を】作ってくれました", 
      exampleWithHighlight: ["作ってくれました"],
      translation: "Mi madre me hizo un bentou (como un favor)",
      explanation: "Aquí, くれました se usa para indicar que la madre hizo el bentou como un favor para el hablante"
    ),
  ],
);