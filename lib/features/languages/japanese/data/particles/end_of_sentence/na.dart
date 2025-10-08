import 'package:patterns_guide_app/features/languages/domain/entities/particle.entity.dart';

final List<ParticleData> particleNa = [
  
  ParticleData(
    usage: "Destacar una característica",
    examples: [
      ParticleExample(
        example: "大切【な】仕事", 
        translation: "Un trabajo importante",
      ),
    ],
  ),
  
  ParticleData(
    usage: "Resaltar una característica (Adjetivos)",
    examples: [
      ParticleExample(
        example: "小さ【な】カバン", 
        translation: "ESA mochila PEQUEÑA",
      ),
      ParticleExample(
        example: "大き【な】家", 
        translation: "ESA casa GRANDE",
      ),
    ],
  ),
  
  ParticleData(
    usage: "Como partícula enfática final (coloquial)",
    examples: [
      ParticleExample(
        example: "そうだな", 
        translation: "Así es, ¿no?",
      ),
      ParticleExample(
        example: "いいな", 
        translation: "Qué bien, ¿no?",
      ),
      ParticleExample(
        example: "きれいだな", 
        translation: "Qué bonito, ¿no?",
      ),
      ParticleExample(
        example: "今日【は】暑いな", 
        translation: "Hoy hace calor, ¿no?",
      ),
    ],
  ),
 
  ParticleData(
    usage: "Como prohibición",
    examples: [
      ParticleExample(
        example: "行くな！", 
        translation: "¡No vayas!",
      ),
      ParticleExample(
        example: "触るな！", 
        translation: "¡No toques!",
      ),
    ],
  ),

];
