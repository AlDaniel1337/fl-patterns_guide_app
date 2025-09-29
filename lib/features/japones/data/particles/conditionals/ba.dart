import 'package:patterns_guide_app/features/japones/domain/entities/particle.entity.dart';

final List<ParticleData> particleBa = [
  
  ParticleData(
    usage: "Condición hipotética (“si…”)",
    examples: [
      ParticleExample(
        example: "行け【ば】", 
        translation: "Si puedes ir...",
      ),
      ParticleExample(
        example: "時間【が】あれ【ば】、行きます", 
        translation: "Si tengo tiempo, iré.",
      ),
      ParticleExample(
        example: "もっと勉強し【れば】、上手になりますよ。", 
        translation: "Si estudias más, mejorarás.",
      ),
    ],
  ),
  
  ParticleData(
    usage: "Consejo / sugerencia (“deberías…”)",
    examples: [
      ParticleExample(
        example: "勉強し【れば】、合格しますよ。", 
        translation: "Deberías estudiar para aprobar",
      ),
      ParticleExample(
        example: "早く寝れ【ば】、元気になりますよ。", 
        translation: "Deberías dormir temprano para estar saludable<",
      ),
    ],
  ),
  
  ParticleData(
    usage: "Resultado lógico (“entonces…”)",
    examples: [
      ParticleExample(
        example: "雨【が】降れ【ば】、道【が】濡れます。", 
        translation: "Si llueve, el camino se mojará.",
      ),
      ParticleExample(
        example: "勉強し【れば】、知識【が】増えます。", 
        translation: "Si estudias, aumentarás tu conocimiento.",
      ),
    ],
  ),
  
  ParticleData(
    usage: "Expresar deseos o esperanzas (“ojalá…”)",
    examples: [
      ParticleExample(
        example: "成功し【れば】いいな。", 
        translation: "Ojalá tenga éxito.",
      ),
      ParticleExample(
        example: "幸せになれ【ば】いいな。", 
        translation: "Ojalá sea feliz.",
      ),
    ],
  ),

];
