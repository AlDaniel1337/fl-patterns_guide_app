import 'package:flutter/material.dart';
import 'package:patterns_guide_app/features/languages/domain/entities/topic.entity.dart';

TopicEntity taraiidesuka = TopicEntity(
  icon: Icons.import_contacts_sharp,
  title: "たらいいですか",
  subtitle: "Que estaría bien",
  smallDescription: "Que estaría bien (hacer)",
  details: "Se usa para pedir consejo o una recomendación sobre qué hacer en una situación determinada.",
  rule: "Verbo en forma たら + いいですか",
  considerations: [
    "La respuesta suele incluir たらいいです",
    "También se puede usar para dar consejos",
  ],

  examples: [
    TopicExample(
      example: "薬【を】買ってきたらいいですか。", 
      translation: "¿Debería comprar medicina?",
      explanation: "En esta oración, la persona está pidiendo consejo sobre si debería comprar medicina.",
    ),
    
    TopicExample(
      example: "もう一度説明したらいいですか。", 
      translation: "¿Debería explicarlo una vez más?",
      explanation: "Aquí, la persona está pidiendo consejo sobre si debería explicar algo nuevamente.",
    ),
  ],
);