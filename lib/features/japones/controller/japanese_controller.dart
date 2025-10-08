import 'dart:math';

import 'package:patterns_guide_app/features/languages/japanese/data/particles/particles_index.dart';
import 'package:patterns_guide_app/features/languages/japanese/data/topics/index.dart';
import 'package:patterns_guide_app/features/languages/domain/entities/particle.entity.dart';
import 'package:get/get.dart';

/// JapaneseController japaneseController = Get.put(JapaneseController());
/// JapaneseController _japaneseController = Get.put(JapaneseController());

class JapaneseController extends GetxController{

  final lessonsElements = [
    deshou, toki, instruccionesSi, kuremasuMoraimasu, niteru, iru, takotogaarimasu, 
    ndesuNandesu, tara, demo, itadakemasenka, taraiidesuka, shika, nagara, shishi,
    teshimaimasu, tearimasu, teokimasuTeoite,
    // Deshou(), Toki(), ToInstruccion(), KuremasuMoraimasu(), Niteru(), IruEnfatizar(), Takotogaarimasu(),
    // Listados(),NdesuNandesu(), Tara(), Demo(), Itadakemasenka(), Taraiidesuka(), Shika(), Nagara(), Shishi(), 
    // Teshimaimasu(), Tearimasu(), TeokimasuTeoite(), Intenciones()
  ];

  int getRandomNumber(int max) {
    final random = Random();
    int num = random.nextInt(max);
    return num;
  }


  // Widget getCurrentLesson() => _lessonsElements[index.value];
  
  // getNextLesson(){
  //   if(index.value < _lessonsElements.length - 1){
  //     index.value++;
  //   } else {
  //     index.value = 0;
  //   }
  // }
  
  // getPreviousLesson(){
  //   if(index.value > 0){
  //     index.value--;
  //   } else {
  //     index.value = _lessonsElements.length - 1;
  //   }
  // }

  // getRandomLesson(){
  //   final random = Random();
  //   int num = random.nextInt(_lessonsElements.length);
  //   index.value = num;
  // }
  
  
  //[===== Partículas Japonesas =====]\\
  final _showParticleDetails = false.obs;
  bool get showDetails => _showParticleDetails.value;
  toggleDetails() => _showParticleDetails.value = !_showParticleDetails.value;
  
  var particleIndex = 0.obs;
  final particlesElements = {
    // Partículas básicas
    "は": particleHa,
    "が": particleGa,
    "を": particleWo,
    "に": particleNi,
    "へ": particleHe,
    "で": particleDe,
    "の": particleNo,
    "と": particleTo,
    "も": particleMo,
    
    // Partículas de final de oración (modalidad, énfasis, matiz)
    "か": particleKo,
    "ね": particleNe,
    "よ": particleYo,
    "な": particleNa,
    "ぞ": particleZo,
    "ぜ": particleZe,
    "さ": particleSa,    
    "わ": particleWa,

    // Partículas condicionales / conjuntivas
    "たら": particleTara,
    "なら": particleNara,
    "ば": particleBa,
    "だけ": particleDake,
    "しか": particleShika,
    "ばかり": particleBakari,
    "ほど": particleHodo,
    "くらい": particleKurai,
    "など": particleNado,
    "や": particleYa,
    "とか": particleToka,

    // Partículas de alcance / límite
    "から": particleKara,
    "まで": particleMade,

    // Partículas compuestas y especiales
    "には": particleNiha,
    "では": particleDeha,
    "へは": particleHeha,
    "からは": particleKaraha,
    "までは": particleMadeha,
    "までの": particleMadeno,
    "について": particleNitsuite,
    "にとって": particleNitotte,
    "によって": particleNiyotte,
    "によると": particleNiyoruto,
    "ために": particleTameni,
    "までに": particleMadeni,
    "より": particleYori,
  };

  getPartOfTheList(int start, int end) => particlesElements.entries.toList().sublist(start, end);

  List<ParticleData> getCurrentParticle() => particlesElements.values.elementAt(particleIndex.value);
  getCurrentParticleKey() => particlesElements.keys.elementAt(particleIndex.value);
  setParticleIndex(entry) => particleIndex.value = particlesElements.keys.toList().indexOf(entry.key);

}