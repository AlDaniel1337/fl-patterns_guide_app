import 'package:patterns_guide_app/features/exercises/domain/entities/exercise.entity.dart';

ExerciseEntity exercise14 = ExerciseEntity(
  title: "# Ejercicio 14 - Factorial",
  description: _exercise,
  tip: _tip,
  solution: _solution,
);

String _exercise = """
**Escribe una función que calcule y retorne el factorial de un número dado de forma recursiva.**
""";

String _tip = """
* El factorial de un número n (n!) es el producto de todos los enteros positivos desde 1 hasta n.
* El factorial de 0 es 1 (0! = 1).
* Puedes definir una función que llame a sí misma con un valor decreciente hasta llegar a 0.
""";

String _solution = """
```py
def factorial( num ):
    if( num == 0 ):
      return 1
    else:
      return num * factorial( num -1)

print( factorial(5) )
```
""";