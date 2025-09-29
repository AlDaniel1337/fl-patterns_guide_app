import 'package:patterns_guide_app/features/japones/domain/entities/topic.entity.dart';

TopicEntity tearimasu = TopicEntity(
  title: "て+あります",
  subtitle: "Estado resultante",
  smallDescription: "Enfatizar que hay una cosa en un lugar por un motivo.",
  details: "Se usa para enfatizar que algo está en un estado particular como resultado de una acción previa, generalmente realizada por alguien.",
  rule: "Forma て + あります",

  extraData: [
    "Enfatizar porque ese objeto está ahí o así",
    "Se utiliza la partícula【が】para especificar la razón.",
    "Se utiliza la partícula【に】para especificar el lugar.",
  ],

  examples: [
    TopicExample(
      example: "棚【の】上【に】花瓶【が】かさってあります", 
      translation: "Arriba del escritorio hay un florero decorando",
      explanation: "El florero está ahí porque alguien lo puso para decorar.",
    ),
    TopicExample(
      example: "黒板【には】メゼジ【が】書いてあります", 
      translation: "Hay un mensaje escrito en el pizarrón.",
      explanation: "El mensaje está ahí porque alguien lo escribió.",
    ),
    TopicExample(
      example: "窓が閉まっています", 
      translation: "La ventana está cerrada",
      explanation: "En este caso, la ventana está cerrada pero no se especifica el motivo.",
    ),
    TopicExample(
      example: "窓が閉めてあります", 
      translation: "La ventana (ya) está cerrada. (Esta cerrada por un motivo)",
      explanation: "En este caso, la ventana está cerrada porque alguien la cerró (por ejemplo, para que no entre el frío).",
    ),
  ],
);