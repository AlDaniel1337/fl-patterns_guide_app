import 'package:patterns_guide_app/features/japones/domain/entities/topic.entity.dart';

TopicEntity kuremasuMoraimasu = TopicEntity(
  title: "くれます, もらいます",
  subtitle: "Dar y Recibir",
  smallDescription: "Dar y Recibir (de alguien o a alguien)",
  details: "Se usa para indicar que alguien da algo a alguien o que alguien recibe algo de alguien",
  rule: " + くれます / もらいます",
  examples: [
    TopicExample(
      example: "父【に】お金【を】もらいました。", 
      translation: "Recibí dinero de mi padre",
      explanation: "Aquí, もらいました se usa para indicar que el hablante recibió dinero de su padre.",
    ),
    
    TopicExample(
      example: "父【は】私【に】時計【を】くれました。", 
      translation: "Mi papa me dio un reloj (a mi)",
      explanation: "(Completo y formal): Aquí, くれました se usa para indicar que el padre del hablante le dio un reloj al hablante.",
    ),
    TopicExample(
      example: "父【が】時計【を】くれました。", 
      translation: "Mi papa me dio un reloj (a mi)",
      explanation: "(Informal): Aquí, くれました se usa para indicar que el padre del hablante le dio un reloj al hablante.",
    ),
    TopicExample(
      example: "時計【は】父【が】くれました。", 
      translation: "Mi papa me dio un reloj (a mi)",
      explanation: "(Enfasis en el objeto, el menos formal): Aquí, くれました se usa para indicar que el padre del hablante le dio un reloj al hablante.",
    ),
  ],
);