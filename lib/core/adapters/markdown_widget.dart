import 'package:flutter/material.dart';
import 'package:markdown_widget/markdown_widget.dart';

class MarkdownWidgetAdapter extends StatelessWidget {

  final String title;
  final String data;
   
  const MarkdownWidgetAdapter({
    super.key, 
    required this.title,
    required this.data,
  });
  
  @override
  Widget build(BuildContext context) {

    final diviceSize  = MediaQuery.of(context).size;

    return SingleChildScrollView(
      child: Column(
        children: [

          SizedBox(
            height: 100,
            child: MarkdownWidget(
              data: title
            ),
          ),
          
          SizedBox(
            height: diviceSize.height * 0.7,
            child: MarkdownWidget(
              data: data,
            ),
          ),

        ],
      ),
    );
  }
}


class MarkdownAdapter extends StatelessWidget {

  final String data;
  final double height;
   
  const MarkdownAdapter({
    super.key, 
    required this.data,
    this.height = 180,
  });
  
  @override
  Widget build(BuildContext context) {

    return SizedBox(
      height: height,
      child: MarkdownWidget(
        data: data,
      ),
    );
  }
}
