import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:patterns_guide_app/features/japones/controller/japanese_topics.controller.dart';
import 'package:patterns_guide_app/features/japones/presentation/widgets/topic/topic_title.dart';
import 'package:patterns_guide_app/features/languages/japanese/presentation/pages/topics/components/complex_topic.dart';
import 'package:patterns_guide_app/features/languages/japanese/presentation/pages/topics/components/simple_topic.dart';

JapaneseTopicsController _japaneseTopicsController = Get.put(JapaneseTopicsController());
Controller _controller = Get.put(Controller());

class TopicPage extends StatelessWidget {

  static const String route = "/TopicPage";
   
  const TopicPage({super.key});
  
  @override
  Widget build(BuildContext context) {
    
    final topic = _japaneseTopicsController.lessonsElements[_japaneseTopicsController.selectedTopicIndex.value];
    _controller.index.value = 0;

    return Scaffold(
   
      appBar: AppBar(
        centerTitle: true,
        title: TopicTitle(title: topic.title),
      ),
      body: (topic.similarTopics != null && topic.similarTopics!.isNotEmpty)
        ? ComplexTopic(topic: topic)
        : SimpleTopic(topic: topic)
    );
  }
}