import 'package:flutter/material.dart';
import 'package:patterns_guide_app/features/languages/domain/entities/answers.entity.dart';
import 'package:patterns_guide_app/features/languages/domain/entities/topic.entity.dart';
import 'package:patterns_guide_app/widgets/dynamic_colored_text.dart';

class Example extends StatelessWidget {

  final TopicExample example;
   
  const Example({
    super.key, 
    required this.example,
  });
  
  @override
  Widget build(BuildContext context) {
    
    final diviceSize  = MediaQuery.of(context).size;

    return SizedBox(
      width: diviceSize.width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          DynamicColoredText(
            fullText: example.example, 
            highlightTexts: example.exampleWithHighlight,
            baseStyle: TextStyle(
              fontSize: 22, 
              fontWeight: FontWeight.bold,
            ),
          ),
          
          Padding(
            padding: const EdgeInsets.only( left: 16.0),
            child: Text(example.translation, 
              style: TextStyle(
                fontSize: 20, 
                fontWeight: FontWeight.bold,
                color: Colors.grey
              ),
            ),
          ),

          if( example.explanationNote != null )
          Padding(
            padding: const EdgeInsets.only( left: 30.0),
            child: Text(example.explanationNote ?? "", 
              style: TextStyle(
                fontSize: 18,
                fontStyle: FontStyle.italic,
                color: Colors.redAccent
              ),
            ),
          ),

          if( example.explanation != null )
          Padding(
            padding: const EdgeInsets.only( left: 32.0),
            child: Text(example.explanation ?? "", 
              style: TextStyle(
                fontSize: 18,
                color: Colors.blueAccent
              ),
            ),
          ),

          if( example.posibleAnswers != null )
          _Answer(posibleAnswers: example.posibleAnswers),

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