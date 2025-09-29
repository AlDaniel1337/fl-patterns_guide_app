import 'package:patterns_guide_app/features/japones/domain/entities/particle.entity.dart';

final List<ParticleData> particleKara = [
  
  ParticleData(
    usage: "Desde (lugar, tiempo)",
    examples: [
      ParticleExample(
        example: "一番【から】", 
        translation: "Desde el primero...",
      ),
      ParticleExample(
        example: "駅【から】歩きます", 
        translation: "Camino desde la estación...",
      ),
      ParticleExample(
        example: "9時【から】5時【まで】働きます", 
        translation: "Trabajo desde las 9 hasta las 5...",
      ),
    ],
  ),
  
  ParticleData(
    usage: "Causa o motivo (porque / ya que)",
    examples: [
      ParticleExample(
        example: "雨【が】降っている【から】、行きません", 
        translation: "No voy porque está lloviendo.",
      ),
      ParticleExample(
        example: "安かった【から】買いました", 
        translation: "Lo compré porque estaba barato.",
      ),
    ],
  ),
  
  ParticleData(
    usage: "Construcción “porque A, entonces B”",
    examples: [
      ParticleExample(
        example: "忙しい【から】行けない", 
        translation: "No puedo ir porque estoy ocupado.",
      ),
      
      ParticleExample(
        example: "元気だ【から】大丈夫です", 
        translation: "Porque estoy saludable, estoy bien",
      ),
    ],
  ),
  
];
