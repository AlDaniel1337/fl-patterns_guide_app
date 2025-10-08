import 'package:patterns_guide_app/features/languages/domain/entities/particle.entity.dart';

final List<ParticleData> particleYori = [

  ParticleData(
    usage: "Se usa para comparar dos cosas, indicando que una tiene una característica en mayor grado que la otra. Se traduce como 'más que' o 'en comparación con'.",
    examples: [
      ParticleExample(
        example: "この本【は】あの本【より】面白いです。", 
        translation: "Este libro ES MÁS interesante que ese libro.",
      ),
      ParticleExample(
        example: "彼【は】私【より】背【が】高いです。", 
        translation: "Él ES MÁS alto que yo.",
      ),
    ],
  ),

];