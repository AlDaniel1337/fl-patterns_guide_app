import 'package:flutter/material.dart';
import 'package:patterns_guide_app/features/languages/domain/entities/topic.entity.dart';

class TopicGroups extends StatelessWidget {

  final List<TopicGroup> groups;

  const TopicGroups({
    super.key, 
    required this.groups
  });

  @override
  Widget build(BuildContext context) {
    return Wrap(
      alignment: WrapAlignment.center,
      spacing: 32,
      children: groups.map( (group) => Column(
        children: [
          
          Text(
            group.groupName, 
            style: TextStyle(
              fontSize: 20, 
              fontWeight: FontWeight.bold,
              color: Colors.blueAccent
            )
          ),

          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: Text(
              group.groupDescription,
              style: TextStyle(
                fontSize: 16, 
                fontWeight: FontWeight.w500,
                fontStyle: FontStyle.italic,
                color: Colors.grey[700]
              ),
              textAlign: TextAlign.center,
            ),
          ),

          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: Text(
              group.example,
              style: TextStyle(
                fontSize: 16, 
                fontWeight: FontWeight.w500,
                fontStyle: FontStyle.italic,
                color: Colors.grey[700]
              ),
              textAlign: TextAlign.center,
            ),
          ),

          ...group.details.map( (detail) => Padding(
            padding: const EdgeInsets.symmetric(vertical: 4.0, horizontal: 8.0),
            child: Text(
              detail,
              style: TextStyle(
                fontSize: 16, 
                color: Colors.black87
              ),
              textAlign: TextAlign.justify,
            ),
          )),

        ],
      )).toList(),
    );
  }
}