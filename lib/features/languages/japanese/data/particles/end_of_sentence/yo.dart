import 'package:patterns_guide_app/features/languages/domain/entities/particle.entity.dart';

final List<ParticleData> particleYo = [
  
  ParticleData(
    usage: "Estoy seguro de lo que digo / énfasis",
    examples: [
      ParticleExample(
        example: "日本人ですよ", 
        translation: "Estoy seguro que soy japonés",
      ),
    ],
  ),
  
  ParticleData(
    usage: "Dar información nueva al oyente",
    examples: [
      ParticleExample(
        example: "これ【は】ペンですよ", 
        translation: "Esto es un bolígrafo",
      ),
      
      ParticleExample(
        example: "あそこ【に】猫がいるよ", 
        translation: "¡Allí hay un gato!",
      ),
    ],
  ),
  
  ParticleData(
    usage: "Dar consejo, advertencia o instrucción",
    examples: [
      ParticleExample(
        example: "早く寝たほうがいいよ.", 
        translation: "Deberías dormir temprano",
      ),
      
      ParticleExample(
        example: "危ないよ！", 
        translation: "¡Es peligroso!",
      ),
    ],
  ),
  
  ParticleData(
    usage: "Expresar emoción fuerte (alegría, sorpresa, enfado, etc.)",
    examples: [
      ParticleExample(
        example: "すごいよ！", 
        translation: "¡Es increíble!",
      ),
      ParticleExample(
        example: "やったよ！", 
        translation: "¡Lo logré!",
      ),
      ParticleExample(
        example: "だめだよ！", 
        translation: "¡No lo logré!, ¡No está bien!",
      ),
    ],
  ),

];
