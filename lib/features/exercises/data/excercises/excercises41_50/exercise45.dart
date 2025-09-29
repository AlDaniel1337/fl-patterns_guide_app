import 'package:patterns_guide_app/features/exercises/domain/entities/exercise.entity.dart';

ExerciseEntity exercise45 = ExerciseEntity(
  title: "# Ejercicio 45 - Bumeranes",
  description: _exercise,
  tip: _tip,
  solution: _solution,
);

String _exercise = """
**Crea una función que retorne el número total de bumeranes de un array de números enteros e imprima cada uno de ellos.**

* Un bumerán (búmeran, boomerang) es una secuencia formada por 3 números seguidos, en el que el primero y el último son iguales, y el segundo es diferente. Por ejemplo [2, 1, 2].
* En el array [2, 1, 2, 3, 3, 4, 2, 4] hay 2 bumeranes ([2, 1, 2] y [4, 2, 4]).
""";

String _tip = """
* Puedes recorrer el array con un bucle y comprobar cada grupo de 3 números consecutivos.
* Utiliza condiciones para verificar si el primer y el tercer número son iguales y diferentes del segundo
""";

String _solution = """
```py
```
""";