import 'package:patterns_guide_app/features/exercises/domain/entities/exercise.entity.dart';

ExerciseEntity exercise24 = ExerciseEntity(
  title: "# Ejercicio 24 - MCD y mcm",
  description: _exercise,
  tip: _tip,
  solution: _solution,
);

String _exercise = """
**Crea dos funciones, una que calcule el máximo común divisor (MCD) y otra que calcule el mínimo común múltiplo (mcm) de dos números enteros.**

* No se pueden utilizar operaciones del lenguaje que lo resuelvan directamente.
""";

String _tip = """
* Para el MCD, utiliza el algoritmo de Euclides.
  * MCD(a, b) = MCD(b, a % b) hasta que b sea 0.
* Para el mcm, utiliza la relación entre el MCD y el mcm 
  * mcm(a, b) = (a * b) / MCD(a, b).
* Usa bucles y condiciones para implementar los algoritmos.
* Considera casos especiales como números negativos o cero.
* Asegúrate de que las funciones manejen correctamente los casos de entrada inválida.
""";

String _solution = """
```py
```
""";