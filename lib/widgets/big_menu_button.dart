import 'package:flutter/material.dart';

class BigMenuButton extends StatelessWidget {

  final String title;
  final String subtitle;
  final IconData icon;
  final String? imageUrl;
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
    this.imageUrl,
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
                _details( imageUrl )
              ],
            )
          ),
        ),
      ),
    );
  }




  Row _details( String? imageUrl ) {
    return Row(
          children: [
            const SizedBox(width: 20),
            if(imageUrl != null)
            Image.asset( imageUrl, width: 130, height: 130, fit: BoxFit.contain ),

            const SizedBox(width: 20),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric( horizontal: 8.0 ),
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
            ),
          ],
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