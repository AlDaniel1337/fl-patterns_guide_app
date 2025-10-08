import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:patterns_guide_app/features/japones/controller/japanese_topics.controller.dart';
import 'package:patterns_guide_app/widgets/back_button.dart';
import 'package:patterns_guide_app/widgets/big_menu_button.dart';

JapaneseTopicsController _japaneseTopicsController = Get.put(JapaneseTopicsController());


class TopicMenuPage extends StatelessWidget {

  static const String route = "/TopicMenuPage";
   
  const TopicMenuPage({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Stack(
        children: [
          ListView(
            padding: const EdgeInsets.all(16),
            children: [
              const SizedBox(height: 50),
              ..._japaneseTopicsController.lessonsElements.map((topic) {

                final colorIndex = _japaneseTopicsController.getRandomNumber(16);

                return BigMenuButton(
                  title: topic.title, 
                  subtitle: topic.subtitle, 
                  icon: topic.icon ?? Icons.book_outlined,
                  onPress: () => {
                    _japaneseTopicsController.setSelectedTopicIndex(topic),
                  },
                  mainColor: Colors.primaries[colorIndex].shade900,
                  secondaryColor: Colors.primaries[colorIndex].shade700,
                );
              }),
            ],
          ),
          
          BackButtonWidget(),
        ],
      ),
      
    );
  }
}