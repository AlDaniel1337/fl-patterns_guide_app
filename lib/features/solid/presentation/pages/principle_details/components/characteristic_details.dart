import 'package:flutter/material.dart';


class Characteristics extends StatelessWidget {

  final List<String> characteristics;
  final List<String> violations;
  final List<String> benefits;

  const Characteristics({
    super.key,
    required this.characteristics,
    required this.violations,
    required this.benefits,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Beneficios", 
          style: TextStyle( 
            fontSize: 20, 
            fontWeight: FontWeight.bold,
            color: Colors.blueAccent
          )
        ),
        ...benefits.map((char) => CharacteristicDetails(
          text: char,
          icon: const Icon(Icons.flag_circle_rounded, color: Colors.blueAccent)
        )),
        Divider(),

        Text("Detalles", 
          style: TextStyle( 
            fontSize: 20, 
            fontWeight: FontWeight.bold,
            color: Colors.green
          )
        ),
        ...characteristics.map((char) => CharacteristicDetails(
          text: char,
          icon: const Icon(Icons.check_circle, color: Colors.green),
        )),
        Divider(),
        
        const SizedBox(height: 20),
        Text("Violaciones", 
          style: TextStyle( 
            fontSize: 20, 
            fontWeight: FontWeight.bold,
            color: Colors.redAccent
          )
        ),
        ...violations.map((violation) => CharacteristicDetails(
          text: violation,
          icon: const Icon(Icons.cancel, color: Colors.redAccent),
        )),
      ],
    );
  }
}


class CharacteristicDetails extends StatelessWidget {

  final String text;
  final Icon icon;

  const CharacteristicDetails({
    super.key,
    required this.text,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 16.0),
      child: Row(
        children: [
          icon,
          const SizedBox(width: 8.0),
          Expanded(
            child: Text(text, 
              style: Theme.of(context).textTheme.bodyLarge,
            ),
          ),
        ],
      ),
    );
  }
}