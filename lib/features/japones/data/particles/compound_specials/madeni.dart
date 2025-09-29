import 'package:patterns_guide_app/features/japones/domain/entities/particle.entity.dart';

final List<ParticleData> particleMadeni = [

  ParticleData(
    usage: "Indica un límite temporal o espacial, similar a 'hasta' en español.",
    examples: [
      ParticleExample(
        example: "会議【までに】レポート【を】提出してください。", 
        translation: "Por favor, entregue el informe HASTA la reunión.",
      ),
      ParticleExample(
        example: "夏休み【までに】旅行【の】計画【を】立てます。", 
        translation: "Haré planes de viaje HASTA las vacaciones de verano.",
      ),
    ],
  ),

  ParticleData(
    usage: "Indica un punto en el tiempo o espacio hasta el cual ocurre una acción.",
    examples: [
      ParticleExample(
        example: "駅【までに】歩いて行きます。", 
        translation: "Caminaré HASTA la estación.",
      ),
      ParticleExample(
        example: "仕事【までに】終わらせます。", 
        translation: "Terminaré HASTA el trabajo.",
      ),
    ],
  ),

];