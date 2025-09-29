import 'package:patterns_guide_app/features/japones/domain/entities/topic.entity.dart';

TopicEntity tara = TopicEntity(
  title: "たら",
  subtitle: "Si, posibilidad",
  smallDescription: "'Si' o 'cuando'.",
  details: "Se usa para hablar de situaciones hipotéticas o futuras.",
  rule: "Forma diccionario + たら",
  
  extraData: [
    "Terminación: 【い】 ➞ 美味しい ➞ 美味しかったら ",
    "Terminación: 【な】 ➞ 暇 ➞ 暇だったら "
  ],

  examples: [
    TopicExample(
      example: "お金【が】あたら車を買います。", 
      translation: "Si tuviera dinero, compraría un coche.",
    ),
  ],
);