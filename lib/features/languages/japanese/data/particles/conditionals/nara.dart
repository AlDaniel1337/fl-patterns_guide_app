import 'package:patterns_guide_app/features/languages/domain/entities/particle.entity.dart';

final List<ParticleData> particleNara = [
  
  ParticleData(
    usage: "Condición específica (“si…” / “en el caso de…”)",
    examples: [
      ParticleExample(
        example: "行く【なら】", 
        translation: "Si vas...",
      ),
      ParticleExample(
        example: "雨【が】降る【なら】，傘【を】持って行きます。", 
        translation: "Si llueve, llevaré un paraguas",
      ),
    ],
  ),
  
  ParticleData(
    usage: "Recomendación o sugerencia (“si es así…”)",
    examples: [
      ParticleExample(
        example: "日本【に】行く【なら】，京都【を】訪れます。", 
        translation: "Si vas a Japón, visita Kioto",
      ),
    ],
  ),
  
  ParticleData(
    usage: "Contraste o comparación (“en cuanto a…”)",
    examples: [
      ParticleExample(
        example: "彼【は】スポーツ【は】得意【なら】，勉強【は】苦手です。", 
        translation: "En cuanto a deportes, es bueno, pero en estudios es malo.",
      ),
    ],
  ),
  
];
