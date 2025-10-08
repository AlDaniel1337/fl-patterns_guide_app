import 'package:patterns_guide_app/features/languages/domain/entities/particle.entity.dart';

final List<ParticleData> particleKurai = [
  
  ParticleData(
    usage: "Grado aproximado / alrededor de / más o menos",
    examples: [
      ParticleExample(
        example: "三時間【くらい】勉強しました。", 
        translation: "Estudié alrededor de tres horas.",
      ),
    ],
  ),

  ParticleData(
    usage: "No más de / no menos de (con números)",
    examples: [
      ParticleExample(
        example: "一日【くらい】勉強します。", 
        translation: "Estudio no más de un día.",
      ),
    ],
  ),

  ParticleData(
    usage: "Al menos / por lo menos (con números)",
    examples: [
      ParticleExample(
        example: "三回【くらい】行きました。", 
        translation: "Fui al menos tres veces.",
      ),
    ],
  ),
  
];
