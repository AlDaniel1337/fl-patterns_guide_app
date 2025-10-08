import 'package:patterns_guide_app/features/languages/domain/entities/particle.entity.dart';

final List<ParticleData> particleKo = [
  
  ParticleData(
    usage: "Marcador de pregunta",
    examples: [
      ParticleExample(
        example: "何ですか", 
        translation: "¿Qué es esto?",
      ),
      
      ParticleExample(
        example: "どこですか", 
        translation: "¿Dónde está?",
      ),
    ],
  ),

  ParticleData(
    usage: "Opción (o / ya sea)",
    examples: [
      ParticleExample(
        example: "コーヒー【か】紅茶", 
        translation: "Café o té",
      ),
    ],
  ),
 
  ParticleData(
    usage: "Duda o incertidumbre",
    examples: [
      ParticleExample(
        example: "行く【か】どうか分かりません", 
        translation: "No sé si ir o no.",
      ),
    ],
  ),
  
  ParticleData(
    isImportant: true,
    usage: "Expresiones fijas con か",
    examples: [
      ParticleExample(
        example:"誰か",
        translation:"Alguien"
      ),
      ParticleExample(
        example:"何か",
        translation:"Algo"
      ),
      ParticleExample(
        example:"どこか",
        translation:"En algún lugar"
      ),
      ParticleExample(
        example:"いつか",
        translation:"Algún día"
      ),
      ParticleExample(
        example:"どなたか",
        translation:"Alguien (formal)"
      ),
    ],
  ),

];
