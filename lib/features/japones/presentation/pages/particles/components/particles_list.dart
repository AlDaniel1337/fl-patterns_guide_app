import 'package:flutter/material.dart';

class ParticlesList extends StatelessWidget {

  final List<Widget> particles;
  final String title;

  const ParticlesList({
    super.key, 
    required this.particles,
    required this.title
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [

        Text(title, 
          style: TextStyle(
            fontSize: 24, 
            fontWeight: FontWeight.bold
          )
        ),
        
        Wrap(
          direction: Axis.horizontal,
          alignment: WrapAlignment.center,
          crossAxisAlignment: WrapCrossAlignment.center,
          children: [ ...particles ],
        ),
      ],
    );
  }
}