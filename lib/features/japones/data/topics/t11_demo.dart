import 'package:patterns_guide_app/features/japones/domain/entities/topic.entity.dart';

TopicEntity demo = TopicEntity(
  title: "でも",
  subtitle: "Aunque",
  smallDescription: "'Aunque' o 'a pesar de'.",
  details: "Usamos でも / ても para expresar 'aunque' o 'a pesar de' en una oración.",
  rule: "Verbo en forma た + でも / ても",

  extraData: [
    "Enfatizar: んでも / んても"
    "\nComo si la で o て tuviera acento",
    "Terminación: 【い】 ➞ 美味しい ➞ 美味しくても ",
    "Terminación: 【な】 ➞ 暇 ➞ 暇でも"
  ],

  examples: [
    TopicExample(
      example: "お金【が】あっても, 買いません。", 
      translation: "Aunque tenga dinero, no lo compraré.",
    ),
  ],
);