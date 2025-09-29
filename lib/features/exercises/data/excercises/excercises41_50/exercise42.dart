import 'package:patterns_guide_app/features/exercises/domain/entities/exercise.entity.dart';

ExerciseEntity exercise42 = ExerciseEntity(
  title: "# Ejercicio 42 - Ley de Ohm",
  description: _exercise,
  tip: _tip,
  solution: _solution,
);

String _exercise = """
**Crea una función que calcule el valor del parámetro perdido correspondiente a la ley de Ohm.**

* Enviaremos a la función 2 de los 3 parámetros (V, R, I), y retornará el valor del tercero (redondeado a 2 decimales).
* Si los parámetros son incorrectos o insuficientes, la función retornará la cadena de texto "Invalid values".
""";

String _tip = """
* La ley de Ohm establece que V = I * R, donde V es el voltaje, I es la corriente y R es la resistencia.
* Puedes usar condicionales para determinar qué parámetro falta y calcular su valor en función de los otros dos.
* Recuerda redondear el resultado a 2 decimales usando la función `round()` o similar en tu lenguaje de programación.
""";

String _solution = """
```py
```
""";