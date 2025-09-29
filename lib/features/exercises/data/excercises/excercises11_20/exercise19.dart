import 'package:patterns_guide_app/features/exercises/domain/entities/exercise.entity.dart';

ExerciseEntity exercise19 = ExerciseEntity(
  title: "# Ejercicio 19 - Tres en raya",
  description: _exercise,
  tip: _tip,
  solution: _solution,
);

String _exercise = """
**Crea una función que analice una matriz 3x3 compuesta por "X" y "O" y retorne lo siguiente:**

* "X" si han ganado las "X"
* "O" si han ganado los "O"
* "Empate" si ha habido un empate
* "Nulo" si la proporción de "X", de "O", o de la matriz no es correcta.
*  O si han ganado los 2.
* Nota: La matriz puede no estar totalmente cubierta.
* Se podría representar con un vacío "", por ejemplo.
""";

String _tip = """
* Puedes usar variables para llevar la cuenta de la cantidad de "X" y "O".
* Puedes usar bucles para recorrer la matriz.
""";

String _solution = """
```py
```
""";
