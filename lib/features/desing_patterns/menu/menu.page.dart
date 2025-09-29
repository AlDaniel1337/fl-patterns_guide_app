import 'package:flutter/material.dart';

class DesingPatternsMenuPage extends StatelessWidget {

  static const String route = "/DesingPatternsMenuPage";
   
  const DesingPatternsMenuPage({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
   
      appBar: AppBar(
        title: const Text('Builder'),
        centerTitle: true,
      ),
   
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          
          Text('Construir objetos complejos paso a paso.', 
            style: TextStyle( 
              fontSize: 20, 
              fontWeight: FontWeight.bold 
            ),
          ),

          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomTextBtn(title: "Propósito"),
            ],
          ),
      
        ],
      ),
    );
  }
}

class CustomTextBtn extends StatelessWidget {

  final String title;

  const CustomTextBtn({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: (){}, 
      child: Text(title, 
        style: TextStyle(
          fontSize: 20, 
          fontWeight: FontWeight.w400
        ),
      )
    );
  }
}