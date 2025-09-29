import 'package:flutter/material.dart';

class SmallMenuButton extends StatelessWidget {

  final String title;
  final VoidCallback? onPress;
  final Color mainColor;
  final Color secondaryColor;
   
  const SmallMenuButton({
    super.key, 
    required this.title, 
    required this.onPress,
    this.mainColor = const Color.fromRGBO(19, 149, 255, 1),
    this.secondaryColor = const Color.fromRGBO(149, 207, 255, 1),
  });
  
  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      child: Material(
        child: InkWell(
          borderRadius: BorderRadius.all(Radius.circular(20)),
          onTap: onPress,
          child: Container(
            width: double.infinity,
            height: 80,
            decoration: _decoration(),
            child: Center(
              child: Text( title, style: const TextStyle( 
                fontSize: 40, 
                fontWeight: FontWeight.bold, 
                color: Colors.white
                )
              ),
            ),
          ),
        ),
      ),
    );
  }



  BoxDecoration _decoration() {
    return BoxDecoration(
      borderRadius: BorderRadius.circular(15),
      boxShadow: const [
        BoxShadow(
          color: Color.fromRGBO(0, 0, 0, 0.2),
          offset: Offset(4, 6),
          blurRadius: 10,
        )
      ],

      gradient: LinearGradient(
        colors: [ mainColor, secondaryColor ],
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
      ),
    );
  }
}