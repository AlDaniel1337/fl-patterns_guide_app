import 'package:patterns_guide_app/features/languages/domain/entities/particle.entity.dart';

final List<ParticleData> particleHodo = [
  
  ParticleData(
    usage: "Condición específica (“si…” / “en el caso de…”)",
    examples: [
      ParticleExample(
        example: "雨【が】降る【ほど】，傘【を】持って行きます。", 
        translation: "Cuanto más llueve, más uso paraguas",
      ),
      ParticleExample(
        example: "勉強すればする【ほど】，頭【が】良くなる。", 
        translation: "Cuanto más estudias, más inteligente te vuelves",
      ),
    ],
  ),

  ParticleData(
    usage: "Grado extremo / al punto de (negativo)",
    examples: [
      ParticleExample(
        example: "疲れて，歩けない【ほど】です。", 
        translation: "Estoy tan cansado que no puedo caminar.",
      ),
      ParticleExample(
        example: "忙しくて，寝る時間がない【ほど】です。", 
        translation: "Estoy tan ocupado que no tengo tiempo para dormir.",
      ),
    ],
  ),

  ParticleData(
    usage: "No tanto como para (negativo)",
    examples: [
      ParticleExample(
        example: "痛くない【ほど】です。", 
        translation: "No duele tanto como para quejarme.",
      ),
      ParticleExample(
        example: "難しくない【ほど】です。", 
        translation: "No es tan difícil como para rendirme.",
      ),
    ],
  ),

  ParticleData(
    usage: "Comparación (más… que… / menos… que…)",
    examples: [
      ParticleExample(
        example: "兄【は】私【ほど】背【が】高くない。", 
        translation: "Mi hermano no es tan alto como yo.",
      ),
      ParticleExample(
        example: "この本【は】あの本【ほど】面白くない。", 
        translation: "Este libro no es tan interesante como ese libro.",
      ),
    ],
  ),
  
];
