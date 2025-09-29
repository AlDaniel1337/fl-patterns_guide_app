import 'package:patterns_guide_app/features/japones/domain/entities/topic.entity.dart';

TopicEntity ndesuNandesu = TopicEntity(
  title: "んです，なんです",
  subtitle: "Énfasis",
  smallDescription: "Hacer énfasis o mostrar interés",
  details: "Usamos んです / なんです para hacer énfasis o mostrar interés.",
  rule: "Froma coloquial + んです / なんです",
  extraData: [
    "También se usa para pedir o dar explicaciones."
  ],
  examples: [
    TopicExample(
      example: "どうして泣いているんですか。", 
      translation: "¿Por qué estás llorando?",
      explanation: "Aquí, んです se usa para mostrar interés en la razón por la que alguien está llorando.",
    ),
    
    TopicExample(
      example: "それはなんですか。", 
      translation: "¿Qué es eso?",
      explanation: "En este caso, なんです se utiliza para pedir una explicación o aclaración sobre algo que no se entiende.",
    ),
  ],
);