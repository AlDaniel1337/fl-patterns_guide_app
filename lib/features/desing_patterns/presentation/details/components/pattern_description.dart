import 'package:flutter/material.dart';
import 'package:patterns_guide_app/core/adapters/markdown_widget.dart';

class PatternDescription extends StatelessWidget {

  final String description;
   
  const PatternDescription({
    super.key,
    required this.description,
  });
  
  @override
  Widget build(BuildContext context) {

    final diviceSize  = MediaQuery.of(context).size;

    return SizedBox(
      height: diviceSize.height * 0.7,
      child: SingleChildScrollView(
        child: MarkdownAdapter(
          height: diviceSize.height * 0.7,
          data: description,
        ),
      ),
    );
  }
}