import 'package:flutter/material.dart';

class BigMenuButton extends StatelessWidget {

  final String title;
  final String subtitle;
  final IconData icon;
  final VoidCallback? onPress;
  final Color mainColor;
  final Color secondaryColor;
  final double borderRadius;
  final double height;
   
  const BigMenuButton({
    super.key, 
    required this.title, 
    required this.subtitle, 
    required this.icon,
    required this.onPress,
    this.mainColor = const Color.fromRGBO(19, 149, 255, 1),
    this.secondaryColor = const Color.fromRGBO(149, 207, 255, 1),
    this.borderRadius = 20,
    this.height = 80,
  });
  
  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      child: Material(
        child: InkWell(
          borderRadius: BorderRadius.all(Radius.circular( borderRadius )),
          onTap: onPress,
          child: Container(
            width: double.infinity,
            height: height,
            decoration: _decoration( borderRadius ),
            child: Stack(
              children: [
                _background( borderRadius ),
                _details()
              ],
            )
          ),
        ),
      ),
    );
  }




  Row _details() {
    return Row(
          children: [
            const SizedBox(width: 20),
            Icon( icon, size: 50, color: Colors.white ),

            const SizedBox(width: 20),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text( title, style: const TextStyle( fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white)),
                  const SizedBox(height: 5),
                  Text(subtitle, style: const TextStyle( color: Colors.white) ),
                ],
              ),
            ),
            
            IconButton(
              icon: const Icon( Icons.arrow_forward_ios_rounded, color: Colors.white ),
              onPressed: onPress,
            ),
            const SizedBox(width: 10),
          ],
        );
  }



  SizedBox _background( double borderRadius ) {
    return SizedBox(
      height: 200,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(borderRadius),
        child: Stack(
          children: [
            Positioned(
              right: -20,
              top: -20,
              child: Icon(  icon, size: 130, color: const Color.fromRGBO(255, 255, 255, 0.2) ),
            )
          ],
        ),
      )
    );
  }



  BoxDecoration _decoration( double borderRadius ) {
    return BoxDecoration(
      borderRadius: BorderRadius.circular(borderRadius),
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