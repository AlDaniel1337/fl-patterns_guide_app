import 'dart:math';
import 'package:get/get.dart';
import 'package:patterns_guide_app/features/exercises/domain/entities/exercise.entity.dart';
import 'package:patterns_guide_app/features/exercises/data/excercises/index.dart';


// ExercisesController _exercisesController = Get.put(ExercisesController());

class ExercisesController extends GetxController{

  var currentExerciseIndex = 0.obs;

  final _showSolution = false.obs;
  bool get showSolution => _showSolution.value;

  final _showExercise = true.obs;
  bool get showExercise => _showExercise.value;

  final _showTips = false.obs;
  bool get showTips => _showTips.value;

  ExerciseEntity getCurrentExercise(){
    return _exercises[currentExerciseIndex.value];
  }

  void getNextExercise(){
    if(currentExerciseIndex.value < _exercises.length - 1){
      currentExerciseIndex.value++;
    } else {
      currentExerciseIndex.value = 0;
    }
  }

  void getPreviousExercise(){
    if(currentExerciseIndex.value > 0){
      currentExerciseIndex.value--;
    } else {
      currentExerciseIndex.value = _exercises.length - 1;
    }
  }

  void getRandomExercise(){
    final random = Random();
    int num = random.nextInt(_exercises.length);
    currentExerciseIndex.value = num;
  }

  void toggleSolution() => _showSolution.value = true;
  void toggleExercise() => _showExercise.value = true;
  void toggleTips()     => _showTips.value = true;

  void hideAll() {
    _showTips.value = false;
    _showSolution.value = false;
    _showExercise.value = false;
  }

  final _exercises = [ 
    exercise1, exercise2, exercise3, exercise4, exercise5, exercise6, exercise7, exercise8, exercise9, exercise10,
    exercise11, exercise12, exercise13, exercise14, exercise15, exercise16, exercise17, exercise18, exercise19, exercise20,
    exercise21, exercise22, exercise23, exercise24, exercise25, exercise26, exercise27, exercise28, exercise29, exercise30,
    exercise31, exercise32, exercise33, exercise34, exercise35, exercise36, exercise37, exercise38, exercise39, exercise40,
    exercise41, exercise42, exercise43, exercise44, exercise45, exercise46, exercise47, exercise48, exercise49, exercise50,
  ];
}


