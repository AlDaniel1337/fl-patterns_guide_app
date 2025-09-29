import 'package:patterns_guide_app/features/japones/domain/entities/particle.entity.dart';

final List<ParticleData> particleMadeno = [

  ParticleData(
    usage: "Hasta él, la, (Destino / Sustantivo)",
    examples: [
      ParticleExample(
        example: "学校【までの】道", 
        translation: "El camino HASTA la escuela.",
        note: "【まで】 indica el punto final o destino\n"
          " Al combinarse con 【の】 se convierte en un modificador del sustantivo que sigue.",
      ),
    ],
  ),

  ParticleData(
    usage: "En punto (Tiempo)",
    examples: [
      ParticleExample(
        example: "12時【までの】", 
        translation: "A las 12 EN PUNTO.",
      ),
    ],
  ),

];