import 'package:flutter/material.dart';
import 'package:patterns_guide_app/core/adapters/markdown_widget.dart';
import 'package:patterns_guide_app/features/japones/presentation/widgets/custom_button.dart';

class Examples extends StatelessWidget {

  final String example;
  final void Function()? onCorrectTap;
  final void Function()? onWrongTap;
  final bool selectedOption;
   
  const Examples({
    super.key,
    required this.example,
    this.onCorrectTap,
    this.onWrongTap,
    this.selectedOption = true,
  });
  
  @override
  Widget build(BuildContext context) {

    const textStyle = TextStyle( 
      color: Colors.white, 
      fontSize: 16,
      fontWeight: FontWeight.w500
    );

    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            CustomButton(
              onTap: onWrongTap,
              width: 180,
              color: !selectedOption ? const Color(0xFF70B7FF) : Colors.grey,
              child: const Text("Ejemplo Incorrecto", 
                style: textStyle
              ),
            ),
            CustomButton(
              onTap: onCorrectTap,
              width: 180,
              color: selectedOption ? const Color(0xFF70B7FF) : Colors.grey,
              child: const Text("Ejemplo Correcto", 
                style: textStyle
              ),
            ),
          ],
        ),
        ExampleSpace( example: example ),
      ],
    );
  }
}

class ExampleSpace extends StatelessWidget {

  final String example;
   
  const ExampleSpace({
    super.key,
    required this.example,
  });
  
  @override
  Widget build(BuildContext context) {

    final deviceSize  = MediaQuery.of(context).size;

    return ConstrainedBox(
      constraints: BoxConstraints(
        maxHeight: deviceSize.height * 0.9,
      ),
      child: MarkdownAdapter(
        data: example,
        height: deviceSize.height * 0.8,
      ),
    );
  }
}