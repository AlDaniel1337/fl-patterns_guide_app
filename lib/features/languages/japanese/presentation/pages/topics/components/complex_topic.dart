import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:patterns_guide_app/features/japones/presentation/widgets/custom_button.dart';
import 'package:patterns_guide_app/features/japones/presentation/widgets/topic/topic.dart';
import 'package:patterns_guide_app/features/languages/domain/entities/topic.entity.dart';


Controller _controller = Get.put(Controller());

class ComplexTopic extends StatelessWidget {
  const ComplexTopic({
    super.key,
    required this.topic,
  });

  final TopicEntity topic;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          
          SizedBox( height: 8 ),  
          _SelectTopicButtons(topic: topic),

          Obx( () {
            var index = _controller.index.value;
            return Topic(topic: topic.similarTopics![index] );
          }),

        ],
      ),
    );
  }
}

class _SelectTopicButtons extends StatelessWidget {
  const _SelectTopicButtons({
    required this.topic,
  });

  final TopicEntity topic;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12.0),
      child: Wrap(
        alignment: WrapAlignment.center,
        children: [
          ...topic.similarTopics!.map( (entry) => _Button(
            itemsLength: topic.similarTopics!.length,
            topic: entry,
            index: topic.similarTopics!.indexOf(entry),
          )),
        ],
      ),
    );
  }
}


/// Boton para mostrar el tema similar
class _Button extends StatelessWidget {
  const _Button({
    required this.topic,
    required this.index,
    required this.itemsLength,
  });

  final TopicEntity topic;
  final int index;
  final int itemsLength;

  @override
  Widget build(BuildContext context) {

    var diviceSize = MediaQuery.of(context).size;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
      child: CustomButton(
        width: diviceSize.width / itemsLength - 32,
        color: Colors.blue,
        child: Text(topic.title,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: Colors.white
          ),
        ),
        onTap: (){
          _controller.index.value = index;
        }
      ),
    );
  }
}


class Controller extends GetxController{
  var index = 0.obs;
}
