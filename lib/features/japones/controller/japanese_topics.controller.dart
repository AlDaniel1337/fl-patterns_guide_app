import 'dart:math';

import 'package:patterns_guide_app/core/navigation/navigation.dart';
import 'package:patterns_guide_app/core/navigation/routes.enum.dart';
import 'package:patterns_guide_app/features/languages/domain/entities/topic.entity.dart';
import 'package:patterns_guide_app/features/languages/japanese/data/topics/index.dart';
import 'package:get/get.dart';

/// JapaneseTopicsController japaneseTopicsController = Get.put(JapaneseTopicsController());
/// JapaneseTopicsController _japaneseTopicsController = Get.put(JapaneseTopicsController());

class JapaneseTopicsController extends GetxController{

  final selectedTopicIndex = 0.obs;

  final lessonsElements = [
    deshou, toki, instruccionesSi, kuremasuMoraimasu, niteru, iru, 
    takotogaarimasu, listados, ndesuNandesu, tara, demo, itadakemasenka, 
    taraiidesuka, formaPotencial, solo, nagara, shishi, teshimaimasu, 
    tearimasu, teokimasuTeoite, intenciones, hougaiidesu, kamoshirenai, 
    formaImperativa, formaProhibitiva, tori, atode, youni,
  ];

  setSelectedTopicIndex(TopicEntity topic) {
    selectedTopicIndex.value = lessonsElements.indexOf(topic);
    Navigation.goToPage(page: Routes.japaneseTopicPage );
  }

  int getRandomNumber(int max) {
    final random = Random();
    int num = random.nextInt(max);
    return num;
  }

}