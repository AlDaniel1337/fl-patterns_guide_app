import 'package:flutter/material.dart';
import 'package:patterns_guide_app/features/japones/domain/entities/answers.entity.dart';

class Example extends StatelessWidget {

  final String example;
  final String translation;
  final String? explanation;
  final List<AnswersEntity>? posibleAnswers;
   
  const Example({
    super.key, 
    required this.example,
    required this.translation,
    this.explanation,
    this.posibleAnswers
  });
  
  @override
  Widget build(BuildContext context) {
    
    final diviceSize  = MediaQuery.of(context).size;

    return SizedBox(
      width: diviceSize.width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(example, 
            style: TextStyle(
              fontSize: 22, 
              fontWeight: FontWeight.bold,
            ),
          ),
          
          Padding(
            padding: const EdgeInsets.only( left: 16.0),
            child: Text(translation, 
              style: TextStyle(
                fontSize: 20, 
                fontWeight: FontWeight.bold,
                color: Colors.grey
              ),
            ),
          ),

          
          if( explanation != null )
          Padding(
            padding: const EdgeInsets.only( left: 32.0),
            child: Text(explanation ?? "", 
              style: TextStyle(
                fontSize: 18,
                color: Colors.blueAccent
              ),
            ),
          ),
          
          if( posibleAnswers != null )
          _Answer(posibleAnswers: posibleAnswers),
          

          SizedBox( height: 22 ),
        ],
      ),
    );
  }
}

class _Answer extends StatelessWidget {
  const _Answer({
    required this.posibleAnswers,
  });

  final List<AnswersEntity>? posibleAnswers;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 24.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ...posibleAnswers!.map(( answer ) => 
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(answer.answer, 
                  style: TextStyle(
                    fontSize: 18,
                    color: answer.color
                  ),
                ),
      
                Padding(
                  padding: const EdgeInsets.only(left: 8),
                  child: Text(answer.translation, 
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey
                    ),
                  ),
                ),
                
                if( answer.explanation != null )
                Padding(
                  padding: const EdgeInsets.only(left: 16),
                  child: Text(answer.explanation!, 
                    style: TextStyle(
                      fontSize: 15,
                      fontStyle: FontStyle.italic,
                      color: const Color.fromARGB(255, 190, 4, 4)
                    ),
                  ),
                ),
              ],
            )
          ),
        ],
      ),
    );
  }
}