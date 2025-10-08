import 'package:flutter/material.dart';
import 'package:patterns_guide_app/features/japones/presentation/widgets/topic/topic_details.dart';
import 'package:patterns_guide_app/features/japones/presentation/widgets/topic/topic_rules.dart';
import 'package:patterns_guide_app/features/japones/presentation/widgets/topic/topic_small_description.dart';
import 'package:patterns_guide_app/features/japones/presentation/widgets/topic/topic_subtitle.dart';

class TopicHeader extends StatelessWidget {

  final String title;
  final String subtitle;
  final String smallDescription;
  final String details;
  final String? rules;
   
  const TopicHeader({
    super.key, 
    required this.title,
    required this.subtitle,
    required this.smallDescription,
    required this.details,
    this.rules,
  });
  
  @override
  Widget build(BuildContext context) {
    
    final diviceSize  = MediaQuery.of(context).size;

    return SizedBox(
      width: diviceSize.width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
                  
          TopicSubtitle(subtitle: subtitle),
          TopicSmallDescription(smallDescription: smallDescription),
          TopicDetails(details: details),
          SizedBox( height: 8 ),
          
          if(rules != null )
          TopicRules(rules: rules ?? ''),          
        ],
      ),
    );
  }
}
