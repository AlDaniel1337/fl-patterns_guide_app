import 'package:patterns_guide_app/features/japones/domain/entities/topic.entity.dart';

TopicEntity toki = TopicEntity(
  title: "とき",
  subtitle: "Cuando",
  smallDescription: "Cuando / Despues de",
  details: "Se usa para indicar que una acción ocurre cuando otra acción sucede o después que ha ocurrido",
  rule: "Coloquial る, た + とき",
  examples: [
    TopicExample(
      example: "日本へ行くとき", 
      translation: "Cuando iba a Japón",
      explanation: "La forma る + とき indica que la acción ocurre antes de estar allí (o será hecha en el trayecto hacia allí).",
    ),

    TopicExample(
      example: "日本へ行ったとき，マンガを買う", 
      translation: "Cuando vaya a Japón, compraré manga",
      explanation: "La forma た + とき indica que la acción después que ya se está (o estuvo allí)",
    ),
  ],
);