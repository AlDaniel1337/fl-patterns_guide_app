import 'package:patterns_guide_app/features/japones/domain/entities/topic.entity.dart';

TopicEntity iru = TopicEntity(
  title: "いる",
  subtitle: "Enfatizar",
  smallDescription: "Enfatizar existencia, presencia, algo o alguien",
  details: "Se usa para enfatizar, por ejemplo: la existencia o presencia de algo o alguien en un lugar específico",
  rule: " + いる",
  examples: [
    TopicExample(
      example: "今は日本に住んでいます", 
      translation: "Ahora estoy viviendo en Japón",
      explanation: "Sin enfatizar, la frase simplemente indica que la persona vive en Japón.",
    ),
    
    TopicExample(
      example: "今住んでいる場所は日本です", 
      translation: "El lugar donde estoy viviendo ahora es Japón",
      explanation: "Enfatizando, la frase resalta el lugar específico donde la persona está viviendo actualmente.",
    ),
  ],
);