import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:patterns_guide_app/core/adapters/markdown_widget.dart';
import 'package:patterns_guide_app/features/exercises/data/excercises/exercises.dart';
import 'package:patterns_guide_app/features/japones/presentation/widgets/custom_button.dart';


ExercisesController _exercisesController = Get.put(ExercisesController());

class ExercisesMainPage extends StatelessWidget {

  static const String route = "/ExercisesMainPage";
   
  const ExercisesMainPage({super.key});
  
  @override
  Widget build(BuildContext context) {

    return Scaffold(
   
      appBar: AppBar(
        title: const Text('Ejercicios'),
        centerTitle: true,
      ),
   
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Obx( (){
          
          var exercise = _exercisesController.getCurrentExercise();

          var data = "";
          if( _exercisesController.showExercise ) data = exercise.description;
          if( _exercisesController.showSolution ) data = exercise.solution;
          if( _exercisesController.showTips )     data = exercise.tip;

          return Column(
          children: [
            
            _actionsMenu(),

            MarkdownWidgetAdapter(
              title: exercise.title,
              data: data,
            ),

            Spacer(),
            SizedBox(height: 20),
            _navigationButtons(),
            SizedBox(height: 20),
          ],
        );
      }),
    ));
  }

  Row _actionsMenu() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [    

        CustomButton(
          height: _exercisesController.showTips ? 40 : 30,
          color: Colors.red,
          child: Text( "Tips", 
            style: TextStyle(
              fontSize: _exercisesController.showTips ? 20 : 16, 
              color: Colors.white
            )
          ),
          onTap: () {
            _exercisesController.hideAll();
            _exercisesController.toggleTips();
          },
        ),

        CustomButton(
          height: _exercisesController.showExercise ? 40 : 30,
          color: Colors.green,
          child: Text( "Ejercicio", 
            style: TextStyle(
              fontSize: _exercisesController.showExercise ? 20 : 16, 
              color: Colors.white
            )
          ),
          onTap: (){
            _exercisesController.hideAll();
            _exercisesController.toggleExercise();
          },
        ),
        
        CustomButton(
          height: _exercisesController.showSolution ? 40 : 30,
          color: Colors.blue,
          child: Text( "Solución", 
            style: TextStyle(
              fontSize: _exercisesController.showSolution ? 20 : 16, 
              color: Colors.white
            )
          ),
          onTap: () {
            _exercisesController.hideAll();
            _exercisesController.toggleSolution();
          },
        ),

      ],
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
          onTap: () => _exercisesController.getPreviousExercise(),
        ),
        SizedBox(width: 10),
        CustomButton( 
          child: Text("Aleatorio", 
            style: TextStyle(fontSize: 18, color: Colors.white)
          ),
          onTap: () => _exercisesController.getRandomExercise(),
        ),
        SizedBox(width: 10),
        CustomButton( 
          child: Text("Siguiente", 
            style: TextStyle(fontSize: 18, color: Colors.white)
          ),
          onTap: () => _exercisesController.getNextExercise(),
        ),
      ],
    );
  }

}