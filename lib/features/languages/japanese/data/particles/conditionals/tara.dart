import 'package:patterns_guide_app/features/languages/domain/entities/particle.entity.dart';

final List<ParticleData> particleTara = [
  
  ParticleData(
    usage: "Condición general (“si…” / “cuando…”)",
    examples: [
      ParticleExample(
        example: "来【たら】...", 
        translation: "Si vienen...",
      ),
      ParticleExample(
        example: "雨【が】降っ【たら】、行きません。", 
        translation: "Si llueve, no voy",
      ),
    ],
  ),
  
  ParticleData(
    usage: "Después de que (“cuando…” / “después de…”)",
    examples: [
      ParticleExample(
        example: "食べ【たら】...", 
        translation: "Después de comer...",
      ),
      ParticleExample(
        example: "宿題【を】し【たら】、遊び【に】行きます。", 
        translation: "Después de hacer la tarea, voy a jugar",
      ),
    ],
  ),
  
  ParticleData(
    usage: "Resultado inesperado (“y resulta que…”)",
    examples: [
      ParticleExample(
        example: "ドア【を】開け【たら】、猫【が】いました", 
        translation: "Resulta que cuando abrí la puerta, había un gato",
      ),
      ParticleExample(
        example: "財布【を】見【たら】、お金【が】なかった", 
        translation: "Y resulta que cuando miré mi billetera, no había dinero",
      ),
    ],
  ),
  
  ParticleData(
    usage: "Consejo / sugerencia (¿por qué no…?)",
    examples: [
      ParticleExample(
        example: "疲れ【たら】、休ん【だら】どうですか", 
        translation: "¿Por qué no descansas si estás cansado?",
      ),
      ParticleExample(
        example: "困っ【たら】、私【に】相談し【たら】いいですよ。", 
        translation: "¿Por qué no me consultas si tienes problemas?",
      ),
    ],
  ),

];
