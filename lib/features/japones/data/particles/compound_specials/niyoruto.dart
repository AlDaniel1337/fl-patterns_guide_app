import 'package:patterns_guide_app/features/japones/domain/entities/particle.entity.dart';

final List<ParticleData> particleNiyoruto = [

  ParticleData(
    usage: "Se utiliza para indicar la fuente de información o la autoridad en la que se basa una afirmación, similar a 'según' en español.",
    examples: [
      ParticleExample(
        example: "天気予報【によると】明日は雨です。", 
        translation: "SEGÚN el pronóstico del tiempo, mañana lloverá.",
      ),
      ParticleExample(
        example: "先生【によると】この本は面白いです。", 
        translation: "SEGÚN el profesor, este libro es interesante.",
      ),
    ],
  ),
  
];