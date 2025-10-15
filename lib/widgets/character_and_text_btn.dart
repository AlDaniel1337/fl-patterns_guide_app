import 'package:flutter/material.dart';

class CharacterAndTextButton extends StatelessWidget {

  final String title;
  final VoidCallback? onPress;
  final Color? mainColor;

  const CharacterAndTextButton({
    super.key,
    required this.title,
    this.onPress,
    this.mainColor,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      child: InkWell(
        borderRadius: BorderRadius.all(Radius.circular( 8.0 )),
        onTap: onPress,
        child: Container(
          height: 100,
          width: MediaQuery.of(context).size.width * 0.9,
          padding: const EdgeInsets.all(16.0),
          child: Stack(
            children: [
              InitialCharacter(text: title[0], mainColor: mainColor),
              PincipleName(text: title),
            ],
          ),
        ),
      ),
    );
  }
}

class PincipleName extends StatelessWidget {

  final String text;

  const PincipleName({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: 80,
      bottom: 0,
      child: Text(text, 
        style: TextStyle(
          fontSize: 20, 
          color: Colors.grey[600]
        )
      ),
    );
  }
}

class InitialCharacter extends StatelessWidget {

  final String text;
  final Color? mainColor;

  const InitialCharacter({
    super.key,
    required this.text,
    this.mainColor,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: 0,
      top: 0,
      bottom: 0,
      child: Container(
        height: 70,
        width:  70,
        decoration: BoxDecoration(
          color: mainColor ?? Colors.blue,
          borderRadius: BorderRadius.circular(18.0),
        ),
        child: Center(
          child: Text(text, 
            style: TextStyle(
              fontSize: 40, 
              color: Colors.white, 
              fontWeight: FontWeight.bold
            )
          ),
        ),
      ),
    );
  }
}