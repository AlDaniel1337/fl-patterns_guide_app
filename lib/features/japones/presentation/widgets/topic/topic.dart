import 'package:flutter/material.dart';
import 'package:patterns_guide_app/features/japones/presentation/widgets/topic/topic_examples.dart';
import 'package:patterns_guide_app/features/japones/presentation/widgets/topic/topic_extra_data.dart';
import 'package:patterns_guide_app/features/japones/presentation/widgets/topic/topic_groups.dart';
import 'package:patterns_guide_app/features/japones/presentation/widgets/topic/topic_options_menu.dart';
import 'package:patterns_guide_app/features/languages/domain/entities/topic.entity.dart';
import 'package:patterns_guide_app/features/japones/presentation/widgets/index.dart';

class Topic extends StatefulWidget {

  final TopicEntity topic;
   
  const Topic({
    super.key,
    required this.topic
    });

  @override
  State<Topic> createState() => _TopicState();
}

class _TopicState extends State<Topic> {
  
  var _selectedOption = 0;
  
  @override
  Widget build(BuildContext context) {

    var deviceHeight = MediaQuery.of(context).size.height;
    // var height = deviceHeight - 280;
    var height = deviceHeight - 400;
    if( height <=0 ) height = 1;
    
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [

        SizedBox( height: 8 ),
        TopicHeader(
          title: widget.topic.title,
          subtitle: widget.topic.subtitle,
          smallDescription: widget.topic.smallDescription,
          details: widget.topic.details,
          rules: widget.topic.rule,
        ),

        TopicOptions(
          onExamplesPress: (){
            _selectedOption = 0;
            setState(() {});
          },
          onConsiderationsPress: widget.topic.considerations == null ? null : (){
            _selectedOption = 1;
            setState(() {});
          },
          onGroupsPress: widget.topic.groups == null ? null : (){
            _selectedOption = 2;
            setState(() {});
          },
        ),

        SizedBox(
          height: height,
          child: SingleChildScrollView(
            child: Column(
              children: [
                if( _selectedOption == 1 )
                TopicExtraData(extraData: widget.topic.considerations ?? [] ),
          
                if( _selectedOption == 0 )
                TopicExamples(examples: widget.topic.examples),

                if( _selectedOption == 2 )
                TopicGroups(groups: widget.topic.groups ?? [] ),
              ],
            ),
          ),
        )
      ],
    );
  }
}