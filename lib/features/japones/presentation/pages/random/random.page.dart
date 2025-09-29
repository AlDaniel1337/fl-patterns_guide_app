import 'package:flutter/material.dart';
import 'package:patterns_guide_app/features/japones/presentation/widgets/custom_button.dart';

class JapaneseRandomPage extends StatelessWidget {

  static const String route = "/JapaneseRandomPage";
   
  const JapaneseRandomPage({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(      

      appBar: AppBar(
        title: const Text('Tema Aleatorio'),
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(Icons.refresh, size: 32),
            onPressed: () {
              // Acción para refrescar el contenido aleatorio
            },
          ),
        ],
      ),

      body: Padding(padding:  const EdgeInsets.all(16),
        child: Column(
          children: [
            
            _navigationButtons(),
          ],
        ),
      ),
      // body: Padding(
      //   padding: const EdgeInsets.all(16),
      //   child: Obx( () => Column(
      //     children: [
      //       _lessonsController.getCurrentLesson(),
      //       Spacer(),
      //       SizedBox(height: 20),
      //       _navigationButtons(),
      //       SizedBox(height: 20),
      //     ],
      //   ),
      // )),
    );
  }

  Row _navigationButtons() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomButton( 
          child: Text("Anterior", 
            style: TextStyle(fontSize: 18, color: Colors.white)
          ),
          // onTap: () => _lessonsController.getPreviousLesson(),
        ),
        SizedBox(width: 10),
        CustomButton( 
          child: Text("Aleatorio", 
            style: TextStyle(fontSize: 18, color: Colors.white)
          ),
          // onTap: () => _lessonsController.getRandomLesson(),
        ),
        SizedBox(width: 10),
        CustomButton( 
          child: Text("Siguiente", 
            style: TextStyle(fontSize: 18, color: Colors.white)
          ),
          // onTap: () => _lessonsController.getNextLesson(),
        ),
      ],
    );
  }
}