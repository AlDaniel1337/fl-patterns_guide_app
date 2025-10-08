import 'package:patterns_guide_app/features/languages/domain/entities/particle.entity.dart';

final List<ParticleData> particleNado = [
  
  ParticleData(
    usage: "Etcétera / y demás",
    examples: [
      ParticleExample(
        example: "本【や】ノート【など】を買いました。", 
        translation: "Compré libros, cuadernos, etc.",
      ),
      ParticleExample(
        example: "りんご【や】バナナ【など】が好きです。", 
        translation: "Me gustan las manzanas, los plátanos y demás.",
      ),
    ],
  ),

  ParticleData(
    usage: "Indicar ejemplos no exhaustivos",
    examples: [
      ParticleExample(
        example: "映画【など】を見ます。", 
        translation: "Veo películas (entre otras cosas).",
      ),
      ParticleExample(
        example: "音楽【など】を聴きます。", 
        translation: "Escucho música (entre otras cosas).",
      ),
    ],
  ),
  
];
