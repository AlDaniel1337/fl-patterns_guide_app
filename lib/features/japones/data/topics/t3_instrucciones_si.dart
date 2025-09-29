import 'package:patterns_guide_app/features/japones/domain/entities/topic.entity.dart';

TopicEntity instruccionesSi = TopicEntity(
  title: "と",
  subtitle: "Sí",
  smallDescription: "Instrucciones sí",
  details: "Se usa para indicar que una accion ocurre si otra acción sucede",
  rule: "Coloquial + と",
  examples: [
    TopicExample(
      example: "このボタン【を】押す【と】，電気【を】つけます。", 
      translation: "Sí precionas este botón, la luz se enciende",
      explanation: "Aquí, と se usa para indicar que una acción (presionar el botón) causa otra acción (encender la luz).",
    ),

    TopicExample(
      example: "このボタン【を】押す【と】，寒くなります。", 
      translation: "Sí giras este botón, se hara más frio",
      explanation: "Aquí, と se usa para indicar que una acción (girar el botón) causa otra acción (hacerse más frio).",
    ),
  ],
);