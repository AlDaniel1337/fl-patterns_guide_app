import 'package:patterns_guide_app/features/exercises/domain/entities/exercise.entity.dart';

ExerciseEntity exercise18 = ExerciseEntity(
  title: "# Ejercicio 18 - Carrera de obstáculos",
  description: _exercise,
  tip: _tip,
  solution: _solution,
);

String _exercise = """
**Crea una función que evalúe si un/a atleta ha superado correctamente una carrera de obstáculos.**

* La función recibirá dos parámetros:
  * Un array que sólo puede contener String con las palabras "run" o "jump"
  * Un String que represente la pista y sólo puede contener "_" (suelo) o "|" (valla)
* La función imprimirá cómo ha finalizado la carrera:
  * Si el/a atleta hace "run" en "_" (suelo) y "jump" en "|" (valla) será correcto y no variará el símbolo de esa parte de la pista.
  * Si hace "jump" en "_" (suelo), se variará la pista por "x".
  * Si hace "run" en "|" (valla), se variará la pista por "/".
* La función retornará un Boolean que indique si ha superado la carrera.
* Para ello tiene que realizar la opción correcta en cada tramo de la pista.
""";

String _tip = """
* Puedes usar un bucle para recorrer ambos arrays a la vez.
* Puedes usar un condicional para evaluar las diferentes opciones.

""";

String _solution = """
```py
```
""";
