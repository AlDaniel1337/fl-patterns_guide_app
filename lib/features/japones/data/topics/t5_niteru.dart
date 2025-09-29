import 'package:patterns_guide_app/features/japones/domain/entities/topic.entity.dart';

TopicEntity niteru = TopicEntity(
  title: "にてる",
  subtitle: "Semejanza",
  smallDescription: "Se parece a...",
  details: "Se usa para indicar que algo o alguien se parece a otra cosa o persona",
  rule: " + にてる (似てる)",
  examples: [
    TopicExample(
      example: "彼女【は】母【に】にている。", 
      translation: "Ella se parece a su madre",
      explanation: "Aquí, にている se usa para indicar que la chica se parece a su madre.",
    ),
    
    TopicExample(
      example: "この絵【は】本物【に】にている。", 
      translation: "Este cuadro se parece al original",
      explanation: "En este caso, にている se utiliza para expresar que el cuadro tiene una apariencia similar al original.",
    ),
  ],
);