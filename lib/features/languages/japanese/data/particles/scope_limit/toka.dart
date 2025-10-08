import 'package:patterns_guide_app/features/languages/domain/entities/particle.entity.dart';

final List<ParticleData> particleToka = [
  
  ParticleData(
    usage: "Enumeración no exhaustiva (etcétera)",
    examples: [
      ParticleExample(
        example: "本【とか】ノート【とか】", 
        translation: "Libros, cuadernos, etc...",
      ),
      ParticleExample(
        example: "映画【とか】音楽【とか】", 
        translation: "Películas, música, etc...",
      ),
    ],
  ),

  ParticleData(
    usage: "Citas indirectas (cosas como...)",
    examples: [
      ParticleExample(
        example: "彼は来る【とか】言ってた", 
        translation: "Él dijo que vendría, o algo así...",
      ),
      ParticleExample(
        example: "明日雨が降る【とか】", 
        translation: "Dicen que mañana lloverá, o algo así...",
      ),
    ],
  ),

];
