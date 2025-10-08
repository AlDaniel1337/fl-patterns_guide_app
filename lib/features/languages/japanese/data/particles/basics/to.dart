import 'package:patterns_guide_app/features/languages/domain/entities/particle.entity.dart';

final List<ParticleData> particleTo = [
  
  ParticleData(
    usage: "Y, Con",
    examples: [
      ParticleExample(
        example: "友達【と】...", 
        translation: "Con mi amigo",
      ),
      
      ParticleExample(
        example: "花【と】石", 
        translation: "Flores y piedras",
      ),
    ],
  ),
  
  ParticleData(
    usage: "'Como'",
    examples: [
      ParticleExample(
        example: "何【と】読みますか", 
        translation: "Como se lee",
      ),
      
      ParticleExample(
        example: "何【と】使いますか", 
        translation: "Como se usa",
      ),
    ],
  ),
  
  ParticleData(
    usage: "Condicional y/o acción y consecuencia",
    examples: [
      ParticleExample(
        example: "このボタン【を】押す【と】，電気【を】寒くなります.", 
        translation: "Sí precionas este botón, se hará más frio",
      ),
      
      ParticleExample(
        example: "右【に】曲がる【と】，駅があります.", 
        translation: "Si giras a la derecha, está la estación",
      ),
    ],
  ),
  
  ParticleData(
    usage: "Comparación / equivalencia",
    examples: [
      ParticleExample(
        example: "猫【は】犬【と】違います", 
        translation: "El gato es diferente al perro",
      ),
      
      ParticleExample(
        example: "犬【は】人間【と】同じです", 
        translation: "El perro es igual al humano",
      ),
    ],
  ),
  
  ParticleData(
    usage: "Antes de verbos de comunicación o pensamiento 言う, 伝える, 思う, 聞く, Etc...",
    examples: [
      ParticleExample(
        example: "彼【は】明日来る【と】言いました", 
        translation: "Él dijo que vendría mañana",
      ),
      
      ParticleExample(
        example: "先生【は】宿題【を】忘れない【と】伝えました", 
        translation: "El profesor me dijo que no olvide la tarea",
      ),
      
      ParticleExample(
        example: "彼女【は】来ない【と】思います", 
        translation: "Pienso que ella no vendrá",
      ),
    ],
  ),

];
